<?php

namespace App\Http\Controllers;

use App\Http\Resources\ProjectResource;
use App\Models\Attribute;
use App\Models\AttributeValue;
use App\Models\Project;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProjectController extends Controller
{
//    public function index(Request $request)
//    {
//        $query = Project::query();
//
//        // Handle regular filters
//        if ($request->has('filters')) {
//            foreach ($request->input('filters') as $field => $conditions) {
//                foreach ($conditions as $operator => $value) {
//                    if (in_array($field, ['name', 'status'])) {
//                        $query->where($field, $this->getOperator($operator), $value);
//                    } else {
//                        // Handle EAV filters
//                        $query->whereHas('attributeValues', function ($q) use ($field, $operator, $value) {
//                            $q->whereHas('attribute', function ($q) use ($field) {
//                                $q->where('name', $field);
//                            })->where('value', $this->getOperator($operator), $value);
//                        });
//                    }
//                }
//            }
//        }
//
//        return ProjectResource::collection($query->paginate());
//    }

    public function index(Request $request)
    {
        $query = Project::query()->with('attributeValues.attribute');

        if ($request->has('include')) {
            $query->with(explode(',', $request->include));
        }

        return ProjectResource::collection($query->paginate());
    }

    private function getOperator($op)
    {
        return match ($op) {
            'gt' => '>',
            'lt' => '<',
            'like' => 'LIKE',
            default => '=',
        };
    }

    public function store(Request $request)
    {
        $validated = $this->validateProject($request);

        $project = Project::create($validated);
        $this->handleAttributes($project, $request->input('attributes', []));

        return new ProjectResource($project);
    }

    private function validateProject(Request $request, $project = null)
    {
        return $request->validate([
            'name' => 'required|string|max:255',
            'status' => 'required|in:planned,ongoing,completed',
            'attributes' => 'sometimes|array',
            'attributes.*.name' => 'required|exists:attributes,name',
            'attributes.*.value' => 'required',
        ]);
    }

    private function handleAttributes(Project $project, array $attributes)
    {
        foreach ($attributes as $attr) {
            $attribute = Attribute::where('name', $attr['name'])->first();

            Validator::make($attr, [
                'value' => $this->getValidationRule($attribute->type)
            ])->validate();

            AttributeValue::updateOrCreate(
                [
                    'attribute_id' => $attribute->id,
                    'entity_id' => $project->id,
                ],
                ['value' => $attr['value']]
            );
        }
    }

    private function getValidationRule($type)
    {
        return match ($type) {
            'date' => 'date',
            'number' => 'numeric',
            'select' => 'string', // Add specific options if needed
            default => 'string',
        };
    }

    public function show(Request $request, Project $project)
    {
        if ($request->has('include')) {
            $project->load(explode(',', $request->include));
        }

        return new ProjectResource($project);
    }

    public function update(Request $request, Project $project)
    {
        $validated = $this->validateProject($request, $project);

        $project->update($validated);
        $this->handleAttributes($project, $request->input('attributes', []));

        return new ProjectResource($project);
    }

    public function destroy(Project $project)
    {
        $project->delete();
        return response()->json(null, 204);
    }

    public function attachUser(Request $request, Project $project)
    {
        $validated = $request->validate([
            'user_id' => 'required|exists:users,id'
        ]);

        // Prevent duplicate assignments
        if ($project->users()->where('user_id', $validated['user_id'])->exists()) {
            return response()->json([
                'message' => 'User is already assigned to this project'
            ], 422);
        }

        $project->users()->attach($validated['user_id']);

        return response()->json([
            'message' => 'User assigned successfully',
            'project' => new ProjectResource($project->load('users'))
        ]);
    }

    public function detachUser(Project $project, User $user)
    {
        $project->users()->detach($user->id);

        return response()->json([
            'message' => 'User removed from project',
            'project' => new ProjectResource($project->load('users'))
        ]);
    }
}

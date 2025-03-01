<?php

namespace App\Http\Controllers;

use App\Models\Timesheet;
use Illuminate\Http\Request;
use App\Http\Resources\TimesheetResource;

class TimesheetController extends Controller
{
    public function index(Request $request)
    {
        $query = Timesheet::query();

        if ($request->has('include')) {
            $query->with(explode(',', $request->include));
        }

        return TimesheetResource::collection($query->paginate());
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'task_name' => 'required|string|max:255',
            'date' => 'required|date',
            'hours' => 'required|numeric|min:0.5|max:24',
            'user_id' => 'required|exists:users,id',
            'project_id' => 'required|exists:projects,id',
        ]);

        $timesheet = Timesheet::create($validated);
        return new TimesheetResource($timesheet);
    }

    public function show(Timesheet $timesheet)
    {
        $timesheet->load(['user', 'project']);
        return new TimesheetResource($timesheet);
    }

    public function update(Request $request, Timesheet $timesheet)
    {
        $validated = $request->validate([
            'task_name' => 'sometimes|string|max:255',
            'date' => 'sometimes|date',
            'hours' => 'sometimes|numeric|min:0.5|max:24',
            'user_id' => 'sometimes|exists:users,id',
            'project_id' => 'sometimes|exists:projects,id',
        ]);

        $timesheet->update($validated);
        return new TimesheetResource($timesheet);
    }

    public function destroy(Timesheet $timesheet)
    {
        $timesheet->delete();
        return response()->json(null, 204);
    }
}

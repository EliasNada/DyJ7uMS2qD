<?php

namespace App\Http\Controllers;

use App\Http\Resources\AttributeResource;
use App\Models\Attribute;
use Illuminate\Http\Request;

class AttributeController extends Controller
{
    public function index()
    {
        return AttributeResource::collection(Attribute::paginate());
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|unique:attributes',
            'type' => 'required|in:text,date,number,select',
        ]);

        $attribute = Attribute::create($validated);
        return new AttributeResource($attribute);
    }

    public function show(Attribute $attribute)
    {
        return new AttributeResource($attribute);
    }

    public function update(Request $request, Attribute $attribute)
    {
        $validated = $request->validate([
            'name' => 'sometimes|string|unique:attributes,name,' . $attribute->id,
            'type' => 'sometimes|in:text,date,number,select',
        ]);

        $attribute->update($validated);
        return new AttributeResource($attribute);
    }

    public function destroy(Attribute $attribute)
    {
        $attribute->delete();
        return response()->json(null, 204);
    }
}

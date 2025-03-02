<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;


class ProjectResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'status' => $this->status,
            'users' => UserResource::collection($this->whenLoaded('users')),
            'timesheets' => TimesheetResource::collection($this->whenLoaded('timesheets')),
            'attributes' => $this->attributeValues->mapWithKeys(fn ($av) => [
                $av->attribute->name => $av->value
            ]),
            'created_at' => $this->created_at->toDateTimeString(),
            'updated_at' => $this->updated_at->toDateTimeString()
        ];
    }
}

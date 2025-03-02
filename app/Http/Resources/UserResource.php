<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'first_name' => $this->first_name,
            'last_name' => $this->last_name,
            'email' => $this->email,
            'created_at' => $this->created_at->toDateTimeString(),
            'updated_at' => $this->updated_at->toDateTimeString(),

            // Relationships (only included if loaded)
            'projects' => ProjectResource::collection($this->whenLoaded('projects')),
            'timesheets' => TimesheetResource::collection($this->whenLoaded('timesheets')),
        ];
    }
}

<?php

namespace Tests\Feature;

use App\Models\Project;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\AuthenticatesUser;
use Tests\TestCase;

class TimesheetTest extends TestCase
{
    use RefreshDatabase, AuthenticatesUser;

    public function test_create_timesheet_entry()
    {
        $user = User::factory()->create();
        $project = Project::factory()->create();

        $response = $this->actingAsUser($user)->postJson('/api/timesheets', [
            'task_name' => 'Development',
            'date' => now()->format('Y-m-d'),
            'hours' => 5,
            'user_id' => $user->id,
            'project_id' => $project->id
        ]);

        $response->assertStatus(201)
            ->assertJsonPath('hours', 5);
    }

    public function test_prevent_duplicate_timesheet_entries()
    {
        $user = User::factory()->create();
        $project = Project::factory()->create();

        $this->actingAsUser($user)->postJson('/api/timesheets', [
            'task_name' => 'Development',
            'date' => now()->format('Y-m-d'),
            'hours' => 5,
            'user_id' => $user->id,
            'project_id' => $project->id
        ]);

        $response = $this->actingAsUser($user)->postJson('/api/timesheets', [
            'task_name' => 'Development',
            'date' => now()->format('Y-m-d'),
            'hours' => 3,
            'user_id' => $user->id,
            'project_id' => $project->id
        ]);

        $response->assertStatus(422);
    }
}

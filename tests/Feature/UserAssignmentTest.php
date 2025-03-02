<?php

namespace Tests\Feature;

use App\Models\Project;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\AuthenticatesUser;
use Tests\TestCase;

class UserAssignmentTest extends TestCase
{
    use RefreshDatabase, AuthenticatesUser;

    public function test_assign_user_to_project()
    {
        $user = User::factory()->create();
        $project = Project::factory()->create();

        $response = $this->actingAsUser()->postJson("/api/projects/{$project->id}/users", [
            'user_id' => $user->id
        ]);

        $response->assertJsonPath('project.users.0.id', $user->id);
    }

    public function test_prevent_duplicate_assignments()
    {
        $user = User::factory()->create();
        $project = Project::factory()->create();
        $project->users()->attach($user->id);

        $response = $this->actingAsUser()->postJson("/api/projects/{$project->id}/users", [
            'user_id' => $user->id
        ]);

        $response->assertStatus(422);
    }
}

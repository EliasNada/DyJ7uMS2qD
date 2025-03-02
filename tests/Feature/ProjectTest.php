<?php

namespace Tests\Feature;

use App\Models\Attribute;
use App\Models\Project;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\AuthenticatesUser;
use Tests\TestCase;

class ProjectTest extends TestCase
{
    use RefreshDatabase, AuthenticatesUser;

    public function test_create_project_with_attributes()
    {
        $response = $this->actingAsUser()->postJson('/api/projects', [
            'name' => 'Test Project',
            'status' => 'planned',
            'attributes' => [
                ['name' => 'department', 'value' => 'IT']
            ]
        ]);

        $response->assertStatus(201)
            ->assertJsonPath('attributes.department', 'IT');
    }

    public function test_update_project_attributes()
    {
        $project = Project::factory()->create();
        $project->attributeValues()->create([
            'attribute_id' => Attribute::first()->id,
            'value' => 'HR'
        ]);

        $response = $this->actingAsUser()->putJson("/api/projects/{$project->id}", [
            'attributes' => [
                ['name' => 'department', 'value' => 'Finance']
            ]
        ]);

        $response->assertJsonPath('attributes.department', 'Finance');
    }

    protected function setUp(): void
    {
        parent::setUp();
        Attribute::factory()->create(['name' => 'department', 'type' => 'text']);
    }
}

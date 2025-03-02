<?php

namespace Tests\Feature;

use App\Models\Attribute;
use App\Models\AttributeValue;
use App\Models\Project;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\AuthenticatesUser;
use Tests\TestCase;

class FilterTest extends TestCase
{
    use RefreshDatabase, AuthenticatesUser;

    public function test_filter_projects_by_name_and_eav()
    {
        $project = Project::factory()->create(['name' => 'Important Project']);
        AttributeValue::factory()->create([
            'entity_id' => $project->id,
            'attribute_id' => Attribute::factory()->create(['name' => 'priority'])->id,
            'value' => 'high'
        ]);

        $response = $this->actingAsUser()->getJson('/api/projects?filters[name][like]=Important&filters[priority][eq]=high');

        $response->assertJsonCount(1, 'data');
    }
}

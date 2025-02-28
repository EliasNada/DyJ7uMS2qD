<?php

namespace Database\Factories;

use App\Models\Project;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Project>
 */
class ProjectFactory extends Factory
{
    public function definition()
    {
        return [
            'name' => $this->faker->sentence(3),
            'status' => $this->faker->randomElement(['planned', 'ongoing', 'completed']),
        ];
    }

    public function withUsers($count = 2)
    {
        return $this->afterCreating(function ($project) use ($count) {
            $project->users()->attach(\App\Models\User::factory($count)->create());
        });
    }
}

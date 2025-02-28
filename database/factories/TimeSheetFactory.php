<?php

namespace Database\Factories;

use App\Models\Timesheet;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends Factory<Timesheet>
 */
class TimesheetFactory extends Factory
{
    public function definition(): array
    {
        return [
            'task_name' => $this->faker->word . ' Task',
            'date' => $this->faker->dateTimeBetween('-1 year', 'now'),
            'hours' => $this->faker->randomFloat(2, 0.5, 8),
            'user_id' => \App\Models\User::factory(),
            'project_id' => \App\Models\Project::factory(),
        ];
    }
}

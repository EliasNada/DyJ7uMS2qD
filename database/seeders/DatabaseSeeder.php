<?php

namespace Database\Seeders;

use App\Models\Attribute;
use App\Models\Project;
use App\Models\Timesheet;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run()
    {
        User::factory()->create([
            'first_name' => 'John',
            'last_name' => 'Doe',
            'email' => 'john.doe@example.com',
            'password' => 'password',
        ]);

        // Create test users
        $users = User::factory(10)->create();

        // Create core attributes
        $attributes = [
            Attribute::create(['name' => 'department', 'type' => 'text']),
            Attribute::create(['name' => 'start_date', 'type' => 'date']),
            Attribute::create(['name' => 'end_date', 'type' => 'date']),
            Attribute::create(['name' => 'budget', 'type' => 'number']),
            Attribute::create(['name' => 'priority', 'type' => 'select']),
            Attribute::create(['name' => 'client', 'type' => 'text'])
        ];

        // Create projects with rich relationships
        Project::factory(20)->create()->each(function ($project) use ($users, $attributes) {
            // Assign 2-4 random users
            $project->users()->attach(
                $users->random(rand(2, 4))->pluck('id')
            );

            // Create 5-10 timesheets
            Timesheet::factory(rand(5, 10))->create([
                'project_id' => $project->id,
                'user_id' => $project->users->random()->id
            ]);

            // Add 3-5 random attributes
            $selectedAttributes = collect($attributes)->random(rand(3, 5));

            foreach ($selectedAttributes as $attribute) {
                $project->attributeValues()->create([
                    'attribute_id' => $attribute->id,
                    'value' => $this->getAttributeValue($attribute->type)
                ]);
            }
        });
    }

    private function getAttributeValue($type)
    {
        $faker = \Faker\Factory::create();

        return match ($type) {
            'date' => $faker->dateTimeBetween('-1 year', '+1 year'),
            'number' => $faker->numberBetween(1000, 100000),
            'select' => $faker->randomElement(['high', 'medium', 'low']),
            default => Str::title($faker->word)
        };
    }
}

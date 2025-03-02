<?php

namespace Database\Seeders;

use App\Models\Attribute;
use App\Models\Project;
use App\Models\User;
use Illuminate\Database\Seeder;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory(10)->create();
        Project::factory(5)->create();
        Attribute::factory(1)->create(['name' => 'department', 'type' => 'text']);
        Attribute::factory(1)->create(['name' => 'start_date', 'type' => 'date']);
        Attribute::factory(1)->create(['name' => 'end_date', 'type' => 'date']);
    }
}

<?php

namespace Database\Seeders;

use App\Models\Attribute;
use App\Models\Project;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
         User::factory(10)->create();

//        User::factory()->create([
//            'name' => 'Test User',
//            'email' => 'test@example.com',
//        ]);

        Project::factory(5)->create();
        Attribute::factory(1)->create(['name' => 'department', 'type' => 'text']);
        Attribute::factory(1)->create(['name' => 'start_date', 'type' => 'date']);
        Attribute::factory(1)->create(['name' => 'end_date', 'type' => 'date']);
    }
}

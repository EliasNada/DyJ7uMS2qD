<?php

namespace Database\Factories;

use App\Models\Attribute;
use Illuminate\Database\Eloquent\Factories\Factory;


/**
 * @extends Factory<Attribute>
 */
class AttributeFactory extends Factory
{
    public function definition()
    {
        return [
            'name' => $this->faker->unique()->word,
            'type' => $this->faker->randomElement(['text', 'date', 'number', 'select']),
        ];
    }
}

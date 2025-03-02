<?php

namespace Tests\Feature;

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\AuthenticatesUser;
use Tests\TestCase;

class AuthTest extends TestCase
{
    use RefreshDatabase, AuthenticatesUser;

    public function test_user_registration()
    {
        $response = $this->postJson('/api/register', [
            'first_name' => 'Test',
            'last_name' => 'User',
            'email' => 'test@example.com',
            'password' => 'password'
        ]);

        $response->assertStatus(201)
            ->assertJsonStructure(['user', 'access_token']);
    }

    public function test_user_login()
    {
        User::factory()->create(['email' => 'test@example.com']);

        $response = $this->postJson('/api/login', [
            'email' => 'test@example.com',
            'password' => 'password'
        ]);

        $response->assertStatus(200)
            ->assertJsonStructure(['access_token']);
    }
}

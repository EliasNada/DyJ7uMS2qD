<?php

namespace Tests;

trait AuthenticatesUser
{
    protected function actingAsUser($user = null)
    {
        $user = $user ?: \App\Models\User::factory()->create();
        $token = $user->createToken('test-token')->accessToken;

        return $this->withHeaders([
            'Authorization' => 'Bearer ' . $token,
            'Accept' => 'application/json'
        ]);
    }
}

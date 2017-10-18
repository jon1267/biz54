<?php

namespace App\Repositories;

use App\Support;

class SupportRepository extends Repository
{
    public function __construct(Support $support)
    {
        $this->model = $support;
    }
}
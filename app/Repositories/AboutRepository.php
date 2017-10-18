<?php

namespace App\Repositories;

use App\About;

class AboutRepository extends Repository
{
    public function __construct(About $about)
    {
        $this->model = $about;
    }
}
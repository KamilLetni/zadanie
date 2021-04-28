<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Train extends Model
{
    public function carriage()
    {
        return $this->hasMany(Carriage::class);
    }

}


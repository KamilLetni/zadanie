<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Seat extends Model
{
    public function carriage()
    {
        return $this->belongsTo(Carriage::class);
    }
}

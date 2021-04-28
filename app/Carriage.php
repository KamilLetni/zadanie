<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Carriage extends Model
{
    public function train()
    {
        return $this->belongsTo(Train::class);
    }
    public function seat()
    {
        return $this->hasMany(Seat::class);
    }
}

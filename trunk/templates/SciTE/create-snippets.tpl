~~
addEventHandler ["AnimChanged", {
    _unit = arg(0); // object, event owner
    _anim = arg(1); // string, anim name, name of the /States anim class
    |
}];
~~
addEventHandler ["AnimDone", {
    _unit = arg(0); // object, event owner
    _anim = arg(1); // string, anim name
    |
}];
~~
addEventHandler ["AnimStateChanged", {
    _unit = arg(0); // object, event owner
    _anim = arg(1); // string, anim name
    |
}];
~~
addEventHandler ["Dammaged", {
    _unit      = arg(0); // object, event owner
    _selection = arg(1); // string, selection name
    _damage    = arg(2); // number, damage done
    |
}];
~~
addEventHandler ["Engine", {
    _vehicle     = arg(0); // object, event owner
    _engineState = arg(1); // bool, true/false when the engine is turned on/off
    |
}];
~~
addEventHandler ["Fired", {
    _unit       = arg(0); // object, event owner
    _weapon     = arg(1); // string, weapon that was used
    _muzzle     = arg(2); // string, muzzle that was used
    _mode       = arg(3); // string, fire mode that was used
    _ammo       = arg(4); // string, ammo that was used
    _magazine   = arg(5); // string, magazine that was used
    _projectile = arg(6); // object of ammo class, projectile, namely: bullet, missile, etc.,
    |
}];
~~
addEventHandler ["FiredNear", {
    _unit       = arg(0); // object, event owner
    _firer      = arg(1); // object, object which fires a weapon near the unit
    _distance   = arg(2); // number, distance in meters between the unit and firer (max. distance ~69m)
    _weapon     = arg(3); // string, fired weapon
    _muzzle     = arg(4); // string, muzzle that was used
    _mode       = arg(5); // string, current mode of the fired weapon
    _ammo       = arg(6); // string, ammo used
    |
}];
~~
addEventHandler ["Fuel", {
    _vehicle    = arg(0); // object, event owner
    _fuelState  = arg(1); // boolean, 0 when no fuel, 1 when the fuel tank is full
    |
}];
~~
addEventHandler ["Gear", {
    _vehicle    = arg(0); // object, event owner
    _gearState  = arg(1); // boolean, true when the gear is lowered, false when retracted
    |
}];
~~
addEventHandler ["GetIn", {
    _vehicle    = arg(0); // object, event owner
    _position   = arg(1); // string, can be either "driver", "gunner", "commander" or "cargo"
    _unit       = arg(2); // object, unit that entered the vehicle
    |
}];
~~
addEventHandler ["GetOut", {
    _vehicle    = arg(0); // object, event owner
    _position   = arg(1); // string, can be either "driver", "gunner", "commander" or "cargo"
    _unit       = arg(2); // object, unit that leaved the vehicle
    |
}];
~~
addEventHandler ["HandleDamage", {
    _unit       = arg(0); // object, event owner
    _selection  = arg(1); // string, name of the selection where the unit was damaged.
                          //    "" for over-all structural damage,
                          //    "?" for unknown selections.
    _damage     = arg(2); // number, resulting level of damage for the selection.
    _source     = arg(3); // object, the source unit that caused the damage.
    _projectile = arg(4); // string, classname of the projectile that caused inflicted the damage. ("" for unknown, such as falling damage.)
    |
}];
~~
addEventHandler ["HandleHeal", {
    _unit   = arg(0); // object, event owner
    _healer = arg(1); // object, person, who acting as a medic
    _healerCanHeal = arg(2); // boolean, true when healer is corpsman
    |
}];
~~
addEventHandler ["Hit", {
    _unit     = arg(0); // object, event owner
    _causedBy = arg(1); // object, object that caused the damage.
                        // contains the unit itself in case of collisions.
    _damage   = arg(2); // number, level of damage caused by the hit
    |
}];
~~
addEventHandler ["HitPart", {
    _target     = arg(0); // object, event owner, object that got injured/damaged.
    _shooter    = arg(1); // object, unit that inflicted the damage. If injured by a vehicle impact or a fall the target itself is returned, or, in case of explosions, the null object. In case of explosives that were planted by someone (e.g. satchel charges), that unit is returned.
    _bullet     = arg(2); // object, object that was fired.
    _position   = arg(3); // position3D, position the bullet impacted (ASL).
    _velocity   = arg(4); // vector3d, speed vector at which bullet impacted.
    _selection  = arg(5); // array, list of strings with named selection of the object that were hit.
    _ammo       = arg(6); // array, ammo info: [hit value, indirect hit value, indirect hit range, explosive damage, ammo class name] OR, if there is no shot object: [impulse value on object collided with,0,0,0]
    _direction  = arg(7); // vector3d, vector that is orthogonal (perpendicular) to the surface struck. For example, if a wall was hit, vector would be pointing out of the wall at a 90 degree angle.
    _radius     = arg(8); // number, radius (size) of component hit.
    _surface    = arg(9); // string, surface type struck.
    _direct     = arg(10); // boolean, true if object was directly hit, false if it was hit by indirect/splash damage.
    |
}];
~~
addEventHandler ["Init", {
    _unit     = arg(0); // object, event owner, the created object
    |
}];
~~
addEventHandler ["IncomingMissile", {
    _unit     = arg(0); // object, object the event handler is assigned to
    _ammo     = arg(1); // string, ammo type that was fired on the unit
    _whoFired = arg(2); // object, object that fired the weapon
    |
}];
~~
addEventHandler ["Killed", {
    _unit   = arg(0); // object, event owner
    _killer = arg(1); // object, object that killed the unit,
                      // contains the unit itself in case of collisions.
    |
}];
~~
addEventHandler ["LandedTouchDown", {
    _plane     = arg(0); // object, event owner
    _airportID = arg(1); // number, ID of the airport (-1 for anything else).
    |
}];
~~
addEventHandler ["LandedStopped", {
    _plane     = arg(0); // object, event owner
    _airportID = arg(1); // number, ID of the airport (-1 for anything else).
    |
}];
~~
addEventHandler ["Respawn", {
    _unit   = arg(0); // object, event owner
    _corpse = arg(1); // object, object the event handler was assigned to, aka the corpse/unit player was previously controlling.
    |
}];
~~
addEventHandler ["WeaponAssembled", {
    _unit   = arg(0); // object, event owner
    _weapon = arg(1); // object, object of the assembled weapon.
    |
}];
~~
addEventHandler ["WeaponDisassembled", {
    _unit       = arg(0); // object, event owner
    _primaryBag  = arg(1); // object, first backpack object which was weapon dissasembled into...
    _secondaryBag = arg(2); // object, second backpack object which was weapon dissasembled into...
    |
}];
~~
addEventHandler ["MPHit", {
    _unit     = arg(0); // object, event owner
    _causedBy = arg(1); // object, object that caused the damage. Contains the
                        // unit itself in case of collisions.
    _damage   = arg(2); // number, Level of damage caused by the hit
    |
}];
~~
addEventHandler ["MPKilled", {
    _unit   = arg(0); // object, event owner
    _killer = arg(1); // object, object that killed the unit. Contains the
                      // unit itself in case of collisions.
    |
}];
~~
addEventHandler ["MPRespawn", {
    _unit   = arg(0); // object, event owner
    _corpse = arg(1); // object, object the event handler was assigned to,
                      // aka the corpse/unit player was previously controlling.
    |
}];
~~
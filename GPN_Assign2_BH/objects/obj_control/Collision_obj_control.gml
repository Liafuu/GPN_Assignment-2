// Prevents friendly fire
if (self.hitbox == other.id.friendly) return;
self.OnEntityContact(other.id);






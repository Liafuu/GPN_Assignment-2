// Prevents friendly fire
if (self.friendly == other.id.friendly) return;
self.OnEntityContact(other.id);






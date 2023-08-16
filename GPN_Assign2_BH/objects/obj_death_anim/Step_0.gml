// If image gets created
image_xscale += 0.1;
image_yscale += 0.1;

// Once fully transparent, destroy the instance
image_alpha -= 0.15;
if (image_alpha < 0) {instance_destroy(self)};









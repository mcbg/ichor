combat_log = ["Combat Initiated"]
enemy = instance_find(objEnemy, 0);
enemy.sprite_index = sprRavingWoman;
enemy.name = "Raving Woman";

// Reactions
pending_reactions = array_create(0)
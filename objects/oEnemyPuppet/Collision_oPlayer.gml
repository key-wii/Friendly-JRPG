/// @description Initiate combat
global.enemy = "Puppet";
global.enemySpr = sprPuppetCombat;
global.boxCol = "P";
global.nextAttack = tAttackPatternRad1;
global.textboxString = "Puppet appears!";
combat_start();
instance_destroy();

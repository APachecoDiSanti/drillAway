/// @description Insert description here
// You can write your code in this editor
#macro NORTH 90
#macro SOUTH 270
#macro WEST 180
#macro EAST 0
#macro MOVE_SPEED 3
#macro DRILL_DURATION 2000
#macro DRILL_COOLDOWN 100
#macro DRILL_INCREMENT 0.005

isDrilling = false;
drillStart = 0;
drillObject = pointer_null;
lastDrillTime = 0;

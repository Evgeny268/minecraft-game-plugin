clone -91 20 -166 -91 20 -166 -109 20 -158
#clone sign to block more than 2 players from joining
fill -85 21 -188 -85 21 -188 air
#remove leave game sign
tp @s -84.00 20.00 -234.99 360.32 3.02
scoreboard players reset @s throw_snowball
tag @s add Fast_Pace_Duels
tag @s add Player_2_Fast
spawnpoint @s -84 27 -211
item replace entity @s container.0 with minecraft:netherite_sword{Unbreakable:1b,AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID: [I;0, 1, 0, 1]},{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID: [I;0, 1, 0, 1]}]} 1
item replace entity @s container.1 with minecraft:sugar{display:{Name:"\"SugarRush\"",Lore:["\"When held, gives you insane speed powers!\""]}}
item replace entity @s container.2 with minecraft:snowball{display:{Name:"\"StunBomb\"",Lore:["\"Stun your opponent for 3 seconds\""]}} 3
item replace entity @s armor.head with minecraft:diamond_helmet{Unbreakable:1b,Enchantments:[{id:protection,lvl:1}]}
item replace entity @s armor.chest with minecraft:diamond_chestplate{Unbreakable:1b,Enchantments:[{id:protection,lvl:1}]}
item replace entity @s armor.legs with minecraft:diamond_leggings{Unbreakable:1b,Enchantments:[{id:protection,lvl:1}]}
item replace entity @s armor.feet with minecraft:diamond_boots{Unbreakable:1b,Enchantments:[{id:protection,lvl:1}]}
tag @s add start_countdown
effect give @s minecraft:instant_health 1 3 true
effect give @s minecraft:haste 100000 2 true
title @a[tag=Fast_Pace_Duels] title "3"
tellraw @a[tag=Fast_Pace_Duels] {"color":"aqua","text":"2/2 Joined"}
tellraw @a[tag=Fast_Pace_Duels] "Starts in: 3"
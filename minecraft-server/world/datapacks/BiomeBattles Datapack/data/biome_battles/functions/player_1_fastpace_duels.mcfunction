clone -81 20 -168 -81 20 -168 -109 20 -158
#clone sign to allow player 2 to join
tp @s -84.03 20.00 -187.99 3061.33 2.08
scoreboard players reset @s throw_snowball
tag @s add Fast_Pace_Duels
tag @s add Player_1_Fast
spawnpoint @s -84 27 -211
item replace entity @s container.0 with minecraft:netherite_sword{Unbreakable:1b,AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID: [I;0, 1, 0, 1]},{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID: [I;0, 1, 0, 1]}]} 1
item replace entity @s container.1 with minecraft:sugar{display:{Name:"\"SugarRush\"",Lore:["\"When held, gives you insane speed powers!\""]}}
item replace entity @s container.2 with minecraft:snowball{display:{Name:"\"StunBomb\"",Lore:["\"Stun your opponent for 3 seconds\""]}} 3
item replace entity @s armor.head with minecraft:diamond_helmet{Unbreakable:1b,Enchantments:[{id:protection,lvl:1}]}
item replace entity @s armor.chest with minecraft:diamond_chestplate{Unbreakable:1b,Enchantments:[{id:protection,lvl:1}]}
item replace entity @s armor.legs with minecraft:diamond_leggings{Unbreakable:1b,Enchantments:[{id:protection,lvl:1}]}
item replace entity @s armor.feet with minecraft:diamond_boots{Unbreakable:1b,Enchantments:[{id:protection,lvl:1}]}
effect give @s minecraft:haste 100000 2 true
effect give @s minecraft:instant_health 1 3 true
tellraw @s {"color":"aqua","text":"1/2 Joined"}
clone -134 20 -87 -134 20 -87 -116 20 -97
#clone sign to allow player 2 to join
tp @s -172.96 20.00 -23.30 720.38 -1.63
item replace entity @s container.0 with minecraft:netherite_sword{Unbreakable:1b,AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:10,Operation:0,UUID: [I;0, 1, 0, 1]},{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID: [I;0, 1, 0, 1]}]} 1
item replace entity @s container.1 with minecraft:golden_axe{display:{Lore:["\"Stun your opponent's shield with this sharp axe!\""]},Unbreakable:1b,AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID: [I;0, 1, 0, 1]},{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID: [I;0, 1, 0, 1]}]} 1
item replace entity @s weapon.offhand with minecraft:shield{Unbreakable:1b}
item replace entity @s armor.head with minecraft:netherite_helmet{Unbreakable:1b}
item replace entity @s armor.chest with minecraft:netherite_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with minecraft:iron_leggings{Unbreakable:1b}
item replace entity @s armor.feet with minecraft:iron_boots{Unbreakable:1b}
item replace entity @s container.2 with gray_dye{display:{Name:"\"Summon Horse Ability\"",Lore:["\"Ability will activate once game starts\""]}}
tag @s add Dark_Knight_Duels
spawnpoint @s -174 26 -1
effect give @s minecraft:instant_health 1 3 true
tellraw @s {"color":"aqua","text":"1/2 Joined"}
clone -125 20 -88 -125 20 -88 -113 20 -99
#clone sign to block more than 2 players from joining
fill -113 21 -67 -113 21 -67 air
#remove leave game sign
tp @s -113.04 20.00 -20.08 1260.66 1.78
item replace entity @s container.0 with minecraft:netherite_sword{Unbreakable:1b,AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID: [I;0, 1, 0, 1]},{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID: [I;0, 1, 0, 1]}]} 1
item replace entity @s container.1 with splash_potion{display:{Name:'{"text":"InvisibleDash"}',Lore:['{"text":"Sneak around with the stealth of a creeper!"}']},CustomPotionEffects:[{Id:1,Duration:200,ShowParticles:0b},{Id:14,Duration:200,ShowParticles:0b}],Potion:"minecraft:water",CustomPotionColor:8322044}
item replace entity @s container.2 with splash_potion{display:{Name:'{"text":"InvisibleDash"}',Lore:['{"text":"Sneak around with the stealth of a creeper!"}']},CustomPotionEffects:[{Id:1,Duration:200,ShowParticles:0b},{Id:14,Duration:200,ShowParticles:0b}],Potion:"minecraft:water",CustomPotionColor:8322044}
item replace entity @s container.3 with splash_potion{display:{Name:'{"text":"InvisibleDash"}',Lore:['{"text":"Sneak around with the stealth of a creeper!"}']},CustomPotionEffects:[{Id:1,Duration:200,ShowParticles:0b},{Id:14,Duration:200,ShowParticles:0b}],Potion:"minecraft:water",CustomPotionColor:8322044}
item replace entity @s container.4 with splash_potion{display:{Name:'{"text":"Smoke Bomb"}',Lore:['{"text":"Blind your opponent in thick fog!"}']},CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:200,ShowParticles:0b}],Potion:"minecraft:water",CustomPotionColor:0}
item replace entity @s container.5 with splash_potion{display:{Name:'{"text":"Smoke Bomb"}',Lore:['{"text":"Blind your opponent in thick fog!"}']},CustomPotionEffects:[{Id:15b,Amplifier:0b,Duration:200,ShowParticles:0b}],Potion:"minecraft:water",CustomPotionColor:0}
spawnpoint @s -114 26 -45
tag @s add Stealthy_Duels
tag @s add start_countdown
effect give @s minecraft:instant_health 1 3 true
title @a[tag=Stealthy_Duels] title "3"
tellraw @a[tag=Stealthy_Duels] {"color":"aqua","text":"2/2 Joined"}
tellraw @a[tag=Stealthy_Duels] "Starts in: 3"
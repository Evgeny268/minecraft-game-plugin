clone -91 20 -166 -91 20 -166 -115 20 -158
#clone sign to block more than 2 players from joining
fill -140 21 -186 -140 21 -186 air
#remove leave game sign
tp @s -139.00 20.00 -236.00 59760.31 1.24
spawnpoint @s -140 25 -212
tag @s add Crossbow_Duels
tag @s add Player_2_Crossbow
item replace entity @s container.0 with minecraft:crossbow{Unbreakable:1b,Enchantments:[{id:quick_charge,lvl:1}]}
item replace entity @s container.1 with minecraft:arrow 64
item replace entity @s container.2 with minecraft:potion{HealthPot:1b,Potion:"minecraft:water",CustomPotionEffects:[{Id:6,Amplifier:2}],display:{Name:"\"Reusable Healing Potion\""}}
item replace entity @s armor.head with leather_helmet{Unbreakable:1b,display:{color:6192150}} 1
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,display:{color:6192150}} 1
tag @s add Reload_Arrow
tag @s add start_countdown
effect give @s minecraft:instant_health 1 3 true
title @a[tag=Crossbow_Duels] title "3"
tellraw @a[tag=Crossbow_Duels] {"color":"aqua","text":"2/2 Joined"}
tellraw @a[tag=Crossbow_Duels] "Starts in: 3"
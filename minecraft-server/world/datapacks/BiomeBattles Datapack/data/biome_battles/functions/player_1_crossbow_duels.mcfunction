clone -87 20 -168 -87 20 -168 -115 20 -158
#clone sign to allow player 2 to join
tp @s -139.01 20.00 -185.72 53101.36 -0.72
spawnpoint @s -140 25 -212
tag @s add Crossbow_Duels
tag @s add Player_1_Crossbow
item replace entity @s container.0 with minecraft:crossbow{Unbreakable:1b,Enchantments:[{id:quick_charge,lvl:1}]}
item replace entity @s container.1 with minecraft:arrow 64
item replace entity @s container.2 with minecraft:potion{HealthPot:1b,Potion:"minecraft:water",CustomPotionEffects:[{Id:6,Amplifier:2}],display:{Name:"\"Reusable Healing Potion\""}}
item replace entity @s armor.head with leather_helmet{Unbreakable:1b,display:{color:6192150}} 1
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,display:{color:6192150}} 1
tag @s add Reload_Arrow
effect give @s minecraft:instant_health 1 3 true
tellraw @s {"color":"aqua","text":"1/2 Joined"}
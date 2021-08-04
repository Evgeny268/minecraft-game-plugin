clone -147 20 -94 -147 20 -94 -143 20 -124
#clone sign to block more than 2 players from joining
fill -164 21 -106 -164 21 -106 air
#remove leave game sign
teleport @s -220.64 20.00 -94.52 270.21 2.23
tag @s add Snowball_Duels
spawnpoint @s -193 29 -101
item replace entity @s container.0 with minecraft:snowball 16
item replace entity @s container.1 with splash_potion{display:{Name:'{"text":"Potion of Warmth"}',Lore:['{"text":"Warm up from the cold with this comforting potion!"}']},CustomPotionEffects:[{Id:6,Amplifier:5}],Potion:"minecraft:water"}
item replace entity @s container.2 with splash_potion{display:{Name:'{"text":"Potion of Warmth"}',Lore:['{"text":"Warm up from the cold with this comforting potion!"}']},CustomPotionEffects:[{Id:6,Amplifier:5}],Potion:"minecraft:water"}
item replace entity @s container.3 with splash_potion{display:{Name:'{"text":"Potion of Warmth"}',Lore:['{"text":"Warm up from the cold with this comforting potion!"}']},CustomPotionEffects:[{Id:6,Amplifier:5}],Potion:"minecraft:water"}
item replace entity @s armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Snowman\"}"},SkullOwner:{Id:[I;756292382,-2033104663,-1773380195,-1201316348],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThlMzM0ZTRiZWUwNDI2NDc1OWE3NjZiYzE5NTVjZmFmM2Y1NjIwMTQyOGZhZmVjOGQ0YmYxYmIzNmFlNiJ9fX0="}]}}} 1
item replace entity @s armor.chest with minecraft:leather_chestplate{display:{color:16383998},Unbreakable:1b}
tag @s add start_countdown
effect give @s minecraft:instant_health 1 3 true
tag @s add Reload_Snowball
effect give @s minecraft:resistance 100000 1 true
title @a[tag=Snowball_Duels] title "3"
tellraw @a[tag=Snowball_Duels] {"color":"aqua","text":"2/2 Joined"}
tellraw @a[tag=Snowball_Duels] "Starts in: 3"
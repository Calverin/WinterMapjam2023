execute as @s[tag=exit_x] positioned ~-1 ~ ~ as @a[gamemode=adventure,tag=playing,dx=2,dy=2,dz=0] at @s run function scale:player/cleanup
execute as @s[tag=exit_z] positioned ~ ~ ~-1 as @a[gamemode=adventure,tag=playing,dx=0,dy=2,dz=2] at @s run function scale:player/cleanup
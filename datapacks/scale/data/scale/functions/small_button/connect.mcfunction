execute as @e[type=block_display,tag=dispenser] if score @s id = $connect id run scoreboard players operation @e[type=marker,tag=small_button,tag=no_connection,limit=1,sort=nearest] id = @s id
tag @e[type=marker,tag=small_button,tag=no_connection,limit=1,sort=nearest] remove no_connection
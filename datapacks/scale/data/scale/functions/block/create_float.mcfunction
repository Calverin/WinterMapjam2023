summon block_display ~ ~ ~ {Tags:["scale","block","new_block","float"],block_state:{Name:"minecraft:magenta_stained_glass"},brightness:{sky:15,block:15},Passengers:[{id:"minecraft:interaction",Tags:["scale","block"],width:1.01f,height:1.01f},{id:"minecraft:block_display",block_state:{Name:"air"},Tags: ["scale","block","shulker"],Passengers:[{id:"minecraft:shulker",Invulnerable:1b,Tags:["scale","block"],Silent:1b,DeathLootTable:"",NoAI:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:2147483647,ShowParticles:0b,ShowIcon:0b}]}]}]}
execute as @e[type=block_display,tag=new_block] at @s run data merge entity @s {width:1,height:1,transformation:{scale:[1.0f, 1.0f, 1.0f],translation:[-0.5f,0.0f,-0.5f]},interpolation_start:-2}
execute as @e[type=block_display,tag=shulker] at @s run data merge entity @s {width:0,height:0,transformation:{scale:[0.0f, 0.0f, 0.0f],translation:[-0.5f,0.0f,-0.5f]},interpolation_start:-2}
execute as @e[type=block_display,tag=new_block] at @s run function scale:setup/get_id
execute as @e[type=block_display,tag=new_block] at @s run scoreboard players operation $check id = @s id
execute as @e[type=block_display,tag=new_block] at @s on passengers run scoreboard players operation @s id = $check id
execute as @e[type=block_display,tag=new_block] at @s on passengers on passengers run scoreboard players operation @s id = $check id
execute as @e[type=block_display,tag=new_block] at @s run scoreboard players set @s vel_y -100
execute as @e[type=#scale:scale_block,tag=new_block] at @s run tag @s remove new_block
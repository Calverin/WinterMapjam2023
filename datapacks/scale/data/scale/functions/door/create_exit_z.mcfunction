execute align xyz run summon block_display ~ ~ ~ {Tags:["scale","exit","object","new_exit","exit_z"],block_state:{Name:"minecraft:red_stained_glass"},brightness:{sky:15,block:15}}
execute as @e[type=block_display,tag=new_exit] at @s run data merge entity @s {width:3,height:3,transformation:{scale:[0.05f, 3.0f, 3.0f],translation:[0.4975f,0.0f,-1.0f]},interpolation_start:-2,Glowing:0b}
tag @e[type=block_display] remove new_exit
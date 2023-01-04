### TODO

replace minecraft woods with tag that includes minecraft woods and tfc woods

add support for dramatic skies by thebaum64, as well as modifying language section for updated woods. jungle -> kapok

Until TFCtweak is out, have wrought iron make minecraft:iron_nugget and have gold make minecraft:gold_nugget. no way to revert as of now

how to get cut emerald?

adjust loot from quark dungeons

use quern to grind down glowing ink sack into 12 glow stone powder

The undermentioned need to be changed in biome settings
add back dungeons enhanced and structure gel, getting rid of villager spawning structures. adjust loot table as well. list of acceptable structures:
* dungeons_enhanced:flying_dutchman
* dungeons_enhanced:castle
* dungeons_enhanced:deep_crypt
* dungeons_enhanced:desert_temple
* dungeons_enhanced:druid_circle
* dungeons_enhanced:dungeon_variant
* dungeons_enhanced:elders_temple
* dungeons_enhanced:desert_tomb
* dungeons_enhanced:hay_storage
* dungeons_enhanced:ice_pit
* dungeons_enhanced:large_dungeon
* (dungeons_enhanced:monster_maze) dont want oak wood, can we change this? prevent sappling drop perhaps
* dungeons_enhanced:ruined_building
* dungeons_enhanced:stables make this really low chance to spawn
* dungeons_enhanced:sunken_shrine adds ability to get triton
* dungeons_enhanced:tall_witch_hut
* dungeons_enhanced:tower_of_the_undead
* dungeons_enhanced:watch_tower
* dungeons_enhanced:witch_towerd

edit dungeon crawl loot table. 
<block:minecraft:dirt>.addLootModifier("iron",CommonLootModifiers.clearing(CommonLootModifiers.add(<item:minecraft:iron_ingot>)));
https://docs.blamejared.com/1.18/en/vanilla/api/loot/modifier/BlockLootModifiers
 https://github.com/xyroc/DungeonCrawl/tree/1.18.2/src/datagen/java/xiroc/dungeoncrawl/data/loot

 check if we can change mob's armour and can hold, if not disable their drops

 have undesirable items drop desireable items

 enable trash icon, apparently this is a quark thing

 remove all recipes for all furnaces and craftability for them, except for tfc blast furnace

 change where frogs spawn?

 grindstone is getting removed, but dungeon loot will be allowed to have enchanments. enchanments will be sort of a "lost art". 

 only runes will be allowed to be found. no enchanted books (you can read them which doesnt follow the lore)

 disable pickarang

 remove stonecutter access in future version since cant use chisel easily now

 make chains meltable
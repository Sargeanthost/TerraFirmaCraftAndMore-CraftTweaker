
// import crafttweaker.api.loot.modifier.CommonLootModifiers;


import crafttweaker.api.resource.ResourceLocation;

val tfcDungeonBiomes = [new ResourceLocation("tfc","plains"),new ResourceLocation("tfc","hills"),new ResourceLocation("tfc","lowlands"),new ResourceLocation("tfc","rolling_hills"),new ResourceLocation("tfc","badlands"),new ResourceLocation("tfc","plateau"),new ResourceLocation("tfc","old_mountains"),new ResourceLocation("tfc","inverted_badlands"),new ResourceLocation("tfc","mountains"),new ResourceLocation("tfc","plains")];
<tag:worldgen/biome:dungeoncrawl:has_structure/dungeon>.addId(tfcDungeonBiomes);

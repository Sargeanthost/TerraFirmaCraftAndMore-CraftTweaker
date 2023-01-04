import crafttweaker.api.resource.ResourceLocation;
val tfcDungeonBiomes = [
    new ResourceLocation("tfc","lake"),
    new ResourceLocation("tfc","mountain_lake"),
    new ResourceLocation("tfc","mountains"),
    new ResourceLocation("tfc","old_mountain_lake"),
    new ResourceLocation("tfc","old_mountains"),
    new ResourceLocation("tfc","plateau_lake"),
    new ResourceLocation("tfc","plateau"),
    new ResourceLocation("tfc","volcanic_mountain_lake"),
    new ResourceLocation("tfc","volcanic_mountains")
];
<tag:worldgen/biome:dungeoncrawl:has_structure/dungeon>.addId(tfcDungeonBiomes);

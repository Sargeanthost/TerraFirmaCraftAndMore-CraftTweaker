import crafttweaker.api.resource.ResourceLocation;
val tfcDungeonBiomes = [
    <resource:tfc:lake>,
    <resource:tfc:mountains>,
    <resource:tfc:mountain_lake>,
    <resource:tfc:old_mountains>,
    <resource:tfc:old_mountain_lake>,
    <resource:tfc:plateau>,
    <resource:tfc:plateau_lake>,
    <resource:tfc:volcanic_mountains>,
    <resource:tfc:volcanic_mountain_lake>
];
<tag:worldgen/biome:dungeoncrawl:has_structure/dungeon>.addId(tfcDungeonBiomes);

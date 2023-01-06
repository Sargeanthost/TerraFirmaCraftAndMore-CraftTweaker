import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
#onlyIf side server
//this preprocessor doesnt work, waiting on dc response
#endIf
// https://docs.blamejared.com/1.18/en/vanilla/api/loot/param/LootContextParamSets#chest

loot.modifiers.register("clearing_honey_kelp",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_1>)),
    CommonLootModifiers.clearing(CommonLootModifiers.addAllWithChance(<item:minecraft:honey_bottle> % 100, <item:minecraft:dried_kelp>  % 100))
);

// dungeoncrawl:chests/library
// dungeoncrawl:chests/stage_3
// dungeoncrawl:chests/stage_4
// dungeoncrawl:chests/stage_5
// dungeoncrawl:chests/stage_2
// dungeoncrawl:chests/stage_1
// dungeoncrawl:chests/treasure
// dungeoncrawl:monster_overrides/wither_skeleton
// dungeoncrawl:chests/secret_room
// dungeoncrawl:chests/supply
// dungeoncrawl:chests/food
// dungeoncrawl:misc/dispenser_2
// dungeoncrawl:misc/dispenser_3
// dungeoncrawl:misc/dispenser_1
// dungeoncrawl:chests/forge

import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.util.math.Random;
import crafttweaker.api.item.IItemStack;
#onlyIf side server
//this preprocessor doesnt work, waiting on dc response
#endIf
//actually stupid way to get random numbers https://discord.com/channels/136877912698650625/929770828286029914/1002701113771958352


// dungeoncrawl:chests/food
// loot.modifiers.register("food",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_1>)),
//     CommonLootModifiers.clearing(CommonLootModifiers.addAllWithChance(<item:minecraft:honey_bottle> % 100, <item:minecraft:dried_kelp>  % 100))
// );
//to get something a certain percent amount of time, have a bounded uniform distrobution of 0 - percentage, and check if number generated was any number. 
// anynumber/all numbers = 1/bound. for example, for something to show up 13% of the time, pick a random number between 0 and 13 (end exclusive) and youll get 1/13 for any number
// multiple rolls is 
// loot.modifiers.register("stage_1",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_1>)),
//     (drops, context) => {
//         // drops.add(<item:minecraft:arrow> *8);
//         //another day another time zenscript should have been lua. cant make lists
//         var list = [<item:minecraft:arrow>];
//         return list;
//     });
// loot.modifiers.register("food",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/food>)),
//     (drops, context) => {
//         // drops.add(<item:minecraft:arrow> *8);
//         //another day another time zenscript should have been lua. cant make lists
//         var list = [<item:minecraft:stone_sword>];
//         return list;
//     });

loot.modifiers.register("stage_1",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_1>)),
    (drops, context) =>{
        var random = context.random;
        var rolls = Setup.getRolls(random, 6, 9);
        var list = new stdlib.List<IItemStack>(); // init empty array to size of rolls
        var arr = [
                new weightedIItemStack(<item:tfc:food/red_apple>, 2),
                new weightedIItemStack(<item:tfc:food/potato>, 2),
                new weightedIItemStack(<item:tfc:food/onion>, 2),
                new weightedIItemStack(<item:tfc:food/carrot>,2),
                new weightedIItemStack(<item:tfc:food/cooked_beef>, 2),
                new weightedIItemStack(<item:minecraft:coal>, 3),
                new weightedIItemStack(<item:tfc:metal/ingot/wrought_iron>, 2),
                new weightedIItemStack(<item:tfc:metal/ingot/gold>, 2),
                new weightedIItemStack(<item:minecraft:arrow>, 2),
                new weightedIItemStack(<item:minecraft:cobweb>, 2),
                new weightedIItemStack(<item:minecraft:bone>, 4),
                new weightedIItemStack(<item:minecraft:rotten_flesh>, 3),
                new weightedIItemStack(<item:minecraft:stick>, 2),
                new weightedIItemStack(<item:minecraft:feather>, 1),
                new weightedIItemStack(<item:tfc:metal/ingot/rose_gold>, 2),
                new weightedIItemStack(<item:tfc:metal/ingot/pig_iron>, 2),
                new weightedIItemStack(<item:minecraft:clay_ball>, 1),
                new weightedIItemStack(<item:minecraft:flint>, 1),
                new weightedIItemStack(<item:tfc:wool_yarn>, 3),
                new weightedIItemStack(<item:minecraft:gunpowder>, 3),
                new weightedIItemStack(<item:minecraft:ink_sac>, 1),
                new weightedIItemStack(<item:tfc:powderkeg>, 1),
                new weightedIItemStack(<item:tfc:ceramic/unfired_jug>, 2),
                new weightedIItemStack(<item:tfc:ceramic/jug>, 1),
                new weightedIItemStack(<item:minecraft:egg>, 1),
                new weightedIItemStack(<item:minecraft:paper>, 1),
                new weightedIItemStack(<item:tfc:food/sugarcane>, 1),
                new weightedIItemStack(<item:minecraft:brick>, 3),
                new weightedIItemStack(<item:tfc:metal/ingot/copper>, 1),
                new weightedIItemStack(<item:tfc:metal/ingot/bronze>, 1),
                new weightedIItemStack(<item:tfc:small_raw_hide>, 2),
                new weightedIItemStack(<item:minecraft:phantom_membrane>, 1),
                new weightedIItemStack(<item:minecraft:golden_horse_armor>, 2),
                new weightedIItemStack(<item:minecraft:ender_pearl>, 1),
                new weightedIItemStack(<item:tfc:food/banana>, 1),
                new weightedIItemStack(<item:minecraft:music_disc_13>, 1),
                new weightedIItemStack(<item:minecraft:music_disc_cat>, 1),
                new weightedIItemStack(<item:minecraft:name_tag>, 1),
                new weightedIItemStack(<item:minecraft:book>, 3),
                new weightedIItemStack(<item:tfc:dead_torch>, 5),
                new weightedIItemStack(<item:tfc:food/cheese>, 2),
                new weightedIItemStack(<item:tfc:food/taro_root>, 2),
                new weightedIItemStack(<item:minecraft:bowl>, 3),
                new weightedIItemStack(<item:minecraft:clock>, 1),
                new weightedIItemStack(<item:minecraft:compass>, 1),
                new weightedIItemStack(<item:minecraft:lead>, 1),
                new weightedIItemStack(<item:minecraft:fermented_spider_eye>, 2),
                new weightedIItemStack(<item:minecraft:spider_eye>, 4),
                new weightedIItemStack(<item:quark:blank_rune>, 1),
                new weightedIItemStack(<item:tfc:metal/shield/bronze>, 1),
                new weightedIItemStack(<item:tfc:metal/shield/copper>, 1),
                new weightedIItemStack(<item:tfc:seeds/barley>, 1),
                new weightedIItemStack(<item:tfc:seeds/oat>, 1),
                new weightedIItemStack(<item:tfc:seeds/rye>, 1),
                new weightedIItemStack(<item:tfc:seeds/wheat>, 1)
        ] as weightedIItemStack[]; // init loot table with weights
        for i in 0 .. rolls { //again, check if exclusive
                list.add(Setup.getWeightedItem(random, arr));
        }
        return list;}
);


// println(Setup.uniformRandomNumber(1 as int,4 as int));
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
// dungeoncrawl:misc/dispenser_2
// dungeoncrawl:misc/dispenser_3
// dungeoncrawl:misc/dispenser_1
// dungeoncrawl:chests/forge

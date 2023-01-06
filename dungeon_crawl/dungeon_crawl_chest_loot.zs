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
loot.modifiers.register("stage_1",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_1>)),
    (drops, context) => {
        // drops.add(<item:minecraft:arrow> *8);
        //another day another time zenscript should have been lua. cant make lists
        var list = [<item:minecraft:arrow>];
        return list;
    });
loot.modifiers.register("food",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/food>)),
    (drops, context) => {
        // drops.add(<item:minecraft:arrow> *8);
        //another day another time zenscript should have been lua. cant make lists
        var list = [<item:minecraft:stone_sword>];
        return list;
    });



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

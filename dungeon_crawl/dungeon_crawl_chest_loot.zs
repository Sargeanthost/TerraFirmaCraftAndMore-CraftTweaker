import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.util.math.Random;
import crafttweaker.api.item.IItemStack;
#onlyIf side server
//this preprocessor doesnt work, waiting on dc response
#endIf

// dungeoncrawl:chests/stage_1

// dungeoncrawl:chests/food
loot.modifiers.register("stage_1",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_1>)),
    (drops, context) =>{
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        var arr = [
                new lootEntry(<item:tfc:food/red_apple>, 2, 1, 1),
                new lootEntry(<item:tfc:food/potato>, 2, 1, 1),
                new lootEntry(<item:tfc:food/onion>, 2, 1, 1),
                new lootEntry(<item:tfc:food/carrot>,2, 1, 1),
                new lootEntry(<item:tfc:food/cooked_beef>, 2, 1, 1),
                new lootEntry(<item:minecraft:coal>, 3, 1, 1),
                new lootEntry(<item:tfc:metal/ingot/wrought_iron>, 2, 1, 1),
                new lootEntry(<item:tfc:metal/ingot/gold>, 2, 1, 1),
                new lootEntry(<item:minecraft:arrow>, 2, 1, 1),
                new lootEntry(<item:minecraft:cobweb>, 2, 1, 1),
                new lootEntry(<item:minecraft:bone>, 4, 1, 1),
                new lootEntry(<item:minecraft:rotten_flesh>, 3, 1, 1),
                new lootEntry(<item:minecraft:stick>, 2, 1, 1),
                new lootEntry(<item:minecraft:feather>, 1, 1, 1),
                new lootEntry(<item:tfc:metal/ingot/rose_gold>, 2, 1, 1),
                new lootEntry(<item:tfc:metal/ingot/pig_iron>, 2, 1, 1),
                new lootEntry(<item:minecraft:clay_ball>, 1, 1, 1),
                new lootEntry(<item:minecraft:flint>, 1, 1, 1),
                new lootEntry(<item:tfc:wool_yarn>, 3, 1, 1),
                new lootEntry(<item:minecraft:gunpowder>, 3, 1, 1),
                new lootEntry(<item:minecraft:ink_sac>, 1, 1, 1),
                new lootEntry(<item:tfc:powderkeg>, 1, 1, 1),
                new lootEntry(<item:tfc:ceramic/unfired_jug>, 2, 1, 1),
                new lootEntry(<item:tfc:ceramic/jug>, 1, 1, 1),
                new lootEntry(<item:minecraft:egg>, 1, 1, 1),
                new lootEntry(<item:minecraft:paper>, 1, 1, 1),
                new lootEntry(<item:tfc:food/sugarcane>, 1, 1, 1),
                new lootEntry(<item:minecraft:brick>, 3, 1, 1),
                new lootEntry(<item:tfc:metal/ingot/copper>, 1, 1, 1),
                new lootEntry(<item:tfc:metal/ingot/bronze>, 1, 1, 1),
                new lootEntry(<item:tfc:small_raw_hide>, 2, 1, 1),
                new lootEntry(<item:minecraft:phantom_membrane>, 1, 1, 1),
                new lootEntry(<item:minecraft:golden_horse_armor>, 2, 1, 1),
                new lootEntry(<item:minecraft:ender_pearl>, 1, 1, 1),
                new lootEntry(<item:tfc:food/banana>, 1, 1, 1),
                new lootEntry(<item:minecraft:music_disc_13>, 1, 1, 1),
                new lootEntry(<item:minecraft:music_disc_cat>, 1, 1, 1),
                new lootEntry(<item:minecraft:name_tag>, 1, 1, 1),
                new lootEntry(<item:minecraft:book>, 3, 1, 1),
                new lootEntry(<item:tfc:dead_torch>, 6, 1, 1),
                new lootEntry(<item:tfc:food/cheese>, 2, 1, 1),
                new lootEntry(<item:tfc:food/taro_root>, 2, 1, 1),
                new lootEntry(<item:minecraft:bowl>, 3, 1, 1),
                new lootEntry(<item:minecraft:clock>, 1, 1, 1),
                new lootEntry(<item:minecraft:compass>, 1, 1, 1),
                new lootEntry(<item:minecraft:lead>, 1, 1, 1),
                new lootEntry(<item:minecraft:fermented_spider_eye>, 2, 1, 1),
                new lootEntry(<item:minecraft:spider_eye>, 4, 1, 1),
                new lootEntry(<item:quark:blank_rune>, 1, 1, 1),
                new lootEntry(<item:tfc:metal/shield/bronze>, 1, 1, 1),
                new lootEntry(<item:tfc:metal/shield/copper>, 1, 1, 1),
                new lootEntry(<item:tfc:seeds/barley>, 1, 1, 1),
                new lootEntry(<item:tfc:seeds/oat>, 1, 1, 1),
                new lootEntry(<item:tfc:seeds/rye>, 1, 1, 1),
                new lootEntry(<item:tfc:seeds/wheat>, 1, 1, 1)
        ] as lootEntry[];
        for i in 0 .. Setup.getRolls(random, 6, 9) {
                list.add(Setup.getWeightedItem(random, arr));
        }
        return list;
    }
);
loot.modifiers.register("stage_2",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_2>)),
    (drops, context) =>{
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        var arr = [
                new lootEntry(<item:tfc:food/red_apple>, 2, 1, 1),
                new lootEntry(<item:tfc:food/potato>, 2, 1, 1),
                new lootEntry(<item:tfc:food/onion>, 2, 1, 1),
                new lootEntry(<item:tfc:food/carrot>,2, 1, 1),
                new lootEntry(<item:tfc:food/cooked_beef>, 2, 1, 1),
                new lootEntry(<item:minecraft:coal>, 3, 1, 1),
                new lootEntry(<item:tfc:metal/ingot/wrought_iron>, 3, 1, 1),
                new lootEntry(<item:tfc:metal/ingot/gold>, 3, 1, 1),
                new lootEntry(<item:minecraft:arrow>, 3, 1, 1),
                new lootEntry(<item:minecraft:cobweb>, 2, 1, 1),
                new lootEntry(<item:minecraft:bone>, 4, 1, 1),
                new lootEntry(<item:minecraft:rotten_flesh>, 3, 1, 1),
                new lootEntry(<item:minecraft:stick>, 2, 1, 1),
                new lootEntry(<item:minecraft:feather>, 1, 1, 1),
                new lootEntry(<item:tfc:metal/ingot/rose_gold>, 3, 1, 1),
                new lootEntry(<item:tfc:metal/ingot/pig_iron>, 3, 1, 1),
                new lootEntry(<item:minecraft:clay_ball>, 1, 1, 1),
                new lootEntry(<item:minecraft:flint>, 1, 1, 1),
                new lootEntry(<item:tfc:wool_yarn>, 3, 1, 1),
                new lootEntry(<item:minecraft:gunpowder>, 3, 1, 1),
                new lootEntry(<item:minecraft:ink_sac>, 1, 1, 1),
                new lootEntry(<item:tfc:powderkeg>, 1, 1, 1),
                new lootEntry(<item:tfc:ceramic/unfired_jug>, 2, 1, 1),
                new lootEntry(<item:tfc:ceramic/jug>, 1, 1, 1),
                new lootEntry(<item:minecraft:egg>, 1, 1, 1),
                new lootEntry(<item:minecraft:paper>, 1, 1, 1),
                new lootEntry(<item:tfc:food/sugarcane>, 1, 1, 1),
                new lootEntry(<item:tfc:plant/dead_bush>, 1, 1, 1),
                new lootEntry(<item:minecraft:brick>, 3, 1, 1),
                new lootEntry(<item:tfc:metal/ingot/copper>, 1, 1, 1),
                new lootEntry(<item:tfc:metal/ingot/bronze>, 1, 1, 1),
                new lootEntry(<item:tfc:small_raw_hide>, 2, 1, 1),
                new lootEntry(<item:minecraft:phantom_membrane>, 1, 1, 1),
                new lootEntry(<item:minecraft:golden_horse_armor>, 2, 1, 1),
                new lootEntry(<item:minecraft:ender_pearl>, 1, 1, 1),
                new lootEntry(<item:tfc:food/banana>, 1, 1, 1),
                new lootEntry(<item:minecraft:music_disc_13>, 1, 1, 1),
                new lootEntry(<item:minecraft:music_disc_cat>, 1, 1, 1),
                new lootEntry(<item:minecraft:name_tag>, 1, 1, 1),
                new lootEntry(<item:minecraft:book>, 3, 1, 1),
                new lootEntry(<item:tfc:dead_torch>, 5, 1, 1),
                new lootEntry(<item:tfc:food/cheese>, 2, 1, 1),
                new lootEntry(<item:tfc:food/taro_root>, 2, 1, 1),
                new lootEntry(<item:minecraft:bowl>, 3, 1, 1),
                new lootEntry(<item:minecraft:clock>, 1, 1, 1),
                new lootEntry(<item:minecraft:compass>, 1, 1, 1),
                new lootEntry(<item:minecraft:lead>, 1, 1, 1),
                new lootEntry(<item:minecraft:fermented_spider_eye>, 2, 1, 1),
                new lootEntry(<item:minecraft:spider_eye>, 4, 1, 1),
                new lootEntry(<item:quark:blank_rune>, 1, 1, 1),
                new lootEntry(<item:tfc:metal/shield/bronze>, 1, 1, 1),
                new lootEntry(<item:tfc:metal/shield/copper>, 1, 1, 1),
                new lootEntry(<item:tfc:seeds/barley>, 1, 1, 1),
                new lootEntry(<item:tfc:seeds/oat>, 1, 1, 1),
                new lootEntry(<item:tfc:seeds/rye>, 1, 1, 1),
                new lootEntry(<item:tfc:seeds/wheat>, 1, 1, 1)
        ] as lootEntry[];
        for i in 0 .. Setup.getRolls(random, 6, 9) {
                list.add(Setup.getWeightedItem(random, arr));
        }
        return list;
    }
);
loot.modifiers.register("stage_3",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_3>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        var arr = [
                new lootEntry(<item:tfc:food/red_apple>, 3, 1, 4)
        ] as lootEntry[];

        for i in 0 .. Setup.getRolls(random, 6, 9) {
                list.add(Setup.getWeightedItem(random, arr));
        }
        return list;
    }
);
loot.modifiers.register("stage_4",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_4>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        var arr = [
                new lootEntry(<item:tfc:food/red_apple>, 3, 1, 4)
        ] as lootEntry[];

        for i in 0 .. Setup.getRolls(random, 7, 10) {
                list.add(Setup.getWeightedItem(random, arr));
        }
        return list;
    }
);
loot.modifiers.register("stage_5",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_5>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        var arr = [
                new lootEntry(<item:tfc:food/red_apple>, 3, 1, 4)
        ] as lootEntry[];

        for i in 0 .. Setup.getRolls(random, 6, 9) {
                println("it: " + i);
                list.add(Setup.getWeightedItem(random, arr));
        }
        return list;
    }
);
loot.modifiers.register("supply",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/supply>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        var arr = [
                new lootEntry(<item:tfc:food/red_apple>, 3, 1, 4)
        ] as lootEntry[];

        for i in 0 .. Setup.getRolls(random, 3, 6) {
                list.add(Setup.getWeightedItem(random, arr));
        }
        return list;
    }
);
loot.modifiers.register("forge",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/forge>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        var arr = [
                new lootEntry(<item:tfc:food/red_apple>, 3, 1, 4)
        ] as lootEntry[];

        for i in 0 .. Setup.getRolls(random, 9, 11) {
                list.add(Setup.getWeightedItem(random, arr));
        }
        return list;
    }
);
loot.modifiers.register("treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/treasure>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        var arr = [
                new lootEntry(<item:tfc:food/red_apple>, 3, 1, 4)
        ] as lootEntry[];

        for i in 0 .. Setup.getRolls(random, 7, 8) {
                list.add(Setup.getWeightedItem(random, arr));
        }
        return list;
    }
);
loot.modifiers.register("secret_room",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/secret_room>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        var arr = [
                new lootEntry(<item:tfc:food/red_apple>, 3, 1, 4)
        ] as lootEntry[];

        for i in 0 .. 8 {
                list.add(Setup.getWeightedItem(random, arr));
        }
        return list;
    }
);
loot.modifiers.register("library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/library>)),
    (drops, context) => {
        var random = context.random;
        // var rolls = Setup.getRolls(random, 9, 11);
        var list = new stdlib.List<IItemStack>();
        var arr = [
                new lootEntry(<item:tfc:food/red_apple>, 3, 1, 4)
        ] as lootEntry[];

        for i in 0 .. Setup.getRolls(random, 9, 11) {
                list.add(Setup.getWeightedItem(random, arr));
        }
        return list;
    }
);
loot.modifiers.register("food",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/food>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        var arr = [
                new lootEntry(<item:tfc:food/red_apple>, 3, 1, 4),
                new lootEntry(<item:tfc:food/rye_bread>, 2, 1, 4),
                new lootEntry(<item:tfc:food/wheat_bread>, 2, 1, 4),
                new lootEntry(<item:tfc:food/maize_bread>, 2, 1, 4),
                new lootEntry(<item:firmalife:food/garlic_bread>, 2, 1, 2),
                new lootEntry(<item:firmalife:food/rice_flatbread>, 2, 1, 3),
                new lootEntry(<item:firmalife:food/rice_flatbread>, 2, 1, 3),
                new lootEntry(<item:firmalife:food/maize_flatbread>, 2, 1, 3),
                new lootEntry(<item:tfc:food/chicken>, 1, 1, 3),
                new lootEntry(<item:tfc:food/pork>, 1, 1, 3),
                new lootEntry(<item:tfc:food/quail>, 1, 1, 3),
                new lootEntry(<item:tfc:food/mutton>, 1, 1, 3),
                new lootEntry(<item:tfc:food/duck>, 1, 1, 3),
                new lootEntry(<item:tfc:food/horse_meat>, 1, 1, 3),
                new lootEntry(<item:tfc:food/cooked_gran_feline>, 1, 1, 3),
                new lootEntry(<item:tfc:food/chevon>, 1, 1, 3),
                new lootEntry(<item:tfc:food/camelidae>, 1, 1, 3),
                new lootEntry(<item:tfc:food/venison>, 1, 1, 3),
                new lootEntry(<item:tfc:food/cooked_cod>, 1, 1, 3),
                new lootEntry(<item:tfc:food/strawberry>, 4, 2, 4),
                new lootEntry(<item:firmalife:food/pie_dough>, 2, 1, 3),
                new lootEntry(<item:tfc:melon>, 2, 2, 4),
                new lootEntry(<item:tfc:food/carrot>, 2, 2, 4),
                new lootEntry(<item:minecraft:rotten_flesh>, 5, 1, 3),
                new lootEntry(<item:tfc:food/blackberry>, 2, 2, 3),
                new lootEntry(<item:tfc:food/blueberry>, 2, 2, 5),
                new lootEntry(<item:tfc:food/cloudberry>, 2, 2, 5),
                new lootEntry(<item:tfc:food/plum>, 2, 2, 5),
                new lootEntry(<item:tfc:food/beet>, 2, 2, 5),
                new lootEntry(<item:tfc:food/squash>, 2, 2, 5),
                new lootEntry(<item:firmalife:food/dark_chocolate>, 4, 1, 2),
                new lootEntry(<item:minecraft:cobweb>, 10, 1, 2),
                new lootEntry(<item:tfc:cake>, 1, 1, 1)
        ] as lootEntry[];

        for i in 0 .. Setup.getRolls(random, 9, 11) {
                list.add(Setup.getWeightedItem(random, arr));
        }
        return list;
    }
);


// dungeoncrawl:chests/library
// dungeoncrawl:chests/stage_3
// dungeoncrawl:chests/stage_4
// dungeoncrawl:chests/stage_5
// dungeoncrawl:chests/stage_2
// dungeoncrawl:chests/treasure
// dungeoncrawl:monster_overrides/wither_skeleton
// dungeoncrawl:chests/secret_room
// dungeoncrawl:chests/supply
// dungeoncrawl:misc/dispenser_2
// dungeoncrawl:misc/dispenser_3
// dungeoncrawl:misc/dispenser_1
// dungeoncrawl:chests/forge

import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.util.math.Random;
import crafttweaker.api.item.IItemStack;

val stg1 = [
    new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3),
    new lootEntry(<item:tfc:food/banana>, 1, 1, 7),
    new lootEntry(<item:tfc:food/potato>, 2, 1, 5),
    new lootEntry(<item:tfc:food/onion>, 2, 1, 2),
    new lootEntry(<item:tfc:food/carrot>,2, 1, 4),
    new lootEntry(<item:tfc:food/taro_root>, 2, 1, 3),
    new lootEntry(<item:minecraft:coal>, 3, 2, 7),
    new lootEntry(<item:tfc:metal/ingot/gold>, 2, 1, 1),
    new lootEntry(<item:minecraft:arrow>, 2, 2, 4),
    new lootEntry(<item:minecraft:cobweb>, 3, 1, 4),
    new lootEntry(<item:minecraft:bone>, 4, 2, 3),
    new lootEntry(<item:minecraft:rotten_flesh>, 4, 2, 5),
    new lootEntry(<item:minecraft:stick>, 2, 1, 8),
    new lootEntry(<item:minecraft:feather>, 1, 1, 4),
    new lootEntry(<item:tfc:metal/ingot/rose_gold>, 2, 1, 1),
    new lootEntry(<item:minecraft:clay_ball>, 1, 3, 7),
    new lootEntry(<item:minecraft:flint>, 1, 2, 3),
    new lootEntry(<item:tfc:small_sheepskin_hide>, 3, 3, 5),
    new lootEntry(<item:minecraft:gunpowder>, 3, 1, 2),
    new lootEntry(<item:minecraft:ink_sac>, 2, 1, 1),
    new lootEntry(<item:tfc:powderkeg>, 1, 1, 1),
    new lootEntry(<item:tfc:ceramic/unfired_jug>, 2, 2, 3),
    new lootEntry(<item:tfc:ceramic/jug>, 1, 1, 1),
    new lootEntry(<item:minecraft:paper>, 1, 1, 9),
    new lootEntry(<item:minecraft:brick>, 3, 1, 5),
    new lootEntry(<item:tfc:metal/ingot/copper>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/bronze>, 1, 1, 1),
    new lootEntry(<item:minecraft:phantom_membrane>, 1, 1, 1),
    new lootEntry(<item:minecraft:golden_horse_armor>, 1, 1, 1),
    new lootEntry(<item:minecraft:book>, 3, 1, 1),
    new lootEntry(<item:tfc:dead_torch>, 5, 1, 6),
    new lootEntry(<item:minecraft:bowl>, 3, 1, 2),
    new lootEntry(<item:minecraft:compass>, 1, 1, 1),
    new lootEntry(<item:minecraft:fermented_spider_eye>, 2, 1, 1),
    new lootEntry(<item:minecraft:spider_eye>, 4, 2, 2),
    new lootEntry(<item:tfc:seeds/barley>, 3, 1, 5),
    new lootEntry(<item:tfc:seeds/oat>, 3, 1, 5),
    new lootEntry(<item:tfc:seeds/rye>, 3, 1, 5),
    new lootEntry(<item:tfc:seeds/wheat>, 3, 1, 5)
] as lootEntry[];

val stg2 = [
    new lootEntry(<item:tfc:food/red_apple>, 2, 1, 2),
    new lootEntry(<item:tfc:food/banana>, 1, 1, 7),
    new lootEntry(<item:tfc:food/cheese>, 1, 1, 1),
    new lootEntry(<item:tfc:food/taro_root>, 2, 1, 3),
    new lootEntry(<item:minecraft:coal>, 4, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/copper>, 3, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/gold>, 2, 1, 1),
    new lootEntry(<item:minecraft:arrow>, 3, 2, 4),
    new lootEntry(<item:minecraft:cobweb>, 3, 1, 3),
    new lootEntry(<item:minecraft:bone>, 3, 1, 2),
    new lootEntry(<item:minecraft:stick>, 2, 1, 8),
    new lootEntry(<item:minecraft:feather>, 1, 1, 4),
    new lootEntry(<item:tfc:metal/ingot/rose_gold>, 3, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/pig_iron>, 3, 1, 1),
    new lootEntry(<item:minecraft:clay_ball>, 1, 3, 7),
    new lootEntry(<item:minecraft:flint>, 1, 2, 3),
    new lootEntry(<item:tfc:medium_sheepskin_hide>, 3, 3, 5),
    new lootEntry(<item:minecraft:gunpowder>, 3, 2, 3),
    new lootEntry(<item:tfc:ceramic/jug>, 1, 1, 1),
    new lootEntry(<item:minecraft:paper>, 1, 1, 1),
    new lootEntry(<item:tfc:plant/dead_bush>, 1, 1, 1),
    new lootEntry(<item:minecraft:brick>, 2, 1, 3),
    new lootEntry(<item:tfc:metal/ingot/copper>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/bronze>, 1, 1, 1),
    new lootEntry(<item:tfc:small_raw_hide>, 2, 1, 1),
    new lootEntry(<item:minecraft:phantom_membrane>, 1, 2, 3),
    new lootEntry(<item:minecraft:golden_horse_armor>, 2, 1, 1),
    new lootEntry(<item:minecraft:book>, 3, 1, 1),
    new lootEntry(<item:tfc:dead_torch>, 4, 1, 5),
    new lootEntry(<item:minecraft:bowl>, 3, 1, 2),
    new lootEntry(<item:minecraft:clock>, 1, 1, 1),
    new lootEntry(<item:minecraft:compass>, 1, 1, 1),
    new lootEntry(<item:minecraft:lead>, 1, 1, 1),
    new lootEntry(<item:minecraft:spider_eye>, 3, 2, 2),
    new lootEntry(<item:quark:blank_rune>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/shield/bronze>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/shield/copper>, 1, 1, 1),
    new lootEntry(<item:tfc:seeds/maize>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/rice>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/soybean>, 2, 2, 4)
] as lootEntry[];

val stg3 = [
    new lootEntry(<item:tfc:food/red_apple>, 3, 1, 4)
] as lootEntry[];

val stg4 = [
    new lootEntry(<item:tfc:food/green_apple>, 3, 1, 4)
] as lootEntry[];

val stg5 = [
    new lootEntry(<item:tfc:food/peach>, 3, 1, 4)
] as lootEntry[];

val supply = [
    new lootEntry(<item:tfc:food/sugarcane>, 3, 1, 4)
] as lootEntry[];

val forge = [
    new lootEntry(<item:tfc:food/fruit_soup>, 3, 1, 4)
] as lootEntry[];

val treasure = [
    new lootEntry(<item:tfc:food/tomato>, 3, 1, 4)
] as lootEntry[];

val secret = [
    new lootEntry(<item:tfc:food/soybean>, 3, 1, 4)
] as lootEntry[];

val library = [
    new lootEntry(<item:tfc:food/lemon>, 3, 1, 4)
] as lootEntry[];

val food = [
    new lootEntry(<item:tfc:food/red_apple>, 3, 1, 4),
    new lootEntry(<item:tfc:food/rye_bread>, 2, 1, 4),
    new lootEntry(<item:tfc:food/wheat_bread>, 2, 1, 4),
    new lootEntry(<item:tfc:food/maize_bread>, 2, 1, 4),
    new lootEntry(<item:firmalife:food/garlic_bread>, 2, 1, 2),
    new lootEntry(<item:firmalife:food/wheat_flatbread>, 2, 1, 3),
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
    new lootEntry(<item:minecraft:bone>, 4, 1, 3),
    new lootEntry(<item:tfc:food/blackberry>, 2, 2, 3),
    new lootEntry(<item:tfc:food/blueberry>, 2, 2, 5),
    new lootEntry(<item:tfc:food/cloudberry>, 2, 2, 5),
    new lootEntry(<item:tfc:food/plum>, 2, 2, 5),
    new lootEntry(<item:tfc:food/beet>, 2, 2, 5),
    new lootEntry(<item:tfc:food/squash>, 2, 2, 5),
    new lootEntry(<item:firmalife:food/dark_chocolate>, 3, 1, 2),
    new lootEntry(<item:minecraft:cobweb>, 4, 1, 2),
    new lootEntry(<item:tfc:cake>, 1, 1, 1)
] as lootEntry[];

val stg1r = [
    new lootEntry(<item:minecraft:jungle_sapling>, 3, 1, 4)
] as lootEntry[];

val stg2and3r = [
    new lootEntry(<item:tfc:metal/chain/steel>, 3, 1, 4)
] as lootEntry[];

val stg4and5r = [
    new lootEntry(<item:minecraft:ender_eye>, 3, 1, 4)
] as lootEntry[];

var stg1totw = 0;
for lootentry in stg1{
    stg1totw += lootentry.weight;
}

var stg2totw = 0;
for lootentry in stg2{
    stg2totw += lootentry.weight;
}

var stg3totw = 0;
for lootentry in stg3{
    stg3totw += lootentry.weight;
}

var stg4totw = 0;
for lootentry in stg4{
    stg4totw += lootentry.weight;
}

var stg5totw = 0;
for lootentry in stg5{
    stg5totw += lootentry.weight;
}

var supplytotw = 0;
for lootentry in supply{
    supplytotw += lootentry.weight;
}

var forgetotw = 0;
for lootentry in forge{
    forgetotw += lootentry.weight;
}

var treasuretotw = 0;
for lootentry in treasure{
    treasuretotw += lootentry.weight;
}

var secrettotw = 0;
for lootentry in secret{
    secrettotw += lootentry.weight;
}

var librarytotw = 0;
for lootentry in library{
    librarytotw += lootentry.weight;
}

var foodtotw = 0;
for lootentry in food{
    foodtotw += lootentry.weight;
}

var stg1rtotw = 0;
for lootentry in stg1r{
    stg1rtotw += lootentry.weight;
}

var stg2and3rtotw = 0;
for lootentry in stg2and3r{
    stg2and3rtotw += lootentry.weight;
}

var stg4and5rtotw = 0;
for lootentry in stg4and5r{
    stg4and5rtotw += lootentry.weight;
}

loot.modifiers.register("stage_1",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_1>)),
    (drops, context) =>{
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, stg1, stg1totw));
        }
        return list;
    }
);

loot.modifiers.register("stage_2",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_2>)),
    (drops, context) =>{
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, stg2, stg2totw));
        }
        return list;
    }
);

loot.modifiers.register("stage_3",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_3>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, stg3, stg3totw));
        }
        return list;
    }
);

loot.modifiers.register("stage_4",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_4>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, stg4, stg4totw));
        }
        return list;
    }
);

loot.modifiers.register("stage_5",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_5>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, stg5, stg5totw));
        }
        return list;
    }
);

loot.modifiers.register("supply",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/supply>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, supply, supplytotw));
        }
        return list;
    }
);

loot.modifiers.register("forge",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/forge>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, forge, forgetotw));
        }
        return list;
    }
);

loot.modifiers.register("treasure",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/treasure>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, treasure, treasuretotw));
        }
        return list;
    }
);

loot.modifiers.register("secret_room",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/secret_room>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, secret, secrettotw));
        }
        return list;
    }
);

loot.modifiers.register("dc_library",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/library>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, library, librarytotw));
        }
        return list;
    }
);

loot.modifiers.register("food",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/food>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, food, foodtotw));
        }
        return list;
    }
);

loot.modifiers.register("stage_1rare",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/jungle_temple>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, stg1r, stg1rtotw));
        }
        return list;
    }
);

loot.modifiers.register("stage_2and3rare",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/simple_dungeon>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, stg2and3r, stg2and3rtotw));
        }
        return list;
    }
);

loot.modifiers.register("stage_4and5rare",
    LootConditions.only(LootTableIdLootCondition.create(<resource:minecraft:chests/stronghold_crossing>)),
    (drops, context) => {
        var random = context.random;
        var list = new stdlib.List<IItemStack>();
        for i in 0 .. lootEntry.getRolls(random, 6, 9) {
            list.add(lootEntry.getWeightedItem(random, stg4and5r, stg4and5rtotw));
        }
        return list;
    }
);

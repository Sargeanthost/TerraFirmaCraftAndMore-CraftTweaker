import crafttweaker.api.loot.condition.LootTableIdLootCondition;
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.util.math.Random;
import crafttweaker.api.item.IItemStack;

val stg1 = [
    new lootEntry(<item:tfc:dead_torch>, 5, 1, 6),
    new lootEntry(<item:minecraft:bone>, 5, 2, 3),
    new lootEntry(<item:minecraft:spider_eye>, 5, 2, 2),
    new lootEntry(<item:minecraft:rotten_flesh>, 5, 2, 5),
    new lootEntry(<item:tfc:straw>, 5, 3, 4),
    new lootEntry(<item:minecraft:cobweb>, 5, 1, 4),
    new lootEntry(<item:minecraft:coal>, 4, 2, 7),
    new lootEntry(<item:minecraft:gunpowder>, 4, 1, 2),
    new lootEntry(<item:minecraft:paper>, 4, 1, 9),
    new lootEntry(<item:minecraft:brick>, 4, 1, 5),
    new lootEntry(<item:tfc:rock/loose/claystone>, 4, 1, 4),
    new lootEntry(<item:tfc:small_sheepskin_hide>, 4, 3, 5),
    new lootEntry(<item:minecraft:bowl>, 4, 1, 2),
    new lootEntry(<item:tfc:seeds/barley>, 3, 2, 4),
    new lootEntry(<item:tfc:seeds/oat>, 3, 2, 4),
    new lootEntry(<item:tfc:seeds/rye>, 3, 2, 4),
    new lootEntry(<item:tfc:seeds/wheat>, 3, 2, 4),
    new lootEntry(<item:tfc:food/cherry>, 2, 2, 8),
    new lootEntry(<item:tfc:food/potato>, 2, 1, 5),
    new lootEntry(<item:tfc:food/carrot>,2, 1, 4),
    new lootEntry(<item:tfc:food/taro_root>, 2, 1, 3),
    new lootEntry(<item:tfc:food/cabbage>, 1, 1, 2),
    new lootEntry(<item:minecraft:ink_sac>, 2, 1, 1),
    new lootEntry(<item:minecraft:fermented_spider_eye>, 2, 1, 1),
    new lootEntry(<item:tfc:ceramic/unfired_jug>, 2, 2, 3),
    new lootEntry(<item:minecraft:arrow>, 2, 2, 4),
    new lootEntry(<item:minecraft:stick>, 2, 1, 8),
    new lootEntry(<item:minecraft:feather>, 1, 1, 4),
    new lootEntry(<item:minecraft:flint>, 1, 2, 3),
    new lootEntry(<item:tfc:ceramic/jug>, 1, 1, 1),
    new lootEntry(<item:minecraft:clay_ball>, 1, 3, 7),
    new lootEntry(<item:minecraft:book>, 1, 1, 1),
    new lootEntry(<item:minecraft:compass>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/copper>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/bronze>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/silver>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/sterling_silver>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/gold>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/rose_gold>, 1, 1, 1),
    new lootEntry(<item:minecraft:golden_horse_armor>, 1, 1, 1),
    new lootEntry(<item:tfc:powderkeg>, 1, 1, 1),
    new lootEntry(<item:minecraft:phantom_membrane>, 1, 1, 1)
] as lootEntry[];

val stg2 = [
    new lootEntry(<item:tfc:dead_torch>, 5, 1, 5),
    new lootEntry(<item:minecraft:coal>, 5, 1, 1),
    new lootEntry(<item:minecraft:cobweb>, 5, 1, 3),
    new lootEntry(<item:minecraft:bone>, 4, 1, 2),
    new lootEntry(<item:minecraft:spider_eye>, 4, 2, 2),
    new lootEntry(<item:minecraft:gunpowder>, 4, 2, 3),
    new lootEntry(<item:tfc:medium_sheepskin_hide>, 4, 3, 5),
    new lootEntry(<item:minecraft:arrow>, 4, 2, 4),
    new lootEntry(<item:minecraft:bowl>, 4, 1, 2),
    new lootEntry(<item:tfc:seeds/maize>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/rice>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/soybean>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/green_bean>, 2, 2, 4),
    new lootEntry(<item:minecraft:brick>, 2, 1, 3),
    new lootEntry(<item:tfc:rock/loose/basalt>, 2, 1, 2),
    new lootEntry(<item:tfc:rock/loose/granite>, 2, 1, 2),
    new lootEntry(<item:tfc:rock/loose/phyllite>, 2, 1, 2),
    new lootEntry(<item:minecraft:book>, 2, 1, 1),
    new lootEntry(<item:minecraft:paper>, 2, 1, 9),
    new lootEntry(<item:minecraft:flint>, 2, 2, 3),
    new lootEntry(<item:minecraft:stick>, 2, 1, 8),
    new lootEntry(<item:minecraft:feather>, 2, 1, 4),
    new lootEntry(<item:tfc:small_raw_hide>, 2, 1, 1),
    new lootEntry(<item:tfc:food/red_apple>, 2, 1, 2),
    new lootEntry(<item:tfc:food/raspberry>, 2, 1, 8),
    new lootEntry(<item:tfc:food/taro_root>, 2, 1, 3),
    new lootEntry(<item:tfc:food/plum>, 1, 1, 5),
    new lootEntry(<item:firmalife:food/cheddar>, 1, 1, 1),
    new lootEntry(<item:tfc:food/garlic>, 1, 1, 3),
    new lootEntry(<item:tfc:ceramic/jug>, 1, 1, 1),
    new lootEntry(<item:tfc:plant/dead_bush>, 1, 1, 1),
    new lootEntry(<item:minecraft:clay_ball>, 1, 3, 7),
    new lootEntry(<item:minecraft:clock>, 1, 1, 1),
    new lootEntry(<item:minecraft:compass>, 1, 1, 1),
    new lootEntry(<item:minecraft:lead>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/copper>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/bronze>, 1, 1, 3),
    new lootEntry(<item:tfc:metal/ingot/silver>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/sterling_silver>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/gold>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/rose_gold>, 1, 1, 1),
    new lootEntry(<item:minecraft:golden_horse_armor>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/shield/copper>, 1, 1, 1),
    new lootEntry(<item:minecraft:phantom_membrane>, 1, 2, 3)
] as lootEntry[];

val stg3 = [
    new lootEntry(<item:tfc:dead_torch>, 5, 1, 6),
    new lootEntry(<item:minecraft:bone>, 5, 2, 3),
    new lootEntry(<item:minecraft:spider_eye>, 4, 2, 2),
    new lootEntry(<item:minecraft:cobweb>, 4, 1, 4),
    new lootEntry(<item:minecraft:coal>, 4, 2, 7),
    new lootEntry(<item:minecraft:gunpowder>, 3, 1, 2),
    new lootEntry(<item:minecraft:brick>, 3, 1, 5),
    new lootEntry(<item:tfc:large_sheepskin_hide>, 3, 3, 5),
    new lootEntry(<item:minecraft:bowl>, 3, 1, 2),
    new lootEntry(<item:tfc:seeds/beet>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/cabbage>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/garlic>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/onion>, 2, 2, 4),
    new lootEntry(<item:minecraft:arrow>, 2, 2, 4),
    new lootEntry(<item:minecraft:stick>, 2, 1, 6),
    new lootEntry(<item:tfc:food/cattail_root>, 2, 1, 3),
    new lootEntry(<item:tfc:food/orange>, 2, 1, 4),
    new lootEntry(<item:tfc:food/green_bell_pepper>, 1, 1, 3),
    new lootEntry(<item:tfc:food/olive>, 1, 3, 5),
    new lootEntry(<item:tfc:ceramic/jug>.withTag({
        fluid: {Amount: 100 as int, 
        FluidName: "minecraft:water" as string}}), 1, 2, 2),
    new lootEntry(<item:tfc:rock/loose/chert>, 1, 1, 2),
    new lootEntry(<item:tfc:rock/loose/conglomerate>, 1, 1, 2),
    new lootEntry(<item:tfc:rock/loose/dacite>, 1, 1, 2),
    new lootEntry(<item:tfc:rock/loose/diorite>, 1, 1, 2),
    new lootEntry(<item:tfc:rock/loose/gabbro>, 1, 1, 2),
    new lootEntry(<item:tfc:rock/loose/gneiss>, 1, 1, 2),
    new lootEntry(<item:minecraft:book>, 1, 1, 1),
    new lootEntry(<item:minecraft:clock>, 1, 1, 1),
    new lootEntry(<item:minecraft:compass>, 1, 1, 1),
    new lootEntry(<item:minecraft:lead>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/zinc>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/nickel>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/tin>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/copper>, 1, 1, 3),
    new lootEntry(<item:tfc:metal/ingot/bronze>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/pig_iron>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/silver>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/sterling_silver>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/gold>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/rose_gold>, 1, 1, 1),
    new lootEntry(<item:minecraft:iron_horse_armor>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/shield/bronze>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/shield/copper>, 1, 1, 1)
] as lootEntry[];

val stg4 = [
    new lootEntry(<item:tfc:dead_torch>, 5, 1, 5),
    new lootEntry(<item:minecraft:bone>, 4, 2, 3),
    new lootEntry(<item:tfc:plant/liana>, 4, 1, 4),
    new lootEntry(<item:minecraft:coal>, 3, 2, 7),
    new lootEntry(<item:minecraft:cobweb>, 3, 1, 2),
    new lootEntry(<item:tfc:wood/fallen_leaves/kapok>, 3, 1, 2),
    new lootEntry(<item:minecraft:arrow>, 3, 2, 4),
    new lootEntry(<item:minecraft:stick>, 3, 1, 6),
    new lootEntry(<item:tfc:seeds/jute>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/melon>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/pumpkin>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/sugarcane>, 2, 2, 4),
    new lootEntry(<item:tfc:ceramic/jug>.withTag({
        fluid: {Amount: 100 as int, 
        FluidName: "minecraft:water" as string}}), 1, 2, 2),
    new lootEntry(<item:firmalife:food/maize_flatbread>, 1, 1, 4),
    new lootEntry(<item:firmalife:food/wheat_flatbread>, 1, 1, 4),
    new lootEntry(<item:tfc:food/banana>, 1, 1, 7),
    new lootEntry(<item:tfc:food/yellow_bell_pepper>, 1, 1, 3),
    new lootEntry(<item:tfc:rock/loose/quartzite>, 1, 1, 4),
    new lootEntry(<item:tfc:rock/loose/rhyolite>, 1, 1, 4),
    new lootEntry(<item:tfc:wood/barrel/oak>, 1, 1, 1),
    new lootEntry(<item:tfc:wooden_bucket>, 1, 1, 1),
    new lootEntry(<item:tfc:burlap_cloth>, 1, 1, 5),
    new lootEntry(<item:quark:blank_rune>, 1, 1, 1),
    new lootEntry(<item:minecraft:saddle>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/zinc>, 1, 1, 3),
    new lootEntry(<item:tfc:metal/ingot/nickel>, 1, 1, 3),
    new lootEntry(<item:tfc:metal/ingot/tin>, 1, 1, 3),
    new lootEntry(<item:tfc:metal/ingot/bismuth>, 1, 1, 3),
    new lootEntry(<item:tfc:metal/ingot/copper>, 1, 1, 3),
    new lootEntry(<item:tfc:metal/ingot/bronze>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/wrought_iron>, 1, 2, 4),
    new lootEntry(<item:tfc:metal/ingot/cast_iron>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/pig_iron>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/silver>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/sterling_silver>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/gold>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/rose_gold>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/fish_hook/copper>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/shield/bismuth_bronze>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/shield/black_bronze>, 1, 1, 1)
] as lootEntry[];

val stg5 = [
    new lootEntry(<item:minecraft:coal>, 5, 4, 9),
    new lootEntry(<item:tfc:dead_torch>, 4, 1, 5),
    new lootEntry(<item:minecraft:bone>, 4, 2, 3),
    new lootEntry(<item:minecraft:fire_charge>, 4, 1, 3),
    new lootEntry(<item:minecraft:cobweb>, 3, 1, 2),
    new lootEntry(<item:minecraft:arrow>, 3, 2, 4),
    new lootEntry(<item:tfc:wood/twig/rosewood>, 3, 1, 6),
    new lootEntry(<item:tfc:ore/sulfur>, 3, 1, 4),
    new lootEntry(<item:minecraft:glowstone_dust>, 3, 1, 3),
    new lootEntry(<item:tfc:seeds/onion>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/potato>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/tomato>, 2, 2, 4),
    new lootEntry(<item:tfc:seeds/squash>, 2, 2, 4),
    new lootEntry(<item:tfc:metal/ingot/unknown>, 2, 1, 2),
    new lootEntry(<item:tfc:ceramic/jug>.withTag({
        fluid: {Amount: 100 as int, 
        FluidName: "minecraft:water" as string}}), 1, 2, 2),
    new lootEntry(<item:firmalife:food/gouda>, 1, 1, 3),
    new lootEntry(<item:tfc:food/cooked_pheasant>, 1, 1, 4),
    new lootEntry(<item:tfc:food/cooked_beef>, 1, 1, 1),
    new lootEntry(<item:tfc:food/red_bell_pepper>, 1, 1, 1),
    new lootEntry(<item:tfc:rock/loose/schist>, 1, 1, 2),
    new lootEntry(<item:tfc:rock/loose/shale>, 1, 1, 2),
    new lootEntry(<item:tfc:rock/loose/slate>, 1, 1, 2),
    new lootEntry(<item:tfc:candle/red>, 1, 3, 6),
    new lootEntry(<item:tfc:candle/black>, 1, 3, 6),
    new lootEntry(<item:tfc:wood/sapling/rosewood>, 1, 1, 3),
    new lootEntry(<item:quark:blank_rune>, 1, 1, 1),
    new lootEntry(<item:minecraft:saddle>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/ingot/zinc>, 1, 2, 4),
    new lootEntry(<item:tfc:metal/ingot/nickel>, 1, 2, 4),
    new lootEntry(<item:tfc:metal/ingot/tin>, 1, 2, 4),
    new lootEntry(<item:tfc:metal/ingot/bismuth>, 1, 1, 4),
    new lootEntry(<item:tfc:metal/ingot/copper>, 1, 2, 4),
    new lootEntry(<item:tfc:metal/ingot/wrought_iron>, 1, 1, 3),
    new lootEntry(<item:tfc:metal/ingot/cast_iron>, 1, 1, 3),
    new lootEntry(<item:tfc:metal/ingot/silver>, 1, 1, 3),
    new lootEntry(<item:tfc:metal/ingot/sterling_silver>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/ingot/gold>, 1, 1, 3),
    new lootEntry(<item:tfc:metal/ingot/rose_gold>, 1, 1, 2),
    new lootEntry(<item:tfc:metal/fish_hook/copper>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/shield/bismuth_bronze>, 1, 1, 1),
    new lootEntry(<item:tfc:metal/shield/black_bronze>, 1, 1, 1)
] as lootEntry[];

val supply = [
    new lootEntry(<item:tfc:stone/axe/sedimentary>, 3, 1, 4)
] as lootEntry[];

val forge = [
    new lootEntry(<item:tfc:food/fruit_soup>, 3, 1, 4)
] as lootEntry[];

val treasure = [
    new lootEntry(<item:firmalife:metal/ingot/chromium>, 1, 1, 3)
] as lootEntry[];

val secret = [
    new lootEntry(<item:minecraft:glow_ink_sac>, 3, 1, 4)
] as lootEntry[];

val library = [
    new lootEntry(<item:tfc:food/lemon>, 3, 1, 4)
] as lootEntry[];

val food = [
    new lootEntry(<item:minecraft:cobweb>, 4, 1, 2),
    new lootEntry(<item:minecraft:bone>, 4, 1, 3),
    new lootEntry(<item:tfc:food/red_apple>, 4, 1, 4),
    new lootEntry(<item:firmalife:food/dark_chocolate>, 3, 1, 2),
    new lootEntry(<item:tfc:food/strawberry>, 3, 2, 4),
    new lootEntry(<item:tfc:food/rye_bread>, 2, 1, 4),
    new lootEntry(<item:tfc:food/wheat_bread>, 2, 1, 4),
    new lootEntry(<item:tfc:food/maize_bread>, 2, 1, 4),
    new lootEntry(<item:firmalife:food/garlic_bread>, 2, 1, 2),
    new lootEntry(<item:firmalife:food/wheat_flatbread>, 2, 1, 3),
    new lootEntry(<item:firmalife:food/rice_flatbread>, 2, 1, 3),
    new lootEntry(<item:firmalife:food/maize_flatbread>, 2, 1, 3),
    new lootEntry(<item:firmalife:food/pie_dough>, 2, 1, 3),
    new lootEntry(<item:tfc:ceramic/jug>.withTag({
        fluid: {Amount: 100 as int, 
        FluidName: "minecraft:water" as string}}), 2, 2, 2),
    new lootEntry(<item:tfc:melon>, 2, 2, 4),
    new lootEntry(<item:tfc:food/carrot>, 2, 2, 4),
    new lootEntry(<item:tfc:food/blackberry>, 2, 2, 3),
    new lootEntry(<item:tfc:food/blueberry>, 2, 2, 5),
    new lootEntry(<item:tfc:food/cloudberry>, 2, 2, 5),
    new lootEntry(<item:tfc:food/plum>, 2, 2, 5),
    new lootEntry(<item:tfc:food/beet>, 2, 2, 5),
    new lootEntry(<item:tfc:food/squash>, 2, 2, 5),
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
        for i in 0 .. lootEntry.getRolls(random, 3, 7) {
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
        for i in 0 .. lootEntry.getRolls(random, 4, 8) {
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
        for i in 0 .. lootEntry.getRolls(random, 5, 9) {
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
        for i in 0 .. lootEntry.getRolls(random, 7, 9) {
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
        for i in 0 .. lootEntry.getRolls(random, 7, 11) {
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
        for i in 0 .. lootEntry.getRolls(random, 5, 9) {
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
        for i in 0 .. lootEntry.getRolls(random, 4, 6) {
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
        for i in 0 .. lootEntry.getRolls(random, 8, 10) {
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
        for i in 0 .. lootEntry.getRolls(random, 5, 9) {
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
        for i in 0 .. lootEntry.getRolls(random, 7, 9) {
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
        for i in 0 .. lootEntry.getRolls(random, 3, 8) {
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
        for i in 0 .. lootEntry.getRolls(random, 5, 10) {
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
        for i in 0 .. lootEntry.getRolls(random, 7, 12) {
            list.add(lootEntry.getWeightedItem(random, stg4and5r, stg4and5rtotw));
        }
        return list;
    }
);

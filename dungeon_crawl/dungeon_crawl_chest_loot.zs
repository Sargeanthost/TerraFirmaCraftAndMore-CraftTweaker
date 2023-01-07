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
loot.modifiers.register("food",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/food>)),
    (drops, context) => {
        var random = context.random;
        var rolls = Setup.getRolls(random, 9, 11);
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
                new lootEntry(<item:tfc:cake>, 1, 1, 1)
        ] as lootEntry[];
        for i in 0 .. rolls {
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

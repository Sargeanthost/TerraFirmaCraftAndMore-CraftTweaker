### TODO

replace minecraft woods with tag that includes minecraft woods and tfc woods

adjust loot from quark dungeons

use quern to grind down glowing ink sack into 12 glow stone powder

edit dungeon crawl loot table. https://github.com/xyroc/DungeonCrawl/tree/1.18.2/src/datagen/java/xiroc/dungeoncrawl/data/loot
I think the way to do this is by making a custom loot pool of things we want, clearing the loot pool from the chests, and then linking ours

check if we can change mob's armour and can hold, if not disable their drops

have undesirable items drop desireable items

change where frogs spawn? add nutrition and expiration date

remove stonecutter access in future version since cant use chisel easily now

make chains meltable

check firmalife recipes

edit terrafirma book with gemstone rarity (4%) and locations (below)

## Notes

The undermentioned need to be changed in biome settings
add back dungeons enhanced and structure gel, getting rid of villager spawning structures. adjust loot table as well. list of acceptable structures:
* dungeons_enhanced:castle
* dungeons_enhanced:deep_crypt
* dungeons_enhanced:desert_temple
* dungeons_enhanced:desert_tomb
* dungeons_enhanced:druid_circle
* dungeons_enhanced:dungeon_variant
* dungeons_enhanced:elders_temple
* dungeons_enhanced:flying_dutchman
* dungeons_enhanced:hay_storage
* dungeons_enhanced:ice_pit
* dungeons_enhanced:large_dungeon
* (dungeons_enhanced:monster_maze) dont want oak wood, can we change this? prevent sapling drop perhaps
* dungeons_enhanced:mushroom_house
* dungeons_enhanced:ruined_building
* dungeons_enhanced:stables make this really low chance to spawn
* dungeons_enhanced:sunken_shrine adds ability to get triton
* dungeons_enhanced:tall_witch_hut
* dungeons_enhanced:tower_of_the_undead
* dungeons_enhanced:watch_tower
* dungeons_enhanced:witch_tower

grindstone is getting removed, but dungeon loot will be allowed to have enchantments. enchantments will be sort of a "lost art". 

only runes will be allowed to be found. no enchanted books (you can read them which doesnt follow the lore)

gemstones can be found in:
* cut emerald : diorite
* cut diamond: gabbro
* cut amethyst: dolomite, claystone
* cut lapis: marble, limestone
* cut opal: quartzite
* cut pyrite: phyllite, basalt, andesite, dacite, rhyolite, shist, slate
* cut ruby: chert
* cut sapphire: chalk
* cut topaz:granite

To convert minecraft loot syntax of 
```
chest("food"), LootTable.lootTable()
                .withPool(LootPool.lootPool()
                        .name("food")
                        .setRolls(UniformGenerator.between(9, 11))
                        .add(LootItem.lootTableItem(Items.APPLE)
                                .setWeight(3)
                                .apply(SetItemCountFunction.setCount(UniformGenerator.between(1, 4))))
```
to zenscript, use the following:

First, get the number of items that will be in the chest. using the context.random, pass it to a function that will return the number. this function will take a lower and upper bound. use `((random.nextFloat() * (max - min)) + min) as int;`\

Second, for each roll, pass an associated list to a function that will choose one based on the weight thats associated with them. for example:

function({stone_stair : 2, stone_block : 1, stone_sword : 39}) as IItemStack -> stone_sword (most probable outcome)

this will make it so the stone sword has a probability of 39/42 being selected. Do this by accumulating the weights. this will be the bound. then call `random.nextInt(bound)` (this may be exclusive. if so add one to bound). if the number is 0, return stone block, if the number is 1 or 2, return stone stair, else return stone sword.

since we were pasing in this array for each roll we have, we can accumulate them into an array. make a new array in the lambda function, and return it. the pseudo code for all the above is

loot.modifiers.register("stage_1",
    LootConditions.only(LootTableIdLootCondition.create(<resource:dungeoncrawl:chests/stage_1>)),
    (drops, context) =>{
        var random = context.random;
        var rolls = Setup.getRolls(random, 6, 9);
        var list = new stdlib.List<IItemStack>(); // init empty array to size of rolls
        val assoArray = {
                <item:minecraft:stone> : 1,
                <item:minecraft:stone_sword> : 1}; // init loot table with weights
        for i in 0..rolls { //again, check if exclusive
                list.add(Setup.getWeightedItem(random, assoArray));
        }
        return list;}
);



setRolls(UniformGenerator.between(low,high) = calling 
setWeight() = addWithRandomChance(item % weight/total weight) =
SetItemCountFunction.setCount(UniformGenerator.between(low,high) = 

> probably by multiple chains
or like
CommonLootModifiers.addAllWithChance(<item:minecraft:honey_bottle> % 50, <item:minecraft:honey_bottle> % 13)
that would be two rolls for a honey bottle
alternatively, you can always do
(drops, ctx) => {
         drops.add(<item:minecraft:arrow> * 8);
         return drops;
     }
like
import crafttweaker.api.loot.condition.LootConditions;
import crafttweaker.api.loot.modifier.CommonLootModifiers;
crafttweaker.api.loot.condition.LootTableIdLootCondition;
loot.modifiers.register(
  "name",
  LootConditions.only(LootTableIdLootCondition.create("minecraft:chests/simple_dungeon")),
  (drops, ctx) => {
         drops.add(<item:minecraft:arrow> * 8);
         return drops;
     }
);
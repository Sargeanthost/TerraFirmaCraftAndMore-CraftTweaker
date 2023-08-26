// import crafttweaker.api.loot.condition.LootTableIdLootCondition;
// import crafttweaker.api.loot.condition.LootConditions;
// import crafttweaker.api.loot.modifier.CommonLootModifiers;
// import crafttweaker.api.util.random.Percentaged;
// import crafttweaker.api.util.math.Random;
// import crafttweaker.api.item.IItemStack;

// val quarters = [
//     new lootEntry(<item:tfc:food/red_apple>, 3, 1, 3),
//     new lootEntry(<item:tfc:food/strawberry>, 3, 1, 3),
//     new lootEntry(<item:tfc:food/plum>, 3, 1, 3),
//     new lootEntry(<item:tfc:food/maize_grain>, 3, 1, 3),
//     new lootEntry(<item:tfc:food/barley_grain>, 3, 1, 3),
//     new lootEntry(<item:tfc:food/chicken>, 2, 1, 3),
//     new lootEntry(<item:tfc:food/venison>, 2, 1, 3),
//     new lootEntry(<item:tfc:food/mutton>, 2, 1, 3),
//     new lootEntry(<item:tfc:firestarter>, 4, 1, 1),
//     new lootEntry(<item:tfc:straw>, 4, 2, 4),
//     new lootEntry(<item:tfc:small_scraped_hide>, 1, 1, 1),
//     new lootEntry(<item:tfc:medium_sheepskin_hide>, 1, 1, 1),
//     new lootEntry(<item:tfc:glue>, 2, 1, 2),
//     new lootEntry(<item:minecraft:stick>, 5, 2, 5)
// ];
// //found under stairs with no lore
// val coffin = [
//     new lootEntry(<item:minecraft:bone>, 2, 1, 3),
//     new lootEntry(<item:minecraft:stick>, 2, 1, 3),
//     new lootEntry(<item:minecraft:skeleton_skull>, 1, 1, 1)
// ];
// //cellar is not the food kinda cellar, lots of mobs
// val cellar = [
//     new lootEntry(<item:tfc:metal/rod/cast_iron>,3,1,1),
//     new lootEntry(<item:minecraft:stick>,5,2,5),
//     new lootEntry(<item:tfc:metal/axe_head/copper>,3,1,1),
//     new lootEntry(<item:tfc:metal/chisel_head/copper>,3,1,1),
//     new lootEntry(<item:tfc:metal/propick_head/copper>,3,1,1),
//     new lootEntry(<item:tfc:metal/rod/copper>,3,1,2),
//     new lootEntry(<item:tfc:metal/shovel_head/copper>,3,1,1),
//     new lootEntry(<item:tfc:metal/unfinished_chestplate/copper>,3,1,1),
//     new lootEntry(<item:tfc:metal/unfinished_helmet/copper>,3,1,1),
//     new lootEntry(<item:tfc:metal/javelin_head/copper>,3,1,1),
//     new lootEntry(<item:tfc:metal/lamp/copper>,3,1,1),
//     new lootEntry(<item:tfc:metal/chain/black_bronze>,3,1,1),
//     new lootEntry(<item:tfc:metal/rod/black_steel>,1,1,1),
// ];
// //sheilds and stone and maybe some medium grade tools
// val armory = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val spring = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val library = [
//     new lootEntry(<item:tfc:papyrus_strip>, 2, 1, 3),
//     new lootEntry(<item:tfc:unrefined_paper>, 2, 1, 3),
//     new lootEntry(<item:minecraft:paper>, 2, 1, 3),
//     new lootEntry(<item:minecraft:book>, 2, 1, 3),
//     new lootEntry(<item:minecraft:leather>, 2, 1, 3)
// ];
// val throne = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val bedroom = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val kitchen = [
//     new lootEntry(<item:firmalife:food/nightshade_berry>, 5, 1, 3),
//     new lootEntry(<item:firmalife:food/stinky_soup>, 5, 1, 3),
//     new lootEntry(<item:firmalife:food/toast>, 2, 1, 3),
//     new lootEntry(<item:firmalife:food/frothy_coconut>, 2, 1, 3),
//     new lootEntry(<item:firmalife:food/tofu>, 2, 1, 3),
//     new lootEntry(<item:firmalife:food/oat_flatbread>, 2, 1, 3),
//     new lootEntry(<item:firmalife:food/barley_flatbread>, 2, 1, 3),
//     new lootEntry(<item:firmalife:food/wheat_flatbread>, 2, 1, 3),
//     new lootEntry(<item:firmalife:food/gouda>, 2, 1, 3),
//     new lootEntry(<item:firmalife:food/chevre>, 2, 1, 3),
//     new lootEntry(<item:firmalife:food/cheddar>, 2, 1, 3),
//     new lootEntry(<item:firmalife:food/cocoa_beans>, 2, 1, 3),
//     new lootEntry(<item:firmalife:pumpkin_chunks_jar>, 2, 1, 1), 
//     new lootEntry(<item:firmalife:banana_jar>, 2, 1, 1),
//     new lootEntry(<item:firmalife:orange_jar>, 2, 1, 1),
//     new lootEntry(<item:firmalife:peach_jar>, 2, 1, 1)
// ];
// val prison = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val desertFloor = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val desertCoffin = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val witchTower = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val desertTomb = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val etMain = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val etElder = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val deepCrypt = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val ipGarden = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val ipBed = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val ipHall = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val ipArmory = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val ipFood = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val mmChurch = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val mmBrew = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val mmPrison = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val mmTreasure = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val largeDungeon = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val ruinedBuilding = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val ruinedHouse = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val watchTower = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val stables = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val mushroom = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val flyingDutchman = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val sunkenShrine = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val undeadTreasure = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];
// val hay = [
//     new lootEntry(<item:tfc:food/red_apple>, 2, 1, 3)
// ];

// var quartersW = 0;
// for entry in quarters {
//     quartersW += entry.weight;
// }
// var coffinW = 0;
// for entry in  coffin{
//     coffinW += entry.weight;
// }
// var cellarW = 0;
// for entry in cellar {
//     cellarW += entry.weight;
// }
// var armoryW = 0;
// for entry in armory {
//     armoryW += entry.weight;
// }
// var springW = 0;
// for entry in spring {
//     springW += entry.weight;
// }
// var libraryW = 0;
// for entry in library {
//     libraryW += entry.weight;
// }
// var throneW = 0;
// for entry in throne {
//     throneW += entry.weight;
// }
// var bedroomW = 0;
// for entry in bedroom {
//     bedroomW += entry.weight;
// }
// var kitchenW = 0;
// for entry in kitchen {
//     kitchenW += entry.weight;
// }
// var prisonW = 0;
// for entry in prison {
//     prisonW += entry.weight;
// }
// var desertFloorW = 0;
// for entry in desertFloor {
//     desertFloorW += entry.weight;
// }
// var desertCoffinW = 0;
// for entry in desertCoffin {
//     desertCoffinW += entry.weight;
// }
// var witchTowerW = 0;
// for entry in witchTower {
//     witchTowerW += entry.weight;
// }
// var desertTombW = 0;
// for entry in desertTomb {
//     desertTombW += entry.weight;
// }
// var etMainW = 0;
// for entry in etMain {
//     etMainW += entry.weight;
// }
// var etElderW = 0;
// for entry in etElder {
//     etElderW += entry.weight;
// }
// var deepCryptW = 0;
// for entry in deepCrypt {
//     deepCryptW += entry.weight;
// }
// var ipGardenW = 0;
// for entry in ipGarden {
//     ipGardenW += entry.weight;
// }
// var ipBedW = 0;
// for entry in ipBed {
//     ipBedW += entry.weight;
// }
// var ipHallW = 0;
// for entry in ipHall {
//     ipHallW += entry.weight;
// }
// var ipArmoryW = 0;
// for entry in ipArmory {
//     ipArmoryW += entry.weight;
// }
// var ipFoodW = 0;
// for entry in ipFood {
//     ipFoodW += entry.weight;
// }
// var mmChurchW = 0;
// for entry in mmChurch {
//     mmChurchW += entry.weight;
// }
// var mmBrewW = 0;
// for entry in mmBrew {
//     mmBrewW += entry.weight;
// }
// var mmPrisonW = 0;
// for entry in mmPrison {
//    mmPrisonW += entry.weight;
// }
// var mmTreasureW = 0;
// for entry in mmTreasure {
//     mmTreasureW += entry.weight;
// }
// var largeDungeonW = 0;
// for entry in largeDungeon {
//     largeDungeonW += entry.weight;
// }
// var ruinedBuildingW = 0;
// for entry in ruinedBuilding {
//     ruinedBuildingW += entry.weight;
// }
// var ruinedHouseW = 0;
// for entry in ruinedHouse {
//     ruinedHouseW += entry.weight;
// }
// var watchTowerW = 0;
// for entry in watchTower {
//     watchTowerW += entry.weight;
// }
// var stablesW = 0;
// for entry in stables {
//     stablesW += entry.weight;
// }
// var mushroomW = 0;
// for entry in mushroom {
//     mushroomW += entry.weight;
// }
// var flyingDutchmanW = 0;
// for entry in flyingDutchman {
//     flyingDutchmanW += entry.weight;
// }
// var sunkenShrineW = 0;
// for entry in sunkenShrine {
//     sunkenShrineW += entry.weight;
// }
// var undeadTreasureW = 0;
// for entry in undeadTreasure {
//    undeadTreasureW += entry.weight;
// }
// var hayW = 0;
// for entry in hay {
//     hayW += entry.weight;
// }

// loot.modifiers.register("quarters",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/castle/quarters>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, quarters, quartersW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("coffin",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/castle/coffin>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, coffin, coffinW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("cellar",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/castle/cellar>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, cellar, cellarW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("armory",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/castle/armory>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, armory, armoryW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("spring",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/castle/spring>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, spring, springW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("de_library",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/castle/library>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, library, libraryW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("throne",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/castle/throne>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, throne, throneW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("bedroom",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/castle/bedroom>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, bedroom, bedroomW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("kitchen",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/castle/kitchen>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, kitchen, kitchenW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("prison",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/castle/prison>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, prison, prisonW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("desert_temple_coffin",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:desert_temple_coffin>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, desertCoffin, desertCoffinW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("witch_tower",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/desert_tomb>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, witchTower, witchTowerW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("desert_tomb",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/desert_tomb>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, desertTomb, desertTombW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("et_main",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/elders_temple/main>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, etMain, etMainW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("et_elder_room",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/elders_temple/elder_room>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, etElder, etElderW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("deep_crypt",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/deep_crypt>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, deepCrypt, deepCryptW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("ice_pit_garden",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/ice_pit/garden>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, ipGarden, ipGardenW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("ice_pit_bed",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/ice_pit/bed>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, ipBed, ipBedW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("ice_pit_hall",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/ice_pit/hall>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, ipHall, ipHallW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("ice_pit_armory",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/ice_pit/armory>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, ipArmory, ipArmoryW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("ice_pit_food",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/ice_pit/food>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, ipFood, ipFoodW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("monster_maze_brewery",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/monster_maze/brewery>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, mmBrew, mmBrewW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("monster_maze_prison",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/monster_maze/prison>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, mmPrison, mmPrisonW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("monster_maze_treasure",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/monster_maze/treasure>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, mmTreasure, mmTreasureW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("monster_maze_church",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/monster_maze/church>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, mmChurch, mmChurchW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("large_dungeon",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/large_dungeon>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, largeDungeon, largeDungeonW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("ruined_house",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/ruined/house>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, ruinedHouse, ruinedHouseW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("ruined_building",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/ruined_building>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, ruinedBuilding, ruinedBuildingW));
//         }
//         return list;
//     }
// );

// loot.modifiers.register("watch_tower",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/watch_tower>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, watchTower, watchTowerW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("stables",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/stables>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, stables, stablesW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("mushroom_house",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/mushroom_house>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, mushroom, mushroomW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("flying_dutchman",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/flying_dutchman>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, flyingDutchman, flyingDutchmanW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("sunken_shrine",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/sunken_shrine>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, sunkenShrine, sunkenShrineW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("tower_of_the_undead_treasure",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/tower_of_the_undead_treasure>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, undeadTreasure, undeadTreasureW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("hay_storage",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:chests/hay_storage>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, hay, hayW));
//         }
//         return list;
//     }
// );
// loot.modifiers.register("desert_temple_floor",
//     LootConditions.only(LootTableIdLootCondition.create(<resource:dungeons_enhanced:desert_temple_floor>)),
//     (drops, context) => {
//         var random = context.random;
//         var list = new stdlib.List<IItemStack>();
//         for i in 0 .. lootEntry.getRolls(random, 6, 9) {
//             list.add(lootEntry.getWeightedItem(random, desertFloor, desertFloorW));
//         }
//         return list;
//     }
// );

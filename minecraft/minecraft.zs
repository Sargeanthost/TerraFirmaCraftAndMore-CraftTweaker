import crafttweaker.api.loot.modifier.CommonLootModifiers;

craftingTable.removeByName("minecraft:brown_concrete_powder");
craftingTable.removeByName("minecraft:orange_concrete_powder");
craftingTable.removeByName("minecraft:red_concrete_powder");
craftingTable.removeByName("minecraft:yellow_concrete_powder");
craftingTable.removeByName("minecraft:purple_concrete_powder");
craftingTable.removeByName("minecraft:white_concrete_powder");
craftingTable.removeByName("minecraft:green_concrete_powder");
craftingTable.removeByName("minecraft:light_blue_concrete_powder");
craftingTable.removeByName("minecraft:lime_concrete_powder");
craftingTable.removeByName("minecraft:pink_concrete_powder");
craftingTable.removeByName("minecraft:magenta_concrete_powder");
craftingTable.removeByName("minecraft:blue_concrete_powder");
craftingTable.removeByName("minecraft:black_concrete_powder");
craftingTable.removeByName("minecraft:gray_concrete_powder");
craftingTable.removeByName("minecraft:cyan_concrete_powder");
craftingTable.removeByName("minecraft:light_gray_concrete_powder");
craftingTable.removeByName("minecraft:piston");
craftingTable.removeByName("minecraft:hopper");
craftingTable.removeByName("minecraft:minecart");
craftingTable.remove(<item:minecraft:tnt>);
craftingTable.addShaped("tnt", <item:minecraft:tnt>, 
    [[<item:minecraft:gunpowder>,<tag:items:forge:sand>,<item:minecraft:gunpowder>],
    [<tag:items:forge:sand>,<item:minecraft:gunpowder>,<tag:items:forge:sand>],
    [<item:minecraft:gunpowder>,<tag:items:forge:sand>,<item:minecraft:gunpowder>]]);
<block:minecraft:glass>.addLootModifier("quark_shard", CommonLootModifiers.clearing(CommonLootModifiers.add(<item:quark:clear_shard>)));
//these disapeared from jei, not sure what happened


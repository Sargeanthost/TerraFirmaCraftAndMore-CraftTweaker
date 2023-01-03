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
craftingTable.removeByName("minecraft:crossbow");
craftingTable.remove(<item:minecraft:tnt>);
craftingTable.remove(<item:minecraft:iron_bars>);
craftingTable.remove(<item:minecraft:bundle>);
craftingTable.remove(<item:minecraft:fishing_rod>);
craftingTable.addShaped("bundle", <item:minecraft:bundle>,[[Setup.stringTag, <item:tfc:burlap_cloth>, Setup.stringTag],[<item:tfc:burlap_cloth>, Setup.air, <item:tfc:burlap_cloth>],[<item:tfc:burlap_cloth>,<item:tfc:burlap_cloth>,<item:tfc:burlap_cloth>]]);
craftingTable.addShaped("tnt", <item:minecraft:tnt>, 
    [[<item:minecraft:gunpowder>,<tag:items:forge:sand>,<item:minecraft:gunpowder>],
    [<tag:items:forge:sand>,<item:minecraft:gunpowder>,<tag:items:forge:sand>],
    [<item:minecraft:gunpowder>,<tag:items:forge:sand>,<item:minecraft:gunpowder>]]);
craftingTable.addShaped("iron_bars", <item:minecraft:iron_bars> * 22, 
    [[<item:tfc:metal/rod/wrought_iron>,<item:tfc:metal/sheet/wrought_iron>,<item:tfc:metal/rod/wrought_iron>],
    [<item:tfc:metal/rod/wrought_iron>,<item:tfc:metal/sheet/wrought_iron>,<item:tfc:metal/rod/wrought_iron>]]);
<block:minecraft:glass>.addLootModifier("quark_shard", CommonLootModifiers.clearing(CommonLootModifiers.add(<item:quark:clear_shard> * 3)));



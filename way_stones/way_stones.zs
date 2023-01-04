craftingTable.remove(<item:waystones:warp_stone>);
craftingTable.remove(<item:waystones:waystone>);
craftingTable.remove(<item:waystones:sharestone>);
craftingTable.remove(<item:waystones:sandy_waystone>);
craftingTable.remove(<item:waystones:mossy_waystone>);
craftingTable.remove(<item:waystones:warp_plate>);
craftingTable.addShaped("warp_stone", <item:waystones:warp_stone>, 
    [[<item:minecraft:purple_dye>, <item:minecraft:ender_pearl>,<item:minecraft:purple_dye>],
    [<item:minecraft:ender_pearl>, <item:tfc:gem/emerald>, <item:minecraft:ender_pearl>],
    [<item:minecraft:purple_dye>, <item:minecraft:ender_pearl>,<item:minecraft:purple_dye>]]);
craftingTable.addShaped("warp_plate", <item:waystones:warp_plate>, 
    [[Setup.normalStoneBricksTag, <item:waystones:warp_dust>,Setup.normalStoneBricksTag],
    [<item:waystones:warp_dust>, <item:minecraft:flint>, <item:waystones:warp_dust>],
    [Setup.normalStoneBricksTag, <item:waystones:warp_dust>,Setup.normalStoneBricksTag]]);
craftingTable.addShaped("waystone", <item:waystones:waystone>, 
    [[Setup.air, Setup.normalStoneBricksTag,Setup.air],
    [Setup.normalStoneBricksTag, <item:waystones:warp_stone>, Setup.normalStoneBricksTag],
    [<item:minecraft:obsidian>,<item:minecraft:obsidian>,<item:minecraft:obsidian>]]);
craftingTable.addShaped("sharestone", <item:waystones:sharestone>, 
    [[Setup.normalStoneBricksTag, Setup.normalStoneBricksTag,Setup.normalStoneBricksTag],
    [Setup.air, <item:waystones:warp_stone>, Setup.normalStoneBricksTag],
    [<item:minecraft:obsidian>,<item:minecraft:obsidian>,<item:minecraft:obsidian>]]);
craftingTable.addShaped("mossy_waystone_direct", <item:waystones:mossy_waystone>, 
    [[Setup.air, Setup.mossyStoneBricksTag,Setup.air],
    [Setup.mossyStoneBricksTag, <item:waystones:warp_stone>, Setup.mossyStoneBricksTag],
    [<item:minecraft:obsidian>,<item:minecraft:obsidian>,<item:minecraft:obsidian>]]);
craftingTable.addShaped("sandy_waystone", <item:waystones:sandy_waystone>, 
    [[Setup.air, Setup.sandstoneTag,Setup.air],
    [Setup.sandstoneTag, <item:waystones:warp_stone>, Setup.sandstoneTag],
    [<item:minecraft:obsidian>,<item:minecraft:obsidian>,<item:minecraft:obsidian>]]);
craftingTable.addShaped("mossy_waystone", <item:waystones:mossy_waystone>, 
    [[<item:waystones:waystone>,Setup.vinesTag],
    [Setup.vinesTag, Setup.vinesTag]]);

craftingTable.remove(<item:waystones:warp_stone>);
craftingTable.remove(<item:waystones:waystone>);
craftingTable.remove(<item:waystones:warp_plate>);
craftingTable.addShaped("warp_stone", <item:waystones:warp_stone>, 
    [[<item:minecraft:purple_dye>, <item:minecraft:ender_pearl>,<item:minecraft:purple_dye>],
    [<item:minecraft:ender_pearl>, <item:tfc:gem/emerald>, <item:minecraft:ender_pearl>],
    [<item:minecraft:purple_dye>, <item:minecraft:ender_pearl>,<item:minecraft:purple_dye>]]);
craftingTable.addShaped("warp_plate", <item:waystones:warp_plate>, 
    [[<tag:items:forge:stone_bricks>, <item:waystones:warp_dust>,<tag:items:forge:stone_bricks>],
    [<item:waystones:warp_dust>, <item:minecraft:flint>, <item:waystones:warp_dust>],
    [<tag:items:forge:stone_bricks>, <item:waystones:warp_dust>,<tag:items:forge:stone_bricks>]]);
craftingTable.addShaped("waystone", <item:waystones:waystone>, 
    [[Setup.air ,<tag:items:forge:stone_bricks>,Setup.air],
    [<tag:items:forge:stone_bricks>, <item:waystones:warp_stone>, <tag:items:forge:stone_bricks>],
    [<item:minecraft:obsidian>,<item:minecraft:obsidian>,<item:minecraft:obsidian>]]);
craftingTable.addShaped("mossy_waystone", <item:waystones:mossy_waystone>, 
    [[<item:waystones:waystone>,<item:tfc:plant/hanging_vines>,Setup.air],
    [<item:tfc:plant/hanging_vines>, <item:tfc:plant/hanging_vines>, Setup.air]]);

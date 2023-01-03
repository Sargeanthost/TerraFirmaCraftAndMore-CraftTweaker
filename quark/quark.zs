import crafttweaker.api.recipe.Replacer;
//https://docs.blamejared.com/1.18/en/vanilla/api/loot/modifier/LootModifierManager
<tag:items:quark:seed_pouch_holdable>.add(<tag:items:tfc:seeds>);
craftingTable.remove(<item:quark:bonded_rabbit_hide>);
craftingTable.remove(<item:quark:seed_pouch>);
craftingTable.remove(<item:quark:golden_apple_crate>);
craftingTable.remove(<item:quark:apple_crate>);
craftingTable.remove(<item:quark:potato_crate>);
craftingTable.remove(<item:quark:carrot_crate>);
craftingTable.remove(<item:quark:beetroot_crate>);
craftingTable.remove(<item:quark:trowel>);
craftingTable.remove(<item:quark:iron_ladder>);
craftingTable.remove(<item:quark:iron_rod>);
craftingTable.remove(<item:quark:iron_button>);
craftingTable.remove(<item:quark:gold_button>);
craftingTable.remove(<item:quark:abacus>);
craftingTable.remove(<item:quark:framed_glass>);
craftingTable.remove(<item:quark:gold_bars>);
craftingTable.addShapeless("quark_iron_button", <item:quark:iron_button> *2, [<tag:items:minecraft:wooden_buttons>, <item:tfc:metal/sheet/wrought_iron>]);
craftingTable.addShapeless("quark_gold_button", <item:quark:gold_button> *2, [<tag:items:minecraft:wooden_buttons>, <item:tfc:metal/sheet/gold>]);
craftingTable.addShaped("seed_pouch",<item:quark:seed_pouch>,
    [[Setup.air, Setup.stringTag, Setup.air],
    [<item:tfc:burlap_cloth>,<tag:items:quark:seed_pouch_holdable>, <item:tfc:burlap_cloth>],
    [Setup.air,<item:tfc:burlap_cloth>,Setup.air]]);
    //add steel variant
craftingTable.addShaped("iron_ladder",<item:quark:iron_ladder> * 3,
    [[<item:minecraft:iron_nugget>, Setup.air, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>,<item:tfc:metal/rod/wrought_iron>, <item:minecraft:iron_nugget>],
    [<item:minecraft:iron_nugget>, Setup.air,<item:minecraft:iron_nugget>]]);
craftingTable.addShaped("abacus",<item:quark:abacus>,
    [[<tag:items:tfc:lumber>, <tag:items:forge:rods/wooden>, <tag:items:tfc:lumber>],
    [<tag:items:tfc:lumber>,<tag:items:tfc:pileable_ingots>, <tag:items:tfc:lumber>],
    [<tag:items:tfc:lumber>, <tag:items:forge:rods/wooden>,<tag:items:tfc:lumber>]]);
craftingTable.addShaped("framed_glass",<item:quark:framed_glass> * 5,
    [[<item:minecraft:glass>, <item:tfc:metal/rod/wrought_iron>, <item:minecraft:glass>],
    [<item:tfc:metal/rod/wrought_iron>,<item:minecraft:glass>, <item:tfc:metal/rod/wrought_iron>],
    [<item:minecraft:glass>, <item:tfc:metal/rod/wrought_iron>,<item:minecraft:glass>]]);
    craftingTable.addShaped("gold_bars", <item:quark:gold_bars> * 22, 
    [[<item:tfc:metal/rod/gold>,<item:tfc:metal/sheet/gold>,<item:tfc:metal/rod/gold>],
    [<item:tfc:metal/rod/gold>,<item:tfc:metal/sheet/gold>,<item:tfc:metal/rod/gold>]]);
craftingTable.addShaped("trowel", <item:quark:trowel>, [[<tag:items:forge:rods/wooden>, Setup.air],[Setup.air, <item:tfc:metal/sheet/wrought_iron>]]);
craftingTable.addShaped("quark_iron_rod", <item:quark:iron_rod> * 2, [[<item:tfc:metal/rod/wrought_iron>],[<item:tfc:metal/rod/wrought_iron>],[<item:tfc:metal/sheet/wrought_iron>]]);

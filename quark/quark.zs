//https://docs.blamejared.com/1.18/en/vanilla/api/loot/modifier/LootModifierManager
//adjust loot from quark dungeons
<tag:items:quark:seed_pouch_holdable>.add(<tag:items:tfc:seeds>);
craftingTable.remove(<item:quark:bonded_rabbit_hide>);
craftingTable.remove(<item:quark:seed_pouch>);
craftingTable.remove(<item:quark:golden_apple_crate>);
craftingTable.remove(<item:quark:apple_crate>);
craftingTable.remove(<item:quark:potato_crate>);
craftingTable.remove(<item:quark:carrot_crate>);
craftingTable.remove(<item:quark:beetroot_crate>);
craftingTable.addShaped("seed_pouch",<item:quark:seed_pouch>,
    [[Setup.air, Setup.stringTag, Setup.air],
    [<item:tfc:burlap_cloth>,<tag:items:quark:seed_pouch_holdable>,
    <item:tfc:burlap_cloth>],[Setup.air,<item:tfc:burlap_cloth>,Setup.air]]);

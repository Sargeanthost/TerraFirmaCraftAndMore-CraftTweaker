
import crafttweaker.api.ingredient.IIngredient;
import mods.jei.JEI;
//delete tfc's shard, keep this shard
// for shard in <tag:items:quark:shards>{
//     JEI.hideIngredient(shard.getDefaultInstance());
// }
//https://docs.blamejared.com/1.18/en/vanilla/api/loot/modifier/LootModifierManager
//add seeds to quark seedpouch holdable
<tag:items:quark:seed_pouch_holdable>.add(<tag:items:tfc:seeds>);
craftingTable.remove(<item:quark:bonded_rabbit_hide>);
craftingTable.remove(<item:quark:seed_pouch>);
craftingTable.addShaped("seed_pouch",<item:quark:seed_pouch>,
[[Setup.air, Setup.stringTag, Setup.air],[<item:tfc:burlap_cloth>,<tag:items:quark:seed_pouch_holdable>,<item:tfc:burlap_cloth>],[Setup.air,<item:tfc:burlap_cloth>,Setup.air]]);

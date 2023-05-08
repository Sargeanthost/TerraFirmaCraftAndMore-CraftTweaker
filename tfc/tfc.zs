//waiting for TFCTweaker to make a bin: https://github.com/Mrthomas20121-Mods/tfctweaker/tree/1.18
val heating = <recipetype:tfc:heating>;
val clay = <recipetype:tfc:clay_knapping>;
craftingTable.addShapeless("gold_nugget", <item:minecraft:gold_nugget> * 9, [<item:tfc:metal/ingot/gold>, <tag:items:tfc:chisels>.asIIngredient().transformDamage()]);
craftingTable.addShapeless("iron_nugget", <item:minecraft:iron_nugget> * 9, [<item:tfc:metal/ingot/wrought_iron>, <tag:items:tfc:chisels>.asIIngredient().transformDamage()]);
<tag:items:tfc:usable_on_tool_rack>.add(<item:quark:trowel>,<item:minecraft:shield>,<item:tfc:pan/empty>);
// heating.addJsonRecipe("test", {
//   "type": "tfc:heating",
//   "ingredient": {
//     "item": "tfc:clay/loam"
//   },
//   "result_item": {
//     "item": "tfc:metal/ingot/cast_iron"
//   },
//   "temperature": 100
// });
// clay.addJsonRecipe("ok", 
//     {
//     "type": "tfc:clay_knapping",
//     "outside_slot_required": true,
//     "pattern": [
//         " XXXX",
//         "XXXXX",
//         "XXXXX",
//         "XXXXX"
//       ],
//     "result": {
//         "item": "tfc:ceramic/unfired_pickaxe_head_mold"
//     }
// }); 
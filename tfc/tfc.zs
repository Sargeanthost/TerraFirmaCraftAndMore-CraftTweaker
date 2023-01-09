//waiting for TFCTweaker to make a bin: https://github.com/Mrthomas20121-Mods/tfctweaker/tree/1.18
val heating = <recipetype:tfc:heating>;

craftingTable.addShapeless("gold_nugget", <item:minecraft:gold_nugget> * 9, [<item:tfc:metal/ingot/gold>, <tag:items:tfc:chisels>.asIIngredient().transformDamage()]);
craftingTable.addShapeless("iron_nugget", <item:minecraft:iron_nugget> * 9, [<item:tfc:metal/ingot/wrought_iron>, <tag:items:tfc:chisels>.asIIngredient().transformDamage()]);
<tag:items:tfc:usable_on_tool_rack>.add(<item:quark:trowel>,<item:minecraft:shield>,<item:tfc:pan/empty>);
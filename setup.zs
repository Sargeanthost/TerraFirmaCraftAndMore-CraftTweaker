#loadfirst
craftingTable.removeByModid("backpacked");
craftingTable.removeByModid("weather2");
public class Setup{

    public static val lumberReplacements = {
        "jungle":<item:tfc:wood/lumber/palm>,
        "crimson":<item:tfc:wood/lumber/kapok>,
        "dark_oak":<item:tfc:wood/lumber/blackwood>,
        "warped":<item:tfc:wood/lumber/willow>
    };
    public static val air = <item:minecraft:air>;

    public static val ironVariantsTag = <tag:items:tfcam:ingots/iron_variants>;
    public static val goldVariantsTag = <tag:items:tfcam:ingots/gold_variants>;
    public static val stringTag = <tag:items:forge:string>;
}
Setup.ironVariantsTag.add(<item:tfc:metal/ingot/pig_iron>,<item:tfc:metal/ingot/cast_iron>,<item:tfc:metal/ingot/wrought_iron>,<item:minecraft:iron_ingot>);
Setup.goldVariantsTag.add(<item:tfc:metal/ingot/rose_gold>,<item:tfc:metal/ingot/gold>,<item:minecraft:gold_ingot>);
Setup.stringTag.add(<item:tfc:jute_fiber>);
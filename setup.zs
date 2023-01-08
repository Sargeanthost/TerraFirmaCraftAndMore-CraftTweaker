#loadfirst
import crafttweaker.api.recipe.Replacer;
import crafttweaker.api.util.math.Random;
import crafttweaker.api.item.IItemStack;

// var myRand = new Random.nextFloat();
public class Setup{
    public static val lumberReplacements = {
        "jungle":<item:tfc:wood/lumber/palm>,
        "crimson":<item:tfc:wood/lumber/kapok>,
        "dark_oak":<item:tfc:wood/lumber/blackwood>,
        "warped":<item:tfc:wood/lumber/willow>
    };

    public static getRolls(random as Random, min as int, max as int) as int {
        println("getrolls");
        var rolls = ((random.nextFloat() * (max - min)) + min) as int;
        return rolls;
    }

//https://www.youtube.com/watch?v=MGTQWV1VfWk
    public static getWeightedItem(random as Random, arr as lootEntry[]) as IItemStack{
        println("getweighted");
        var sum = 0;
        var amount = 1;
        var selection = <item:minecraft:air>;

        for lootentry in arr{
            sum += lootentry.weight;
        }

        var rand = random.nextInt(sum);
        
        for lootentry in arr{
            if (rand < lootentry.weight) {
                selection = lootentry.item;
                amount = getRolls(random, lootentry.min, lootentry.max);
                break;
            }
            rand -= lootentry.weight;
        }
        return selection * amount;
    }

    public static val toRemove = [<item:minecraft:stone_sword>, <item:minecraft:stone_hoe>, <item:minecraft:stone_shovel>, <item:minecraft:stone_axe>,<item:minecraft:stone_pickaxe>];
    public static val air = <item:minecraft:air>;

    public static val ironVariantsTag = <tag:items:crafttweaker:ingots/iron_variants>;
    public static val goldVariantsTag = <tag:items:crafttweaker:ingots/gold_variants>;
    public static val stringTag = <tag:items:forge:string>;
    public static val vinesTag = <tag:items:crafttweaker:vines>;
    public static val normalStoneBricksTag = <tag:items:crafttweaker:stone_bricks/normal>;
    public static val mossyStoneBricksTag = <tag:items:tfc:mossy_stone_bricks>;
    public static val sandstoneTag = <tag:items:crafttweaker:sandstone>;//all sandstone types, so making new tag instead of adding to forge

}
Setup.ironVariantsTag.add(<item:tfc:metal/ingot/pig_iron>,<item:tfc:metal/ingot/cast_iron>,<item:tfc:metal/ingot/wrought_iron>,<item:minecraft:iron_ingot>);
Setup.goldVariantsTag.add(<item:tfc:metal/ingot/rose_gold>,<item:tfc:metal/ingot/gold>,<item:minecraft:gold_ingot>);
Setup.stringTag.add(<item:tfc:jute_fiber>);
Setup.vinesTag.add(<item:tfc:plant/jungle_vines>,<item:tfc:plant/hanging_vines>,<item:minecraft:vine>, <item:tfc:plant/liana>, <item:tfc:plant/spanish_moss>);
Setup.mossyStoneBricksTag.add(<item:minecraft:mossy_stone_bricks>);
Setup.normalStoneBricksTag.add(<item:minecraft:stone_bricks>,<item:minecraft:chiseled_stone_bricks>);
Setup.sandstoneTag.add(<tag:items:forge:sandstone>);
Setup.sandstoneTag.add(<item:quark:sandstone_bricks>,<item:quark:red_sandstone_bricks>,<item:tfc:smooth_sandstone/white>,<item:quark:chiseled_soul_sandstone>, 
<item:quark:cut_soul_sandstone>,<item:quark:smooth_soul_sandstone>,<item:tfc:raw_sandstone/brown>,<item:tfc:smooth_sandstone/brown>,<item:tfc:cut_sandstone/brown>,<item:tfc:raw_sandstone/white>,
<item:tfc:cut_sandstone/white>,<item:tfc:raw_sandstone/green>,<item:tfc:smooth_sandstone/green>,<item:tfc:cut_sandstone/green>,<item:tfc:raw_sandstone/pink>,<item:tfc:smooth_sandstone/pink>,
<item:tfc:cut_sandstone/pink>,<item:tfc:raw_sandstone/yellow>,<item:tfc:cut_sandstone/yellow>,<item:tfc:smooth_sandstone/yellow>,<item:tfc:cut_sandstone/red>,<item:tfc:smooth_sandstone/red>,
<item:tfc:raw_sandstone/red>,<item:tfc:cut_sandstone/black>,<item:tfc:smooth_sandstone/black>,<item:tfc:raw_sandstone/black>);

for item in Setup.toRemove{
    craftingTable.remove(item);
}
for brick in <tag:items:forge:stone_bricks>{
    if (!(brick in Setup.mossyStoneBricksTag)){
        Setup.normalStoneBricksTag.add(brick);
    } 
}
Replacer.forMods("ironchest").replace(<item:minecraft:iron_ingot>, Setup.ironVariantsTag).suppressWarnings().execute();

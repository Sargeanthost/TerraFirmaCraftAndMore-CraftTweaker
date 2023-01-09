import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.Random;

public class lootEntry {
    
    public var item as IItemStack : get;
    public var weight as int : get;
    public var min as int : get;
    public var max as int : get;
    
    public this(item as IItemStack, weight as int, min as int, max as int) {
        this.item = item;
        this.weight = weight;
        this.min = min; 
        this.max = max; 
    }

    public static getRolls(random as Random, min as int, max as int) as int {
        var rolls = ((random.nextFloat() * (max - min)) + min) as int;
        return rolls;
    }

    public static getWeightedItem(random as Random, arr as lootEntry[], sum as int) as IItemStack{
        var amount = 1;
        var selection = <item:minecraft:air>;

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
}
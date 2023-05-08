import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.math.Random;

public class lootEntry {
    
    public var item as IItemStack : get;
    public var weight as int : get;
    public var min as int : get;
    public var max as int : get;
    
    public this(item as IItemStack, weight as int, minAmt as int, maxAmt as int) {
        this.item = item;
        this.weight = weight;
        this.min = minAmt; 
        this.max = maxAmt; 
    }

    public static getRolls(random as Random, min as int, max as int) as int {
        var rolls = ((random.nextFloat() * (max - min)) + min) as int;
        return rolls;
    }

    public static getWeightedItem(random as Random, arr as lootEntry[], weightstot as int) as IItemStack{
        var amount = 1;
        var selection = <item:minecraft:air>;
        var rand = random.nextInt(weightstot);
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
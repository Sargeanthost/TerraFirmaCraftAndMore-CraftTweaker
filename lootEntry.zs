import crafttweaker.api.item.IItemStack;

public class lootEntry {
    
    public var item as IItemStack : get;
    public var weight as int : get;
    public var minCount as int : get;
    public var maxCount as int : get;
    
    public this(item as IItemStack, weight as int, minCount as int, maxCount as int) {
        this.item = item;
        this.weight = weight;
        this.minCount = minCount; 
        this.maxCount = maxCount; 
    }

}
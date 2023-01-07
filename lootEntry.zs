import crafttweaker.api.item.IItemStack;

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
}
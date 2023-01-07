import crafttweaker.api.item.IItemStack;

public class weightedIItemStack {
    
    public var item as IItemStack : get;
    public var weight as int : get;
    
    public this(item as IItemStack, weight as int) {
        this.item = item;
        this.weight = weight;
    }

}
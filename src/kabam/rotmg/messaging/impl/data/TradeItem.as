package kabam.rotmg.messaging.impl.data {
import flash.utils.IDataInput;

public class TradeItem {


    public function TradeItem() {
        super();
    }
    public var item_:int;
    public var slotType_:int;
    public var tradeable_:Boolean;
    public var included_:Boolean;

    public function parseFromInput(data:IDataInput):void {
        this.item_ = data.readInt();
        this.slotType_ = data.readInt();
        this.tradeable_ = data.readBoolean();
        this.included_ = data.readBoolean();
    }

    public function toString():String {
        return "item: " + this.item_ + " slotType: " + this.slotType_ + " tradeable: " + this.tradeable_ + " included:" + this.included_;
    }
}
}

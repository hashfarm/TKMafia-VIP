package kabam.rotmg.messaging.impl.outgoing {
import flash.utils.IDataOutput;

public class UpgradeStat extends OutgoingMessage {


    public function UpgradeStat(_arg1:uint, _arg2:Function) {
        super(_arg1, _arg2);
    }

    override public function writeToOutput(_arg1:IDataOutput):void {
    }

    override public function toString():String {
        return formatToString("UPGRADESTAT");
    }
}
}

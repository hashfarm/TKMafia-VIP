package kabam.lib.net.impl {
import kabam.lib.net.api.MessageHandlerProxy;

public class MethodHandlerProxy implements MessageHandlerProxy {


    public function MethodHandlerProxy() {
        super();
    }
    private var method:Function;

    public function setMethod(method:Function):MethodHandlerProxy {
        this.method = method;
        return this;
    }

    public function getMethod():Function {
        return this.method;
    }
}
}

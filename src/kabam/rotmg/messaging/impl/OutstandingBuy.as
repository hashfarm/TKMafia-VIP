package kabam.rotmg.messaging.impl {
class OutstandingBuy {


    function OutstandingBuy(id:String, price:int, currency:int) {
        super();
        this.id_ = id;
        this.price_ = price;
        this.currency_ = currency;
    }
    private var id_:String;
    private var price_:int;
    private var currency_:int;
}
}

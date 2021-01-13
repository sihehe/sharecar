package cn.hehe.share.api.enums;


public enum OrderStatus {

    //(N-待支付 Y-已支付 C-作废)
    N("N","待支付"),
    Y("Y","已支付"),
    C("C","作废")
    ;

    private String code;

    private String msg;

    OrderStatus(String code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public static  String getValue(String code){
        OrderStatus[] values = OrderStatus.values();
        for (OrderStatus orderStatus : values) {
            String code1 = orderStatus.getCode();
            if(code.equals(code1)){
                return orderStatus.getMsg();
            }
        }
        return null;
    }


    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}

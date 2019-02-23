package cn.springmvcmybatis.util;

public class ResultMap {
    private String msg;
    private Integer code;
    private Object data;

    public static ResultMap okData(Object data){
        return new ResultMap("成功",200,data);
    }

    public static ResultMap ok(){
        return new ResultMap("成功",200,null);
    }

    public static ResultMap fail(){
        return new ResultMap("失败，滚蛋",500,null);
    }

    @Override
    public String toString() {
        return "ResultMap{" +
                "msg='" + msg + '\'' +
                ", code=" + code +
                ", data='" + data + '\'' +
                '}';
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public ResultMap() {
    }

    public ResultMap(String msg, Integer code) {
        this.msg = msg;
        this.code = code;
    }

    public ResultMap(String msg, Integer code, Object data) {
        this.msg = msg;
        this.code = code;
        this.data = data;
    }
}

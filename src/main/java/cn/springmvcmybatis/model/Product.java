package cn.springmvcmybatis.model;

public class Product {
    private Integer produceId;
    private String pdoruceName;
    private Integer producePrice;
    private String produceDescription;

    @Override
    public String toString() {
        return "Product{" +
                "produceId=" + produceId +
                ", pdoruceName='" + pdoruceName + '\'' +
                ", producePrice=" + producePrice +
                ", produceDescription='" + produceDescription + '\'' +
                '}';
    }

    public Integer getProduceId() {
        return produceId;
    }

    public void setProduceId(Integer produceId) {
        this.produceId = produceId;
    }

    public String getPdoruceName() {
        return pdoruceName;
    }

    public void setPdoruceName(String pdoruceName) {
        this.pdoruceName = pdoruceName;
    }

    public Integer getProducePrice() {
        return producePrice;
    }

    public void setProducePrice(Integer producePrice) {
        this.producePrice = producePrice;
    }

    public String getProduceDescription() {
        return produceDescription;
    }

    public void setProduceDescription(String produceDescription) {
        this.produceDescription = produceDescription;
    }

    public Product(Integer produceId, String pdoruceName, Integer producePrice, String produceDescription) {
        this.produceId = produceId;
        this.pdoruceName = pdoruceName;
        this.producePrice = producePrice;
        this.produceDescription = produceDescription;
    }

    public Product() {
    }
}

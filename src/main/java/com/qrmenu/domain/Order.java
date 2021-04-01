package com.qrmenu.domain;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Entity
@Table(name="order")
public class Order implements Serializable {

    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private long id;

    @Column (name = "totalPrice")
    private float totalPrice;

    @Size(min = 3 , max = 256)
    @Column (name = "paymentMethod", length = 256)
    private String paymentMethod;

    @Size(min = 3 , max = 256)
    @Column (name = "consumptionWay" , length = 256)
    private String consumptionWay;

    @Size(min = 3 , max = 256)
    @Column (name = "state" , length = 256)
    private String state;

    public Order() {
    }

    public Order(long id, float totalPrice, @Size(min = 3, max = 256) String paymentMethod, @Size(min = 3, max = 256) String consumptionWay, @Size(min = 3, max = 256) String state) {
        this.id = id;
        this.totalPrice = totalPrice;
        this.paymentMethod = paymentMethod;
        this.consumptionWay = consumptionWay;
        this.state = state;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public float getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getConsumptionWay() {
        return consumptionWay;
    }

    public void setConsumptionWay(String consumptionWay) {
        this.consumptionWay = consumptionWay;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public String toString() {
        return "Order{" +
            "id=" + id +
            ", totalPrice=" + totalPrice +
            ", paymentMethod='" + paymentMethod + '\'' +
            ", consumptionWay='" + consumptionWay + '\'' +
            ", state='" + state + '\'' +
            '}';
    }
}

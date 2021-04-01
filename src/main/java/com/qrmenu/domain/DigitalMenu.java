package com.qrmenu.domain;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


@Entity
@Table(name = "digital_menu")
public class DigitalMenu extends Menu implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToMany(mappedBy = "digitalMenu")
    @JsonIgnoreProperties(value = { "digitalMenu"}, allowSetters = true)
    private List<Product> products = new ArrayList<>();


    public DigitalMenu() {
    }

    public List<Product> getProduct() {
        return products;
    }

    public void setProduct(List<Product> product) {
        this.products = product;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "DigitalMenu{" +

            ", product='" + products + '\'' +

            '}';
    }
}

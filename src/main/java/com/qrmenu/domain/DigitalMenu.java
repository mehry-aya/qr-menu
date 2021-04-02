package com.qrmenu.domain;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import javax.persistence.*;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.List;


@Entity
@Table(name = "digital_menu")
public class DigitalMenu extends Menu implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToMany(mappedBy = "digitalMenu", fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
    @JsonManagedReference
    private List<Product> products ;


    public DigitalMenu() {
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
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
            "id=" + id +
            ", products=" + products +
            '}';
    }
}

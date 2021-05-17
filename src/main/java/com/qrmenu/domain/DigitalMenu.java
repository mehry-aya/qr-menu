package com.qrmenu.domain;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.List;


@Entity
@Table(name = "digital_menu")
public class DigitalMenu extends Menu implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Size(min = 3, max = 256)
    @Column(name = "category", length = 256)
    private String category;


    @OneToMany(mappedBy = "digitalMenu", fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
    @JsonManagedReference
    private List<Product> products;


    public DigitalMenu() {
    }

    public DigitalMenu(@Size(min = 3, max = 256) String category) {
        this.category = category;
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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }


    @Override
    public String toString() {
        return "DigitalMenu{" +
            "id=" + id +
            ", category='" + category + '\'' +
            ", products=" + products +
            '}';
    }
}

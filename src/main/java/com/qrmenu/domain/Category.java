package com.qrmenu.domain;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.List;

@Entity
@Table(name= "category")
public class Category implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "level")
    private Long level;

    @Size(min=3, max= 256)
    @Column(name = "name", length = 256)
    private String name;

    @ManyToOne
    @JsonBackReference
    private DigitalMenu digitalMenu;


   @OneToMany(mappedBy = "category", fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
    @JsonManagedReference
    private List<Product> products;

    public Category(Long id, Long level,String name, DigitalMenu digitalMenu, List<Product> products) {
        this.id = id;
        this.level = level;
         this.digitalMenu = digitalMenu;
         this.products = products;
        this.name = name;
    }

    public Category() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


   public DigitalMenu getDigitalMenu() {
        return digitalMenu;
    }

    public void setDigitalMenu(DigitalMenu digitalMenu) {
        this.digitalMenu = digitalMenu;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getLevel() {
        return level;
    }

    public void setLevel(Long level) {
        this.level = level;
    }
}

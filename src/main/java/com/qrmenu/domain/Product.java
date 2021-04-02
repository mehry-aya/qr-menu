package com.qrmenu.domain;


import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Entity
@Table(name= "product")
public class Product implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Size (min= 1, max= 256)
    @Column(name = "name", length = 256)
    private String name;

    @Column(name = "price")
    private float price;

    @Size (min= 1, max= 256)
    @Column(name = "description", length = 512)
    private String description;

    @Size (min= 1, max= 256)
    @Column(name = "image", length = 256)
    private String image;

    @ManyToOne
    @JsonBackReference
    private DigitalMenu digitalMenu;


    public Product() {
    }

    public Product(long id, @Size(min = 1, max = 256) String name, float price, @Size(min = 1, max = 256) String description, @Size(min = 1, max = 256) String image) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.image = image;
    }

    public DigitalMenu getDigitalMenu() {
        return digitalMenu;
    }

    public void setDigitalMenu(DigitalMenu digitalMenu) {
        this.digitalMenu = digitalMenu;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Product{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", price=" + price +
            ", description='" + description + '\'' +
            ", image='" + image + '\'' +
            '}';
    }
}

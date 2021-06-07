package com.qrmenu.domain;


import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Entity
@Table(name= "product")
public class  Product implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "level")
    private Long level;

    @Size (min= 1, max= 256)
    @Column(name = "name", length = 256)
    private String name;

    @Column(name = "price")
    private float price;

    @Size (min= 1, max= 256)
    @Column(name = "description", length = 512)
    private String description;


    @Column(name = "rating")
    private Long rating;

    @ManyToOne
    @JsonBackReference
    private Category category;

    @OneToOne
    @JoinColumn(name = "uploadedFile_id" , referencedColumnName = "id")
    private UploadedFile image;

    public Product() {
    }

    public Product(Long id, @Size(min = 1, max = 256) String name, float price, @Size(min = 1, max = 256) String description,
                   Long rating, UploadedFile image, Long level, Category category ) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
        this.rating= rating;
        this.image = image;
        this.category = category;
        this.level = level;
    }

    public UploadedFile getImage() {
        return image;
    }

    public void setImage(UploadedFile uploadedFile) {
        this.image = uploadedFile;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public Long getRating() {
        return rating;
    }

    public void setRating(Long rating) {
        this.rating = rating;
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

    public Long getLevel() {
        return level;
    }

    public void setLevel(Long level) {
        this.level = level;
    }
}

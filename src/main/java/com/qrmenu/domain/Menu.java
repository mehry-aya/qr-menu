package com.qrmenu.domain;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.io.Serializable;

@MappedSuperclass
public abstract class Menu implements Serializable {

    private static final long serialVersionUID = 1L;


    @Size(min = 3, max = 256)
    @Column(name = "category", length = 256)
    private String category;

    @Column(name = "logo")
    private String logo;

    @Column(name = "image")
    private String image;

    public Menu() {
    }

    public Menu( @Size(min = 3, max = 256) String category, String logo, String image) {
        this.category = category;
        this.logo = logo;
        this.image = image;
    }



    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Menu{" +
            ", category='" + category + '\'' +
            ", logo='" + logo + '\'' +
            ", image='" + image + '\'' +
            '}';
    }
}

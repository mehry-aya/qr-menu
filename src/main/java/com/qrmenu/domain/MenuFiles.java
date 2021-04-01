package com.qrmenu.domain;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.io.Serializable;


@Entity
@Table(name = "menu_files")
public class MenuFiles extends Menu implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Size(max = 256)
    @Column(name = "image_url", length = 256)
    private String imageUrl;

    public MenuFiles() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
/*  public MenuFiles(Long id_menu, @NotNull @Size(min = 60, max = 60) String category)
   {
        this.id_menu = id_menu;
        this.category = category;
    }
    */


   /* public Long getId_menu() {
        return id_menu;
    }

    public void setId_menu(Long id_menu) {
        this.id_menu = id_menu;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    } */

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Override
    public String toString() {
        return "MenuFiles{" +
            ", imageUrl='" + imageUrl + '\'' +
            '}';
    }
}

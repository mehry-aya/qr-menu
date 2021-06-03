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

     @OneToMany(mappedBy = "digitalMenu", fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
     @JsonManagedReference
     private List<Category> categories;

    public DigitalMenu() {
    }

  public List<Category> getCategories() {
        return categories;
    }

    public void setCategories(List<Category> categories) {
        this.categories = categories;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


}

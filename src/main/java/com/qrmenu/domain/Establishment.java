package com.qrmenu.domain;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

@Entity
@Table(name = "establishment")
public class Establishment  implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Size(min=3, max= 256)
    @Column(name = "name", length = 256)
    private String name;

    @Size(min=3, max= 256)
    @Column(name = "adress", length = 256)
    private String adress;

    @Size(min=3, max= 256)
    @Column(name = "contact", length = 256)
    private String contact;

    @Size(min=1, max= 256)
    @Column(name = "category", length = 256)
    private String category;

    @Size(max= 256)
    @Column(name = "logo", length = 256)
    private String logo;

    @ManyToOne
    @JsonBackReference
    private User user;

    public Establishment(){

    }

    public Establishment(Long id, @NotNull @Size(min = 3, max = 256) String name, @Size(min = 3, max = 256) String adress, @Size(min = 3, max = 256) String contact, @Size(min = 1, max = 256) String category, @Size(max = 256) String logo) {
        this.id = id;
        this.name = name;
        this.adress = adress;
        this.contact = contact;
        this.category = category;
        this.logo = logo;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
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

    @Override
    public String toString() {
        return "Establishment{" +
            "id=" + id +
            ", name='" + name + '\'' +
            ", adress='" + adress + '\'' +
            ", contact='" + contact + '\'' +
            ", category='" + category + '\'' +
            ", logo='" + logo + '\'' +

            '}';
    }
}

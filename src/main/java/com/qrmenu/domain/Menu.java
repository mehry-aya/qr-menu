package com.qrmenu.domain;

import javax.persistence.Column;
import javax.persistence.Lob;
import javax.persistence.MappedSuperclass;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Arrays;

@MappedSuperclass
public abstract class Menu extends AbstractAuditingEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    @Column
    private String name;

    @Column
    private Boolean isActivated;


    public Menu() {
    }

    public String getName() {
        return name;
    }

    public Boolean getActivated() {
        return isActivated;
    }

    public void setActivated(Boolean activated) {
        isActivated = activated;
    }

    public void setName(String name) {
        this.name = name;
    }
}

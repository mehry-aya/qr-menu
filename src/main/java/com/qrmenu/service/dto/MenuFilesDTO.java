package com.qrmenu.service.dto;

import javax.validation.constraints.Size;

public class MenuFilesDTO {



    private Long id;

    @Size(min = 1, max = 60)
    private String category;

    @Size(max = 256)
    private String imageUrl;

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

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }


}

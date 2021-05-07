package com.qrmenu.service.mapper;

import com.qrmenu.domain.MenuFiles;
import com.qrmenu.service.dto.MenuFilesDTO;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class MenuFilesMapper {

    public MenuFiles menuFilesDTOMenuFiles(MenuFilesDTO menuFilesDTO){

        MenuFiles menuFiles = new MenuFiles();
        return menuFiles;
    }
    public List<MenuFiles> menuFilesDTOsToMenuFiles(List<MenuFilesDTO> menuFilesDTO){
        return menuFilesDTO.stream().map(this::menuFilesDTOMenuFiles).collect(Collectors.toList());
    }

    public MenuFilesDTO menuFileToMenuFilesDTO(MenuFiles menuFiles) {

        MenuFilesDTO menuFilesDTO = new MenuFilesDTO();
        menuFilesDTO.setId(menuFiles.getId());
        menuFilesDTO.setName(menuFiles.getName());


        return menuFilesDTO;

    }
    public List<MenuFilesDTO> menuFilesToMenuFilesDTOs(List<MenuFiles> menuFiles){
        return menuFiles.stream().map(this::menuFileToMenuFilesDTO).collect(Collectors.toList());
    }


}

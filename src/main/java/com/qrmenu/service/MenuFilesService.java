package com.qrmenu.service;


import com.qrmenu.domain.MenuFiles;
import com.qrmenu.repository.MenuFilesRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class MenuFilesService {


   private final Logger log = LoggerFactory.getLogger(MenuFilesService.class);

        private final MenuFilesRepository menuFilesRepository;


        public MenuFilesService(MenuFilesRepository menuFilesRepository){
            this.menuFilesRepository = menuFilesRepository;

        }
        public MenuFiles addMenuFile(MenuFiles menuFiles){
            return this.menuFilesRepository.save(menuFiles);
        }

        public MenuFiles updateMenuFile(MenuFiles menuFiles){
            Optional<MenuFiles> optionalMenuFiles = menuFilesRepository.findById(menuFiles.getId());
            if (optionalMenuFiles.isPresent()) {
                MenuFiles menuFile = optionalMenuFiles.get();
                menuFile.setCategory(menuFiles.getCategory());
                menuFile.setImageUrl(menuFiles.getImageUrl());
                return this.menuFilesRepository.save(menuFile);
            } else {
                throw new NotFoundObjectException();
            }
        }

         public List<MenuFiles> findAllMenuFiles(){
             return this.menuFilesRepository.findAll();
    }

       public void deleteMenuFile(MenuFiles menuFiles){
            menuFilesRepository.deleteById(menuFiles.getId());

        }

    public MenuFiles getMenuFile(MenuFiles menuFiles) {
            return this.menuFilesRepository.getOne(menuFiles.getId());
    }

}

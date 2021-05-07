package com.qrmenu.service;


import com.qrmenu.domain.Establishment;
import com.qrmenu.domain.MenuFiles;
import com.qrmenu.domain.User;
import com.qrmenu.repository.EstablishmentRepository;
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
    private final EstablishmentRepository establishmentRepository;
    private final UserService userService;


    public MenuFilesService(MenuFilesRepository menuFilesRepository, EstablishmentRepository establishmentRepository,
                            UserService userService) {
        this.menuFilesRepository = menuFilesRepository;
        this.establishmentRepository = establishmentRepository;
        this.userService = userService;

    }

    public MenuFiles addMenuFile(MenuFiles menuFiles) {
        MenuFiles newMenuFile = this.menuFilesRepository.save(menuFiles);
        User currentUser = this.userService.getUserWithAuthorities().get();
        List<Establishment> establishments = currentUser.getEstablishments();
        Establishment establishment = establishments.get(0);
        establishment.setMenuFiles(newMenuFile);
        this.establishmentRepository.save(establishment);
        return newMenuFile;
    }

    public MenuFiles updateMenuFile(MenuFiles menuFiles) {
        Optional<MenuFiles> optionalMenuFiles = menuFilesRepository.findById(menuFiles.getId());
        if (optionalMenuFiles.isPresent()) {
            MenuFiles menuFile = optionalMenuFiles.get();
            menuFile.setName(menuFiles.getName());
            menuFile.setUploadedFile(menuFiles.getUploadedFile());
            return this.menuFilesRepository.save(menuFile);
        } else {
            throw new NotFoundObjectException();
        }
    }

    public List<MenuFiles> findAllMenuFiles() {
        return this.menuFilesRepository.findAll();
    }

    public void deleteMenuFile(MenuFiles menuFiles) {
        menuFilesRepository.deleteById(menuFiles.getId());

    }

    public MenuFiles getMenuFile(long id) {
        return this.menuFilesRepository.getOne(id);
    }

}

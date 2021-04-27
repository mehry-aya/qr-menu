package com.qrmenu.web.rest;

import com.qrmenu.domain.MenuFiles;
import com.qrmenu.repository.MenuFilesRepository;
import com.qrmenu.service.MenuFilesService;
import com.qrmenu.service.dto.MenuFilesDTO;
import com.qrmenu.service.mapper.MenuFilesMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api/menu-files")
public class MenuFileResource {

    private final Logger log = LoggerFactory.getLogger(MenuFileResource.class);

    private final MenuFilesService menuFilesService;
    private final MenuFilesMapper menuFilesMapper;
    private final MenuFilesRepository menuFilesRepository;

    public MenuFileResource(MenuFilesService menuFilesService, MenuFilesMapper menuFilesMapper, MenuFilesRepository menuFilesRepository) {
        this.menuFilesService = menuFilesService;
        this.menuFilesMapper = menuFilesMapper;
        this.menuFilesRepository = menuFilesRepository;
    }

    @PostMapping("/add")
    public ResponseEntity<MenuFiles> createMenu(@Valid @RequestBody MenuFilesDTO menuFilesDTO) {
        MenuFiles menuFiles = this.menuFilesMapper.menuFilesDTOMenuFiles(menuFilesDTO);
        return ResponseEntity.ok(this.menuFilesService.addMenuFile(menuFiles));

    }

    @PutMapping("/update")
    public ResponseEntity<MenuFiles> updateMenu(@RequestBody MenuFiles menuFiles) {
        return ResponseEntity.ok(this.menuFilesService.updateMenuFile(menuFiles));

    }

    @GetMapping("/getone/{id}")
    public ResponseEntity<MenuFiles> getMenuFile(@PathVariable("id") long id) {
        return ResponseEntity.ok(this.menuFilesService.getMenuFile(id));
    }

    @GetMapping("/all")
    public ResponseEntity<List<MenuFiles>> getAllMenuFiles() {
        return ResponseEntity.ok(this.menuFilesService.findAllMenuFiles());
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<HttpStatus> deleteMenuFile(@PathVariable("id") long id) {
        this.menuFilesRepository.deleteById(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}


package com.qrmenu.web.rest;

import com.qrmenu.domain.Establishment;
import com.qrmenu.domain.MenuFiles;
import com.qrmenu.domain.UploadedFile;
import com.qrmenu.repository.MenuFilesRepository;
import com.qrmenu.service.EstablishmentService;
import com.qrmenu.service.MenuFilesService;
import com.qrmenu.service.UploadService;
import com.sun.xml.internal.ws.api.model.wsdl.editable.EditableWSDLService;
import liquibase.util.file.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.util.List;

import static java.nio.file.Files.copy;
import static java.nio.file.Paths.get;
import static java.nio.file.StandardCopyOption.REPLACE_EXISTING;


@RestController
@RequestMapping("/api/menu-files")
public class MenuFileResource {

    public static final String CONTENT_UPLOADS = "content/uploads";
    private final Logger log = LoggerFactory.getLogger(MenuFileResource.class);


    private final MenuFilesService menuFilesService;
    private final MenuFilesRepository menuFilesRepository;
    private final UploadService uploadService;
    private final EstablishmentService establishmentService;


    @Autowired
    ServletContext context;

    public MenuFileResource(MenuFilesService menuFilesService, EstablishmentService establishmentService, MenuFilesRepository menuFilesRepository,
                            UploadService uploadService) {
        this.menuFilesService = menuFilesService;
        this.menuFilesRepository = menuFilesRepository;
        this.uploadService = uploadService;
        this.establishmentService = establishmentService;

    }

    @PostMapping("/add/{id}")
    public ResponseEntity<MenuFiles> createMenu(@Valid @RequestBody MenuFiles menuFiles, @PathVariable("id") Long id_estab) {
        UploadedFile uploadedFile = this.uploadService.getById(menuFiles.getUploadedFile().getId());
        menuFiles.setUploadedFile(uploadedFile);
        return ResponseEntity.ok(this.menuFilesService.addMenuFile(menuFiles,id_estab));

    }

    @PostMapping("/upload")
    public ResponseEntity<UploadedFile> uploadFiles(@RequestParam("files") MultipartFile multipartFile) throws IOException {
        String filename = StringUtils.cleanPath(multipartFile.getOriginalFilename());

        String DIRECTORY = context.getRealPath(CONTENT_UPLOADS);
        File directory = new File(DIRECTORY);
        if (!directory.exists()) {
            directory.mkdir();
            // If you require it to make the entire directory path including parents,
            // use directory.mkdirs(); here instead.
        }

        Path fileStorage = get(DIRECTORY, filename).toAbsolutePath().normalize();
        copy(multipartFile.getInputStream(), fileStorage, REPLACE_EXISTING);
        UploadedFile uploadedFile = new UploadedFile();
        uploadedFile.setName(filename);
        uploadedFile.setPath(CONTENT_UPLOADS + "/" + filename);
        uploadedFile.setType(FilenameUtils.getExtension(filename).toUpperCase());
        UploadedFile output = this.uploadService.save(uploadedFile);
        return ResponseEntity.ok().body(output);

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

    @GetMapping("/establishment/{id}")
    public ResponseEntity<MenuFiles> getMenuFileByEstablishment(@PathVariable("id") Long idEstab){
        return ResponseEntity.ok(this.menuFilesService.findMenuFileByEstablishment(idEstab));
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<HttpStatus> deleteMenuFile(@PathVariable("id") long id) {
        this.menuFilesRepository.deleteById(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @DeleteMapping("/delete/file/{id}")
    public ResponseEntity<HttpStatus> deleteFile(@PathVariable("id") long id) {
        this.uploadService.delete(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }


}


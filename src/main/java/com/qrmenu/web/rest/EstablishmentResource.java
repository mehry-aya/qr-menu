package com.qrmenu.web.rest;

import com.qrmenu.domain.Establishment;
import com.qrmenu.domain.UploadedFile;
import com.qrmenu.repository.EstablishmentRepository;
import com.qrmenu.repository.UserRepository;
import com.qrmenu.service.EstablishmentService;
import com.qrmenu.service.UploadService;
import liquibase.util.file.FilenameUtils;
import com.qrmenu.security.SecurityUtils;
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
import java.util.Optional;

import static java.nio.file.Files.copy;
import static java.nio.file.Paths.get;
import static java.nio.file.StandardCopyOption.REPLACE_EXISTING;

@RestController
@RequestMapping("/api/establishment")
public class EstablishmentResource {
    public static final String CONTENT_UPLOADS = "content/logos";
    private final Logger log = LoggerFactory.getLogger(EstablishmentResource.class);

    private final EstablishmentRepository establishmentRepository;
    private final EstablishmentService establishmentService;
    private final UploadService uploadService;
    private final UserRepository userRepository;


    @Autowired
    ServletContext context;

    public EstablishmentResource(EstablishmentRepository establishmentRepository, EstablishmentService establishmentService,
                                 UploadService uploadService, UserRepository userRepository) {
        this.establishmentRepository = establishmentRepository;
        this.establishmentService = establishmentService;
        this.uploadService = uploadService;
        this.userRepository = userRepository;
    }
@PostMapping("/add")
    public ResponseEntity<Establishment> createEstablishment(@Valid @RequestBody Establishment establishments){
        UploadedFile logo = this.uploadService.getById(establishments.getLogo().getId());
        establishments.setLogo(logo);
        SecurityUtils.getCurrentUserLogin()
            .flatMap(userRepository::findOneByLogin)
            .ifPresent(user -> {
                establishments.setUser(user);
            });
        return ResponseEntity.ok(this.establishmentService.addEstablishment(establishments));
    }

    @PostMapping("/upload")
    public ResponseEntity<UploadedFile> uploadFiles(@RequestParam("files") MultipartFile multipartFile) throws
        IOException {
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

@GetMapping("/getone/{id}")
    public ResponseEntity<Establishment> getEstablishment(@PathVariable("id") long id){
        return ResponseEntity.ok(this.establishmentService.getEstablishment(id));
}

@GetMapping("/all")
    public ResponseEntity<List<Establishment>> getAllEstablishment (){
        return ResponseEntity.ok(this.establishmentService.findAllEstablishments());
}
@GetMapping("/user/{id}")
public ResponseEntity<List<Establishment>> getEstablishmentsByCurrentUser(@PathVariable("id") long idUser){
        return ResponseEntity.ok(this.establishmentService.findEstablishmentByCurrentUser(idUser));
}
@PutMapping("/update")
    public ResponseEntity<Establishment> updateEstablishment(@RequestBody Establishment establishments){
        return ResponseEntity.ok(this.establishmentService.updateEstablishment(establishments));
}
@DeleteMapping("/delete/{id}")
    public ResponseEntity<HttpStatus> deleteEstablishment (@PathVariable("id") long id){
        this.establishmentRepository.deleteById(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
}
}

package com.qrmenu.web.rest;

import com.qrmenu.domain.Establishment;
import com.qrmenu.repository.EstablishmentRepository;
import com.qrmenu.service.EstablishmentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/establishment")
public class EstablishmentResource {
    private final Logger log = LoggerFactory.getLogger(EstablishmentResource.class);

    private final EstablishmentRepository establishmentRepository;
    private final EstablishmentService establishmentService;

    public EstablishmentResource(EstablishmentRepository establishmentRepository, EstablishmentService establishmentService) {
        this.establishmentRepository = establishmentRepository;
        this.establishmentService = establishmentService;
    }
@PostMapping("/add")
    public ResponseEntity<Establishment> createEstablishment(@Valid @RequestBody Establishment establishments){
        return ResponseEntity.ok(this.establishmentService.addEstablishment(establishments));
}
@GetMapping("/{id}")
    public ResponseEntity<Establishment> getEstablishment(@PathVariable long id){
        return ResponseEntity.ok(this.establishmentService.getEstablishment(id));
}
@GetMapping("/all")
    public ResponseEntity<List<Establishment>> getAllEstablishment (){
        return ResponseEntity.ok(this.establishmentService.findAllEstablishments());
}
@PutMapping("/update")
    public ResponseEntity<Establishment> updateEstablishment(@RequestBody Establishment establishments){
        return ResponseEntity.ok(this.establishmentService.updateEstablishment(establishments));
}
@DeleteMapping("/delete/{id}")
    public ResponseEntity<HttpStatus> deteteEstablishment (@PathVariable long id, @RequestBody Establishment establishments){
        this.establishmentRepository.deleteById(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
}
}

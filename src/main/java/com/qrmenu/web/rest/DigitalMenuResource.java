package com.qrmenu.web.rest;

import com.qrmenu.domain.DigitalMenu;
import com.qrmenu.domain.MenuFiles;
import com.qrmenu.repository.DigitalMenuRepository;
import com.qrmenu.service.DigitalMenuService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/digitalmenu")
public class DigitalMenuResource {
    private final Logger log = LoggerFactory.getLogger(DigitalMenuResource.class);

    private final DigitalMenuRepository digitalMenuRepository;
    private final DigitalMenuService digitalMenuService;

    public DigitalMenuResource(DigitalMenuRepository digitalMenuRepository, DigitalMenuService digitalMenuService) {
        this.digitalMenuRepository = digitalMenuRepository;
        this.digitalMenuService = digitalMenuService;
    }

    @PostMapping("/add/{id}")
    public ResponseEntity<DigitalMenu> createDigitalMenu(@Valid @RequestBody DigitalMenu digitalMenus, @PathVariable("id") Long id_estab) {
        return ResponseEntity.ok(this.digitalMenuService.addDigitalMenu(digitalMenus, id_estab));
    }

    @GetMapping("/getone/{id}")
    public ResponseEntity<DigitalMenu> getDigitalMenu(@PathVariable("id") Long id) {
        return ResponseEntity.ok(this.digitalMenuService.getDigitalMenu(id));
    }

    @GetMapping("/all")
    public ResponseEntity<List<DigitalMenu>> getAllDigitalMenu() {
        return ResponseEntity.ok(this.digitalMenuService.findAllDigitalMenu());
    }

    @GetMapping("/establishment/{id}")
    public ResponseEntity<DigitalMenu> getDigitalMenuByEstablishment(@PathVariable("id") Long idEstab){
        return ResponseEntity.ok(this.digitalMenuService.findDigitalMenusByEstablishment(idEstab));
    }

    @PutMapping("/update")
    public ResponseEntity<DigitalMenu> updateDigitalMenu(@RequestBody DigitalMenu digitalMenus) {
        return ResponseEntity.ok(this.digitalMenuService.updateDigitalMenu(digitalMenus));
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<HttpStatus> deleteDigitalMenu(@PathVariable("id") long id) {
        this.digitalMenuRepository.deleteById(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}

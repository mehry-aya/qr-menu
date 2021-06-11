package com.qrmenu.web.rest;

import com.qrmenu.domain.Category;
import com.qrmenu.domain.DigitalMenu;
import com.qrmenu.repository.CategoryRepository;
import com.qrmenu.repository.DigitalMenuRepository;
import com.qrmenu.service.CategoryService;
import com.qrmenu.service.DigitalMenuService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("/api/category")
public class CategoryResource {
    private final Logger log = LoggerFactory.getLogger(DigitalMenuResource.class);

    private final CategoryService categoryService;
    private final DigitalMenuService digitalMenuService;
    private final CategoryRepository categoryRepository;

    public CategoryResource(CategoryRepository categoryRepository,CategoryService categoryService, DigitalMenuService digitalMenuService) {
        this.categoryService = categoryService;
        this.digitalMenuService = digitalMenuService;
        this.categoryRepository = categoryRepository;
    }

    @PostMapping("/add/{id}")
    public ResponseEntity<Category> createCategory(@Valid @RequestBody Category category, @PathVariable("id") long idMenu) {
        return ResponseEntity.ok(this.categoryService.addCategory(category,idMenu));
    }

    @GetMapping("/getone/{id}")
    public ResponseEntity<Category> getCategory(@PathVariable("id") long id) {
        return ResponseEntity.ok(this.categoryService.getCategory(id));
    }

    @GetMapping("/all")
    public ResponseEntity<List<Category>> getAllCategories() {
        return ResponseEntity.ok(this.categoryService.findAllCategories());
    }
    @GetMapping("/digitalmenu/{id}")
    public ResponseEntity<Set<Category>> getCategoriesByMenu(@PathVariable("id") Long idMenu){
        return ResponseEntity.ok(this.categoryService.findCategoriesByMenu(idMenu));
    }

    @PutMapping("/update")
    public ResponseEntity<Category> updateCategory(@RequestBody Category category) {
        return ResponseEntity.ok(this.categoryService.updateCategory(category));
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<HttpStatus> deleteDigitalMenu(@PathVariable("id") long id) {
        this.categoryRepository.deleteById(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}

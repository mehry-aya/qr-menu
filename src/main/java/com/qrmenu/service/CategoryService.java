package com.qrmenu.service;

import com.qrmenu.domain.Category;
import com.qrmenu.domain.DigitalMenu;
import com.qrmenu.domain.Establishment;
import com.qrmenu.repository.CategoryRepository;
import com.qrmenu.repository.DigitalMenuRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.Set;

@Transactional
@Service
public class CategoryService {
    private final Logger log = LoggerFactory.getLogger(CategoryService.class);
    private final CategoryRepository categoryRepository;
    private final DigitalMenuRepository digitalMenuRepository;


    public CategoryService(DigitalMenuRepository digitalMenuRepository,CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
        this.digitalMenuRepository = digitalMenuRepository;
    }
    public Category addCategory(Category category, Long idMenu) {
       Category newCategory = this.categoryRepository.save(category);
        Optional <DigitalMenu> optionalDigitalMenu =this.digitalMenuRepository.findById(idMenu);
        if (optionalDigitalMenu.isPresent()) {
            DigitalMenu digitalMenu = optionalDigitalMenu.get();
            digitalMenu.getCategories().add(category);
            this.digitalMenuRepository.save(digitalMenu);
        }
        return newCategory;

    }

    public List<Category> findAllCategories() {
        return this.categoryRepository.findAll();
    }
    public Set<Category> findCategoriesByMenu(Long idMenu) {
        DigitalMenu digitalMenu = this.digitalMenuRepository.findById(idMenu).get();
        return digitalMenu.getCategories();
    }

    public Category getCategory(Long id) {
        return this.categoryRepository.getOne(id);
    }

    public Category updateCategory(Category category) {
        Optional<Category> optionalCategory = this.categoryRepository.findById(category.getId());
        if (optionalCategory.isPresent()) {
            Category newCategory = optionalCategory.get();
            newCategory.setProducts(newCategory.getProducts());
            newCategory.setLevel(newCategory.getLevel());
            newCategory.setName(newCategory.getName());
            newCategory.setDigitalMenu(newCategory.getDigitalMenu());
            newCategory.setProducts(newCategory.getProducts());
            return this.categoryRepository.save(category);
        } else {
            throw new NotFoundObjectException();
        }
    }

    public void deleteCategory(Category category) {
        this.categoryRepository.deleteById(category.getId());
    }

}

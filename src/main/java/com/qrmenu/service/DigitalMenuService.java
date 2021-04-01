package com.qrmenu.service;

import com.qrmenu.domain.DigitalMenu;
import com.qrmenu.repository.DigitalMenuRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Transactional
@Service
public class DigitalMenuService {
    private final Logger log = LoggerFactory.getLogger(DigitalMenuService.class);
    private final DigitalMenuRepository digitalMenuRepository;

    public DigitalMenuService(DigitalMenuRepository digitalMenuRepository) {
        this.digitalMenuRepository = digitalMenuRepository;
    }

    public DigitalMenu addDigitalMenu(DigitalMenu digitalMenus) {
        return this.digitalMenuRepository.save(digitalMenus);
    }

    public List<DigitalMenu> findAllDigitalMenu() {
        return this.digitalMenuRepository.findAll();
    }

    public DigitalMenu getDigitalMenu(Long id) {
        return this.digitalMenuRepository.getOne(id);
    }

    public DigitalMenu updateDigitalMenu(DigitalMenu digitalMenus) {
        Optional<DigitalMenu> optionalDigitalMenu = this.digitalMenuRepository.findById(digitalMenus.getId());
        if (optionalDigitalMenu.isPresent()) {
            DigitalMenu digitalMenu = optionalDigitalMenu.get();
            digitalMenu.setProduct(digitalMenus.getProduct());
            digitalMenu.setCategory(digitalMenus.getCategory());
            return this.digitalMenuRepository.save(digitalMenu);
        } else {
            throw new NotFoundObjectException();
        }
    }

    public void deleteDigitalMenu(DigitalMenu digitalMenus) {
        this.digitalMenuRepository.deleteById(digitalMenus.getId());
    }
}

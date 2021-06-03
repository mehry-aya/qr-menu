package com.qrmenu.service;

import com.qrmenu.domain.DigitalMenu;
import com.qrmenu.domain.Establishment;
import com.qrmenu.domain.MenuFiles;
import com.qrmenu.repository.DigitalMenuRepository;
import com.qrmenu.repository.EstablishmentRepository;
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
    private final EstablishmentRepository establishmentRepository;

    public DigitalMenuService(EstablishmentRepository establishmentRepository,DigitalMenuRepository digitalMenuRepository) {
        this.digitalMenuRepository = digitalMenuRepository;
        this.establishmentRepository = establishmentRepository;

    }

    public DigitalMenu addDigitalMenu(DigitalMenu digitalMenus, Long id_estab) {
        DigitalMenu newDigitalMenu = this.digitalMenuRepository.save(digitalMenus);
        Establishment establishment = this.establishmentRepository.findById(id_estab).get();
        establishment.setDigitalMenu(newDigitalMenu);
        this.establishmentRepository.save(establishment);
        return newDigitalMenu;
    }

    public List<DigitalMenu> findAllDigitalMenu() {
        return this.digitalMenuRepository.findAll();
    }

    public DigitalMenu findDigitalMenusByEstablishment(Long idEstab) {
        Establishment establishment = this.establishmentRepository.findById(idEstab).get();
        return establishment.getDigitalMenu();
    }
    public DigitalMenu getDigitalMenu(Long id) {
        return this.digitalMenuRepository.getOne(id);
    }

    public DigitalMenu updateDigitalMenu(DigitalMenu digitalMenus) {
        Optional<DigitalMenu> optionalDigitalMenu = this.digitalMenuRepository.findById(digitalMenus.getId());
        if (optionalDigitalMenu.isPresent()) {
            DigitalMenu digitalMenu = optionalDigitalMenu.get();
            digitalMenu.setCategories(digitalMenus.getCategories());
            digitalMenu.setName(digitalMenus.getName());
            digitalMenu.setActivated(digitalMenus.getActivated());


            return this.digitalMenuRepository.save(digitalMenu);
        } else {
            throw new NotFoundObjectException();
        }
    }

    public void deleteDigitalMenu(DigitalMenu digitalMenus) {
        this.digitalMenuRepository.deleteById(digitalMenus.getId());
    }
}

package com.qrmenu.service;

import com.qrmenu.domain.Establishment;
import com.qrmenu.repository.EstablishmentRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class EstablishmentService {
    private final Logger log = LoggerFactory.getLogger(MenuFilesService.class);
    private final EstablishmentRepository establishmentRepository;

    public EstablishmentService(EstablishmentRepository establishmentRepository) {
        this.establishmentRepository = establishmentRepository;
    }

    public Establishment addEstablishment(Establishment establishments){
        return this.establishmentRepository.save(establishments);
    }

    public List<Establishment> findAllEstablishments(){
        return this.establishmentRepository.findAll();
    }

    public Establishment getEstablishment(long id){
        return this.establishmentRepository.getOne(id);
    }

    public Establishment updateEstablishment(Establishment establishments){
        Optional<Establishment> optionalEstablishment = establishmentRepository.findById(establishments.getId());
            if (optionalEstablishment.isPresent()){
                Establishment establishment = optionalEstablishment.get();
                establishment.setName(establishments.getName());
                establishment.setCategory(establishments.getCategory());
                establishment.setAdress(establishments.getAdress());
                establishment.setContact(establishments.getContact());
                establishment.setLogo(establishments.getLogo());
                establishment.setUser(establishments.getUser());
                establishment.setDigitalMenu(establishments.getDigitalMenu());
                establishment.setMenuFiles(establishments.getMenuFiles());
            return this.establishmentRepository.save(establishment);
            } else {
                throw new NotFoundObjectException();
            }
    }

    public void deleteEstablishment(Establishment establishments){
        this.establishmentRepository.deleteById(establishments.getId());
}
}

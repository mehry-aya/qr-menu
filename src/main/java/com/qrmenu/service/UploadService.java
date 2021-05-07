package com.qrmenu.service;

import com.qrmenu.domain.UploadedFile;
import com.qrmenu.repository.UploadRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Transactional
@Service
public class UploadService {

    private final UploadRepository uploadRepository;

    public UploadService(UploadRepository uploadRepository) {
        this.uploadRepository = uploadRepository;
    }

    public UploadedFile getById(Long id) {
        return this.uploadRepository.getOne(id);
    }

    public UploadedFile save(UploadedFile uploadedFile) {
        return this.uploadRepository.save(uploadedFile);
    }

    public void delete(Long id){
        uploadRepository.deleteById(id);

    }

}

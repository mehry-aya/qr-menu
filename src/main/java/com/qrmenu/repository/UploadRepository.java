package com.qrmenu.repository;

import com.qrmenu.domain.UploadedFile;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UploadRepository extends JpaRepository<UploadedFile, Long> {
}

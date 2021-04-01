package com.qrmenu.repository;

import com.qrmenu.domain.MenuFiles;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MenuFilesRepository extends JpaRepository <MenuFiles, Long> {



    // void deleteByCategory(String category);

    //void deleteMenuFile(long id_menu);
}

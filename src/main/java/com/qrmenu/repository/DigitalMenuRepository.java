package com.qrmenu.repository;

import com.qrmenu.domain.DigitalMenu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DigitalMenuRepository extends JpaRepository <DigitalMenu,Long>{
}

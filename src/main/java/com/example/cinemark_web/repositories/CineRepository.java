package com.example.cinemark_web.repositories;

import com.example.cinemark_web.entities.*;
import org.springframework.data.jpa.repository.*;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public interface CineRepository extends BaseRepository<Cine, Long>{

}


package com.example.cinemark_web.repositories;

import com.example.cinemark_web.entities.*;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public interface SalaRepository extends BaseRepository<Sala, Long>{
    List<Sala> findByCineId(Long cineId);
}

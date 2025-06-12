package com.example.cinemark_web.repositories;

import com.example.cinemark_web.entities.*;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public interface InsumoRepository extends BaseRepository<Insumo, Long>{
    List<Insumo> findByNombreContainingIgnoreCase(String nombre);
}

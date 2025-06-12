package com.example.cinemark_web.repositories;


import com.example.cinemark_web.entities.*;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public interface PeliculaRepository extends BaseRepository<Pelicula, Long> {
    List<Pelicula> findByTituloContainingIgnoreCase(String titulo);
}


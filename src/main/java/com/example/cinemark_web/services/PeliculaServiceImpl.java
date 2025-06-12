package com.example.cinemark_web.services;

import com.example.cinemark_web.entities.Pelicula;
import com.example.cinemark_web.repositories.PeliculaRepository;
import org.springframework.stereotype.Service;

@Service
public class PeliculaServiceImpl extends BaseServiceImpl<Pelicula, Long> implements PeliculaService {

    public PeliculaServiceImpl(PeliculaRepository peliculaRepository) {
        super(peliculaRepository);
    }
}
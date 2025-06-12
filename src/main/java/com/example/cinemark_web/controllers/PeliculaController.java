package com.example.cinemark_web.controllers;

import com.example.cinemark_web.entities.Pelicula;
import com.example.cinemark_web.services.PeliculaService;
import com.example.cinemark_web.services.PeliculaServiceImpl;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/peliculas")
public class PeliculaController extends BaseControllerImpl<Pelicula, PeliculaServiceImpl>{

}

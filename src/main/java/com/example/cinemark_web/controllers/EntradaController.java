package com.example.cinemark_web.controllers;

import com.example.cinemark_web.entities.Entrada;
import com.example.cinemark_web.services.EntradaService;
import com.example.cinemark_web.services.EntradaServiceImpl;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/entradas")
public class EntradaController extends BaseControllerImpl<Entrada, EntradaServiceImpl> {

}
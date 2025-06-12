package com.example.cinemark_web.controllers;

import com.example.cinemark_web.entities.Funcion;
import com.example.cinemark_web.services.FuncionService;
import com.example.cinemark_web.services.FuncionServiceImpl;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/funciones")
public class FuncionController extends BaseControllerImpl<Funcion, FuncionServiceImpl>{

}

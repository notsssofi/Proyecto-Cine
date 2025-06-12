package com.example.cinemark_web.controllers;

import com.example.cinemark_web.entities.Empleado;
import com.example.cinemark_web.services.EmpleadoService;
import com.example.cinemark_web.services.EmpleadoServiceImpl;

import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/empleados")
public class EmpleadoController extends BaseControllerImpl<Empleado, EmpleadoServiceImpl>{

}

package com.example.cinemark_web.controllers;

import com.example.cinemark_web.entities.Proveedor;
import com.example.cinemark_web.services.ProveedorService;
import com.example.cinemark_web.services.ProveedorServiceImpl;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/proveedores")
public class ProveedorController extends BaseControllerImpl<Proveedor, ProveedorServiceImpl>{

}
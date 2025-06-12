package com.example.cinemark_web.controllers;

import com.example.cinemark_web.entities.Venta;
import com.example.cinemark_web.services.VentaService;
import com.example.cinemark_web.services.VentaServiceImpl;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/ventas")
public class VentaController extends BaseControllerImpl<Venta, VentaServiceImpl>{

    @GetMapping("/resumen")
    public ResponseEntity<?> getVentasResumen() {
        try {
            return ResponseEntity.ok(((VentaServiceImpl) servicio).obtenerVentasDTO());
        } catch (Exception e) {
            return ResponseEntity.status(500).body("Error al obtener resumen de ventas");
        }
    }

}


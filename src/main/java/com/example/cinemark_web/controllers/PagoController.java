package com.example.cinemark_web.controllers;

import com.example.cinemark_web.entities.Pago;
import com.example.cinemark_web.services.PagoService;
import com.example.cinemark_web.services.PagoServiceImpl;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/pagos")
public class PagoController extends BaseControllerImpl<Pago, PagoServiceImpl>{

}

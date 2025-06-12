package com.example.cinemark_web.controllers;

import com.example.cinemark_web.entities.Compra;
import com.example.cinemark_web.services.CompraService;
import com.example.cinemark_web.services.CompraServiceImpl;

import org.springframework.web.bind.annotation.*;


@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/compras")
public class CompraController extends BaseControllerImpl<Compra, CompraServiceImpl> {

}
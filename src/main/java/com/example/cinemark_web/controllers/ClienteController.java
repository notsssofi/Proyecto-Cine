package com.example.cinemark_web.controllers;

import com.example.cinemark_web.entities.Cliente;
import com.example.cinemark_web.services.ClienteServiceImpl;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/clientes")
public class ClienteController extends BaseControllerImpl<Cliente, ClienteServiceImpl> {
}
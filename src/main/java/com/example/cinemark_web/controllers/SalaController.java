package com.example.cinemark_web.controllers;

import com.example.cinemark_web.entities.Sala;
import com.example.cinemark_web.services.SalaService;
import com.example.cinemark_web.services.SalaServiceImpl;
import org.springframework.web.bind.annotation.*;


@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/salas")
public class SalaController extends BaseControllerImpl<Sala, SalaServiceImpl>{
}

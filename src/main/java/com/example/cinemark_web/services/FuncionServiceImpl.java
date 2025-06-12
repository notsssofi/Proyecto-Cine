package com.example.cinemark_web.services;

import com.example.cinemark_web.entities.Funcion;
import com.example.cinemark_web.repositories.FuncionRepository;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;


@Service
@Transactional
public class FuncionServiceImpl extends BaseServiceImpl<Funcion, Long> implements FuncionService {
    public FuncionServiceImpl(FuncionRepository funcionRepository) {
        super(funcionRepository);
    }
}

package com.example.cinemark_web.services;

import com.example.cinemark_web.entities.*;
import com.example.cinemark_web.repositories.*;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class EmpleadoServiceImpl extends BaseServiceImpl<Empleado, Long> implements EmpleadoService {

    public EmpleadoServiceImpl(EmpleadoRepository empleadoRepository) {
        super(empleadoRepository);
    }
}

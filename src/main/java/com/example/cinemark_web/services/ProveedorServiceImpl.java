package com.example.cinemark_web.services;

import com.example.cinemark_web.entities.Proveedor;
import com.example.cinemark_web.repositories.ProveedorRepository;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;


@Service
@Transactional
public class ProveedorServiceImpl extends BaseServiceImpl<Proveedor, Long> implements ProveedorService {

    public ProveedorServiceImpl(ProveedorRepository proveedorRepository) {
        super(proveedorRepository);
    }
}

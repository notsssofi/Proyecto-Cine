package com.example.cinemark_web.services;

import com.example.cinemark_web.entities.Compra;
import com.example.cinemark_web.repositories.CompraRepository;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class CompraServiceImpl extends BaseServiceImpl<Compra, Long> implements CompraService {

    public CompraServiceImpl(CompraRepository compraRepository) {
        super(compraRepository);
    }

}

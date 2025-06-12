package com.example.cinemark_web.services;

import com.example.cinemark_web.entities.Pago;
import com.example.cinemark_web.repositories.PagoRepository;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class PagoServiceImpl extends BaseServiceImpl<Pago, Long> implements PagoService {
    public PagoServiceImpl(PagoRepository pagoRepository) {
        super(pagoRepository);
    }
}

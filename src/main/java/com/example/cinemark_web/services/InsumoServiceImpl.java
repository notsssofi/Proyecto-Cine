package com.example.cinemark_web.services;

import com.example.cinemark_web.entities.Insumo;
import com.example.cinemark_web.repositories.InsumoRepository;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class InsumoServiceImpl extends BaseServiceImpl<Insumo, Long> implements InsumoService{
    public InsumoServiceImpl(InsumoRepository insumoRepository) {
        super(insumoRepository);
    }
}

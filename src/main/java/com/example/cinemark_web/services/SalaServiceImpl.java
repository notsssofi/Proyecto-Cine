package com.example.cinemark_web.services;

import com.example.cinemark_web.entities.Sala;
import com.example.cinemark_web.repositories.SalaRepository;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class SalaServiceImpl extends BaseServiceImpl<Sala, Long> implements SalaService {

    public SalaServiceImpl(SalaRepository salaRepository) {
        super(salaRepository);
    }

}

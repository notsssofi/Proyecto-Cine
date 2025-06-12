package com.example.cinemark_web.services;
import com.example.cinemark_web.entities.*;
import com.example.cinemark_web.repositories.*;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class CineServiceImpl extends BaseServiceImpl<Cine, Long> implements CineService {

    public CineServiceImpl(CineRepository cineRepository) {
        super(cineRepository);
    }
}

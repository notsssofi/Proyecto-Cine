package com.example.cinemark_web.repositories;

import com.example.cinemark_web.entities.*;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public interface EntradaRepository extends BaseRepository<Entrada, Long>{
    List<Entrada> findByFuncionId(Long funcionId);
}

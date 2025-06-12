package com.example.cinemark_web.repositories;

import com.example.cinemark_web.entities.*;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public interface VentaRepository extends BaseRepository<Venta, Long>{
    List<Venta> findByCineId(Long cineId);
    List<Venta> findByClienteId(Long clienteId);
}

package com.example.cinemark_web.repositories;

import com.example.cinemark_web.entities.*;
import org.springframework.stereotype.Repository;

import java.util.*;


@Repository
public interface ProveedorRepository extends BaseRepository<Proveedor, Long>{
    List<Proveedor> findByNombreContainingIgnoreCase(String nombre);
}

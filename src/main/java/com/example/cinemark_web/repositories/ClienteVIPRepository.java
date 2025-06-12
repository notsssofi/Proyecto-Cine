package com.example.cinemark_web.repositories;

import com.example.cinemark_web.entities.*;
import org.springframework.data.jpa.repository.*;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public interface ClienteVIPRepository extends BaseRepository<ClienteVIP, Long> {
    @Query("SELECT cv.nombre, cv.email, cv.descuento FROM ClienteVIP cv")
    List<Object[]> listarClientesVIPConDescuento();
}

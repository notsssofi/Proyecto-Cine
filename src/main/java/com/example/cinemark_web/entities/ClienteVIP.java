package com.example.cinemark_web.entities;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ClienteVIP extends Cliente {
    private float descuento;
}

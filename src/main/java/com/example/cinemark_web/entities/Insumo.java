package com.example.cinemark_web.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.envers.Audited;

@Entity
@Table(name = "Insumo")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Audited
public class Insumo extends Base{
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "precio")
    private double precio;
}

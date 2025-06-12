package com.example.cinemark_web.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.envers.Audited;

@Entity
@Table(name = "entrada")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Audited
public class Entrada extends Base{

    @Column(name = "precio")
    private double precio;
    @Column(name = "asiento")
    private String asiento;

    @ManyToOne
    @JoinColumn(name = "funcion_id")
    private Funcion funcion;
}

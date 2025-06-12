package com.example.cinemark_web.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.envers.Audited;

@Entity
@Table(name = "pelicula")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Audited
public class Pelicula extends Base implements IPromocion{

    @Column(name = "titulo")
    private String titulo;

    @Enumerated(EnumType.STRING)
    @Column(name = "genero")
    private Genero genero;

    @ManyToOne
    @JoinColumn(name = "cine_id", nullable = false)
    private Cine cine;

    @Override
    public float obtenerDescuento() {
        return 0.1f;  //Es un descuento del 10%
    }
}

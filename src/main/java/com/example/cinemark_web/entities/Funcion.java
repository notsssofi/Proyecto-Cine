package com.example.cinemark_web.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.envers.Audited;

import java.util.*;

@Entity
@Table(name = "funcion")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Audited
public class Funcion extends Base{

    @Column(name = "horario")
    private String horario;

    @ManyToOne
    private Pelicula pelicula;

    @ManyToMany(mappedBy = "funciones")
    private List<Venta> ventas = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "sala_id", nullable = false)
    private Sala sala;


}

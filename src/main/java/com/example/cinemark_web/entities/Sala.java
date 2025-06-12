package com.example.cinemark_web.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.envers.Audited;

import java.util.*;

@Entity
@Table(name = "Sala")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Audited
public class Sala extends Base{
    @Column(name = "numero")
    private int numero;
    @Column(name = "capacidad")
    private int capacidad;

    @OneToMany(mappedBy = "sala", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Funcion> funciones = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "cine_id", nullable = false)
    private Cine cine;

    public void addFuncion(Funcion funcion) {
        this.funciones.add(funcion);
    }
}

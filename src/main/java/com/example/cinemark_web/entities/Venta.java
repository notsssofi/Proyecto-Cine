package com.example.cinemark_web.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.envers.Audited;

import java.util.*;

@Entity
@Table(name = "venta")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Audited
public class Venta extends Base{

    @Temporal(TemporalType.DATE)
    @Column(name = "fecha")
    private Date fecha;

    @ManyToOne
    @JoinColumn(name = "cine_id", nullable = false)
    private Cine cine;

    @ManyToOne
    @JoinColumn(name = "cliente_id")
    private Cliente cliente;

    @ManyToMany
    @JoinTable(
            name = "VENTA_FUNCION",
            joinColumns = @JoinColumn(name = "venta_id"),
            inverseJoinColumns = @JoinColumn(name = "funcion_id")
    )
    private List<Funcion> funciones = new ArrayList<>();

    public void addFuncion(Funcion funcion) {
        this.funciones.add(funcion);
    }
}



package com.example.cinemark_web.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.envers.Audited;

@Entity
@Table(name = "empleado")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Audited
public class Empleado extends Base{

    @Column(name = "nombre")
    private String nombre;
    @Column(name = "dni")
    private int dni;

    @ManyToOne
    @JoinColumn(name = "cine_id", nullable = false)
    private Cine cine;
}

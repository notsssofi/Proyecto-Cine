package com.example.cinemark_web.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.envers.Audited;

import java.util.*;

@Entity
@Table(name = "cliente")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Audited
public class Cliente extends Base {

    @Column(name = "nombre")
    private String nombre;
    @Column(name = "email")
    private String email;

    @ManyToOne
    @JoinColumn(name = "cine_id", nullable = false)
    private Cine cine;

    @OneToMany(mappedBy = "cliente", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Venta> ventas = new ArrayList<>();
}
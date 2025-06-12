package com.example.cinemark_web.entities;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.envers.Audited;

import java.util.*;

@Entity
@Table(name = "cine")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Audited
public class Cine extends Base{

        @Column(name = "nombre")
        private String nombre;
        @Column(name = "direccion")
        private String direccion;

        @OneToMany(mappedBy = "cine", cascade = CascadeType.ALL, orphanRemoval = true)
        private List<Pelicula> peliculas = new ArrayList<>();

        @OneToMany(mappedBy = "cine", cascade = CascadeType.ALL, orphanRemoval = true)
        private List<Empleado> empleados = new ArrayList<>();

        @OneToMany(mappedBy = "cine", cascade = CascadeType.ALL, orphanRemoval = true)
        private List<Venta> ventas = new ArrayList<>();

        @OneToMany(mappedBy = "cine", cascade = CascadeType.ALL, orphanRemoval = true)
        private List<Sala> salas = new ArrayList<>();

        @OneToMany(mappedBy = "cine", cascade = CascadeType.ALL, orphanRemoval = true)
        private List<Cliente> clientes = new ArrayList<>();

        public void addSala(Sala sala){
                salas.add(sala);
        }
        public void addVentas(Venta venta){
                ventas.add(venta);
        }
        public void addEmpleado(Empleado empleado){
                empleados.add(empleado);
        }
        public void addCliente(Cliente cliente){
                clientes.add(cliente);
        }

}

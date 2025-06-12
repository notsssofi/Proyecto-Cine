package com.example.cinemark_web.entities;


import jakarta.persistence.*;
import lombok.*;
import org.hibernate.envers.Audited;

import java.util.*;

@Entity
@Table(name = "compra")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Audited
public class Compra extends Base{

    @Temporal(TemporalType.DATE)
    @Column(name = "fecha")
    private Date fecha;

    @OneToMany
    private List<Insumo> insumos = new ArrayList<>();

    @OneToMany
    private List<Proveedor> proveedores = new ArrayList<>();

    public void addInsumo(Insumo insumo) {
        insumos.add(insumo);
    }
    public void addProveedor(Proveedor proveedor) {
        proveedores.add(proveedor);
    }
}

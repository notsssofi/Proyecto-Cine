package com.example.cinemark_web.entities;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.envers.Audited;

@Entity
@Table(name = "Pago")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Audited
public class Pago extends Base{

    @Column(name = "monto")
    private double monto;

    @Enumerated(EnumType.STRING)
    @Column(name = "TipoPago")
    private TipoPago tipo;
}

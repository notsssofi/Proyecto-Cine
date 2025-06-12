package com.example.cinemark_web.DTO;

import lombok.*;

@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
public class VentaDTO {
    private Long id;
    private String fecha;
    private String clienteNombre;
    private String clienteEmail;
    private String peliculaTitulo;
    private String peliculaGenero;
    private String horario;
}


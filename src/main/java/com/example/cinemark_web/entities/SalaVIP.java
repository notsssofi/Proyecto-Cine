package com.example.cinemark_web.entities;

import jakarta.persistence.*;
import lombok.*;
import java.util.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class SalaVIP extends Sala{
    private String beneficios;
}

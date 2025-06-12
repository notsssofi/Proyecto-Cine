package com.example.cinemark_web.services;

import com.example.cinemark_web.DTO.VentaDTO;
import com.example.cinemark_web.entities.*;
import com.example.cinemark_web.repositories.*;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class VentaServiceImpl extends BaseServiceImpl<Venta, Long> implements VentaService {

    public VentaServiceImpl(VentaRepository ventaRepository) {
        super(ventaRepository);
    }

    public List<VentaDTO> obtenerVentasDTO() {
        List<Venta> ventas = baseRepository.findAll();
        List<VentaDTO> result = new ArrayList<>();

        for (Venta v : ventas) {
            Funcion f = v.getFunciones().isEmpty() ? null : v.getFunciones().get(0);
            Pelicula p = (f != null) ? f.getPelicula() : null;

            VentaDTO dto = new VentaDTO();
            dto.setId(v.getId());
            dto.setFecha(v.getFecha().toString());
            dto.setClienteNombre(v.getCliente() != null ? v.getCliente().getNombre() : "N/A");
            dto.setClienteEmail(v.getCliente() != null ? v.getCliente().getEmail() : "N/A");
            dto.setPeliculaTitulo(p != null ? p.getTitulo() : "?");
            dto.setPeliculaGenero(p != null ? p.getGenero().toString() : "?");
            dto.setHorario(f != null ? f.getHorario() : "?");

            result.add(dto);
        }

        return result;
    }

}

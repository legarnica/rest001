package cl.lherrera.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import cl.lherrera.model.entity.Cita;

@Repository
public class CitaDao {
    
    public List<Cita> findAll() {
        return new ArrayList<>();
    }
    
}

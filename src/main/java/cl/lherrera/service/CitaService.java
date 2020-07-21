package cl.lherrera.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.lherrera.model.dao.CitaDao;
import cl.lherrera.model.entity.Cita;

@Service
public class CitaService {
    
    @Autowired
    CitaDao citaDao;
    
    public List<Cita> obtenerCitas() {
        return citaDao.findAll();
    }

}

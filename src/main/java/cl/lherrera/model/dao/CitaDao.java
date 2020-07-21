package cl.lherrera.model.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestTemplate;

import cl.lherrera.model.entity.Cita;

@Repository
public class CitaDao {

    @Value("${servicio.citas.url}")
    private String urlServicio;
    
    // RestTemplate
    @Autowired
    private RestTemplate libreriaRestCient;
    
    @Bean
    public RestTemplate restTemplate() {
        return new RestTemplate();
    }
    // RestTemplate...
    
    
    public List<Cita> findAll() {
        Cita[] citasArray = libreriaRestCient.getForObject(urlServicio, Cita[].class);
        
        return Arrays.asList(citasArray);
    }
    
}

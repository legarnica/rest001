package cl.lherrera.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import cl.lherrera.model.entity.Cita;
import cl.lherrera.service.CitaService;

@Controller
@RequestMapping("/")
public class HomeController {
    
    CitaService servicio;

    @Autowired
    public HomeController(CitaService servicio) {
        this.servicio = servicio;
    }
    
    @GetMapping
    public String home(ModelMap modelo) {
        List<Cita> citas = servicio.obtenerCitas();
        
        modelo.put("citas", citas);
        
        return "home";
    }

}

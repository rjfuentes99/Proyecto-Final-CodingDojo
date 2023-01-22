package com.condindojo.proyecto.proyectofinal.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControladorMapa {
    
    @GetMapping("/dashboard")
    public String dashboard(){
        return "dashboard.jsp";
    }
}

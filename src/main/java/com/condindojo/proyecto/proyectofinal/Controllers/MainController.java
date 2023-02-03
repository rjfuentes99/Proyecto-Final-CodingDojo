package com.condindojo.proyecto.proyectofinal.Controllers;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.stereotype.Controller;

@Controller
public class MainController {
    
    @GetMapping("/informacion")
    public String info(){
        return "info.jsp";
    }

    @GetMapping("/atencioncliente")
    public String atc(){
        return "atc.jsp";
    }
}

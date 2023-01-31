package com.condindojo.proyecto.proyectofinal.Controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.condindojo.proyecto.proyectofinal.Models.User;
import com.condindojo.proyecto.proyectofinal.Models.Veterinary;
import com.condindojo.proyecto.proyectofinal.Service.AppService;

@Controller
public class ControladorVeterinaria {
    
    @Autowired
    private AppService servicio;
    
    @GetMapping("/new")
    public String new_course(@ModelAttribute("veterinary") Veterinary veterinary,
                                HttpSession session){

        return "newvet.jsp";                           
    }

    @PostMapping("/create")//para mostrar la informacion
    public String create_course(@Valid @ModelAttribute("veterinary") Veterinary veterinary,
                                BindingResult result,HttpSession session){


        if (result.hasErrors()) {
            return "newvet.jsp";
        }else{
            Veterinary nuevaVeterinary = servicio.save_course(veterinary);

            return "redirect:/dashboard";
        }
    }

    @GetMapping("/show/{veterinary_id}")
    public String show_course_info(@PathVariable("veterinary_id") Long veterinary_id, HttpSession session,
                             Model model){
       /*   // Revisamos que haya iniciado sesion
         User usuario_en_sesion = (User)session.getAttribute("user_session");
         if (usuario_en_sesion == null) {
             return "redirect:/"; 
         }
         // Revisamos que haya iniciado sesion*/
         
         Veterinary vet = servicio.find_course(veterinary_id);
         model.addAttribute("vetid", vet);

         return "show.jsp";
    }

}

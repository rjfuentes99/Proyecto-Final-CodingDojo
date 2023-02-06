package com.condindojo.proyecto.proyectofinal.Controllers;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.condindojo.proyecto.proyectofinal.Models.User;
import com.condindojo.proyecto.proyectofinal.Models.Veterinary;
import com.condindojo.proyecto.proyectofinal.Service.AppService;

@Controller
public class ControladorUsuario {
    
    @Autowired
    private AppService servicio;

    @GetMapping("/joinus")
    public String index(@ModelAttribute("nuevoUsuario") User nuevoUsuario){
        return "login.jsp";
    }
    // Guardamos el usuario en la base de datos
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("nuevoUsuario") User nuevoUsuario,
                            BindingResult result, HttpSession session){
        servicio.register(nuevoUsuario, result);
        if (result.hasErrors()) {
            return "login.jsp";
        }else{
            session.setAttribute("user_session", nuevoUsuario);
            return "redirect:/indexsession";
        }                        
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("user_session");
        return "redirect:/joinus";
    }

    @PostMapping("/login") // RequestParam solo para formularios normales
    public String login(@RequestParam("email") String email,
                        @RequestParam("password") String password,
                        RedirectAttributes redirectAttributes,
                        HttpSession session){
        // Necesitamos enviar email y password y que el servicio verifique que son correctos
        User usuario_login = servicio.login(email, password);
        if (usuario_login == null) {
            // Hay un error
            redirectAttributes.addFlashAttribute("error_login","El correo/password son incorrectos");
            return "redirect:/joinus";
        }else{
            // Guardamos en sesion
            session.setAttribute("user_session", usuario_login);
            return "redirect:/indexsession";
        }             
    }
    
    @GetMapping("/index")
    public String index(HttpSession session, Model model){
         // Revisamos que haya iniciado sesion

         // Revisamos que haya iniciado sesion
         
        return "index.jsp";
    }

    @GetMapping("/indexsession")
    public String indexsession(HttpSession session, Model model){
         // Revisamos que haya iniciado sesion

         // Revisamos que haya iniciado sesion
         
        return "index2.jsp";
    }
}

package com.condindojo.proyecto.proyectofinal.Controllers;


import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.condindojo.proyecto.proyectofinal.Models.User;
import com.condindojo.proyecto.proyectofinal.Service.AppService;

@Controller
public class ControladorUsuario {
    
    @Autowired
    private AppService servicio;

    @GetMapping("/")
    public String index(@ModelAttribute("nuevoUsuario") User nuevoUsuario){
        return "index.jsp";
    }
    // Guardamos el usuario en la base de datos
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("nuevoUsuario") User nuevoUsuario,
                            BindingResult result, HttpSession session){
        servicio.register(nuevoUsuario, result);
        if (result.hasErrors()) {
            return "index.jsp";
        }else{
            session.setAttribute("user_session", nuevoUsuario);
            return "redirect:/dashboard";
        }                        
    }
    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.removeAttribute("user_session");
        return "redirect:/";
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
            return "redirect:/";
        }else{
            // Guardamos en sesion
            session.setAttribute("user_session", usuario_login);
            return "redirect:/dashboard";
        }             
    }
}

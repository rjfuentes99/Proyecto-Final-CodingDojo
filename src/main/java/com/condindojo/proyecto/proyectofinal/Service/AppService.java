package com.condindojo.proyecto.proyectofinal.Service;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.condindojo.proyecto.proyectofinal.Models.User;
import com.condindojo.proyecto.proyectofinal.Models.Veterinary;
import com.condindojo.proyecto.proyectofinal.Repository.RepositorioUsuario;
import com.condindojo.proyecto.proyectofinal.Repository.RepositorioVeterinaria;



@Service
public class AppService {
    
    @Autowired
    private RepositorioUsuario repositorio_usuario;

    public User register(User nuevoUsuario, BindingResult result){

        String nuevoEmail = nuevoUsuario.getEmail();// Obtenemos el correo

        User existeUsuario = repositorio_usuario.findByEmail(nuevoEmail); // Null o objeto User

        //Verificando que el correo no exista
        if (existeUsuario != null) {
            result.rejectValue("email", "Unique", "El correo ya esta registrado");
        }
        // Comparando las contraseñas
        if (! nuevoUsuario.getPassword().equals(nuevoUsuario.getConfirm())) {
            result.rejectValue("confirm", "Matches", "Las contraseñas no coinciden");
        }

        if (!result.hasErrors()) {
            //Encriptamos contraseñá
            String contra_encri = BCrypt.hashpw(nuevoUsuario.getPassword(),BCrypt.gensalt());
            nuevoUsuario.setPassword(contra_encri);
            //Guardo Usuario
            return repositorio_usuario.save(nuevoUsuario);
        }else{
            return null;
        }
    }

    public User login(String email, String password){

        //Buscamos que el correo este en la base de datos
        User existeUsuario = repositorio_usuario.findByEmail(email); 
        if (existeUsuario == null) {
            return null;
        }

        // Comparamos contraseñas encriptadas

        if (BCrypt.checkpw(password, existeUsuario.getPassword())) {
            return existeUsuario;
        }else{
            return null;
        }
    }

    @Autowired
    private RepositorioVeterinaria repositorio_vetertinaria;

    // Me guarda en la base de datos un objeto de projecto
    public Veterinary save_veterinary(Veterinary nuevaVeterinary){
       return repositorio_vetertinaria.save(nuevaVeterinary);
    }
    // Me regresa un proyecto en base a su ID
    public Veterinary find_veterinary(Long id){
        return repositorio_vetertinaria.findById(id).orElse(null);
     }
     public void delete(Long veterinary_id){
        repositorio_vetertinaria.deleteById(veterinary_id);
    }
    public List<Veterinary> listaVeterinarias(){
        return repositorio_vetertinaria.findAll();
    }
}



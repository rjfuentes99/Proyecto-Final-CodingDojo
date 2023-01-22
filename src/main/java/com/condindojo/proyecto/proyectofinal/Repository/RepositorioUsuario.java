package com.condindojo.proyecto.proyectofinal.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.condindojo.proyecto.proyectofinal.Models.User;



@Repository
public interface RepositorioUsuario extends CrudRepository<User, Long>{
    
    User findByEmail(String email);
}

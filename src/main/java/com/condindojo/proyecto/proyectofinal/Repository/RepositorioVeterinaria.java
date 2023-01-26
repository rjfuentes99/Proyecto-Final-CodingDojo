package com.condindojo.proyecto.proyectofinal.Repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.condindojo.proyecto.proyectofinal.Models.Veterinary;

public interface RepositorioVeterinaria  extends CrudRepository <Veterinary, Long> {
    
    List<Veterinary> findAll();
}

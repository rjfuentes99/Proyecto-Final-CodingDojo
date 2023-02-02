package com.condindojo.proyecto.proyectofinal.Models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="veterinaries")
public class Veterinary {

    // atributos
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty(message = "El campo del nombre de la veterinaria es obligatorio")
    @Size(min=2, max=40, message = "El nombre de la veterinaria debe de tener entre 2 y 40 caracteres")
    private String vetname;

    @NotEmpty(message = "El campo del nombre de la descripcion es obligatorio")
    @Size(min=10, max=999)
    private String vetdescription;

    @NotEmpty
    private String vetemail;

    @NotEmpty
    private String ubicacion;

    @NotEmpty
    private String servicios;

    @Column(updatable = false)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date created_at;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date updated_at;

    // Constructor

    public Veterinary() {
    }

    // Getter y setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getVetname() {
        return vetname;
    }

    public void setVetname(String vetname) {
        this.vetname = vetname;
    }

    
    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public Date getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(Date updated_at) {
        this.updated_at = updated_at;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getServicios() {
        return servicios;
    }

    public void setServicios(String servicios) {
        this.servicios = servicios;
    }

    public String getVetdescription() {
        return vetdescription;
    }

    public void setVetdescription(String vetdescription) {
        this.vetdescription = vetdescription;
    }

    
    
}

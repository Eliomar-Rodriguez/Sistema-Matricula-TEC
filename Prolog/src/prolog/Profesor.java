/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prolog;

/**
 *
 * @author Eliomar
 */
public class Profesor {
    private String carnet;
    private String nombre;

    public Profesor(String carnet, String nombre) {
        this.carnet = carnet;
        this.nombre = nombre;
    }
    public String getCarnet() {
        return carnet;
    }

    public void setCarnet(String carnet) {
        this.carnet = carnet;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }    
}

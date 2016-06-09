package Negocio;

import accesodato.Conexion;

public class Lenguajes_programacion {
    int lenguaje_id;
    String nombre;
    String fecha_creacion;
    String estado;
    
    Conexion con;

    public Lenguajes_programacion() {
        con = new Conexion();
    }

    public int getLenguaje_id() {
        return lenguaje_id;
    }

    public void setLenguaje_id(int lenguaje_id) {
        this.lenguaje_id = lenguaje_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    public void insert(){
        con.setInsertar("insert into lenguajes_programacion(nombre,fecha_creacion,estado) values('"+this.getNombre()+"','"+this.getFecha_creacion()+"','activo' )");
    }
    
    public void delete(){
        con.setInsertar("update Lenguajes_programacion set estado='pasivo' where lenguajes_id='"+this.getLenguaje_id()+"'");
    }
    
    public void update(){
        con.setInsertar("update Lenguajes_programacion set nombre='"+this.getNombre()+"', fecha='"+this.getFecha_creacion()+"' where lenguajes_id='"+this.getLenguaje_id()+"'");
    }
    
}

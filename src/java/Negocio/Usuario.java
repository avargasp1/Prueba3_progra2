package Negocio;

import accesodato.Conexion;

public class Usuario {
    int usuario_id;
    String nombre;
    String clave;
    String estado;
    Conexion con;

    public Usuario() {
        con = new Conexion();
    }

    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    public void insert(){
        con.setInsertar("insert into ususarios(nombre, clave, estado) values('"+this.getNombre()+"','"+this.getClave()+"','activo')");
    }
    
    public void delete(){
        con.setInsertar("update usuarios set estado='pasivo' where usuario_id='"+this.getUsuario_id()+"'");
    }
    
    public void update(){
        con.setInsertar("update usuarios set nombre='"+this.getNombre()+"', clave='"+this.getClave()+"' where usuario_id='"+this.getUsuario_id()+"'");
    }
    
    
    
}

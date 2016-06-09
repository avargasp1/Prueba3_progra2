package Negocio;

import accesodato.Conexion;

public class Sis_Operativo {
    int sistema_id;
    String nombre;
    String fecha_creacion;
    int lenguaje_id;
    String estado;
    
    Conexion con;

    public Sis_Operativo() {
        con = new Conexion();
    }

    public int getSistema_id() {
        return sistema_id;
    }

    public void setSistema_id(int sistema_id) {
        this.sistema_id = sistema_id;
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

    public int getLenguaje_id() {
        return lenguaje_id;
    }

    public void setLenguaje_id(int lenguaje_id) {
        this.lenguaje_id = lenguaje_id;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    public void insert(){
        con.setInsertar("insert into sistemas_operativos(nombre,fecha,lenguaje_id,estado) values('"+this.getNombre()+"','"+this.getFecha_creacion()+"','"+this.getLenguaje_id()+"','activo')");
    }
    
    public void delete(){
        con.setInsertar("update sistemas_operativos set estado='pasivo' where sistema_id='"+this.getSistema_id()+"'"); 
    }
    
    public void update(){
        con.setInsertar("update sistemas_operativos set nombre='"+this.getNombre()+"', fecha='"+this.getFecha_creacion()+"', lenguaje_id='"+this.getLenguaje_id()+"' where sistema_id='"+this.getSistema_id()+"'");
    }
   
}

package Negocio;

import accesodato.Conexion;

public class Celular {
   int celular_id;
   String tipoChip;
   String fecha_creacion;
   int numero;
   int sistema_id;
   String estado;
   String creador;
   
   Conexion con;

    public Celular() {
        con = new Conexion();
    }

    public int getCelular_id() {
        return celular_id;
    }

    public void setCelular_id(int celular_id) {
        this.celular_id = celular_id;
    }

    public String getTipoChip() {
        return tipoChip;
    }

    public void setTipoChip(String tipoChip) {
        this.tipoChip = tipoChip;
    }

    public String getFecha_creacion() {
        return fecha_creacion;
    }

    public void setFecha_creacion(String fecha_creacion) {
        this.fecha_creacion = fecha_creacion;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getSistema_id() {
        return sistema_id;
    }

    public void setSistema_id(int sistema_id) {
        this.sistema_id = sistema_id;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getCreador() {
        return creador;
    }

    public void setCreador(String creador) {
        this.creador = creador;
    }
    
    public void insert(){
        con.setInsertar("insert into celulares(tipo_chip,fecha_creacion,numero,sistema_id,estado,creado_por) values('"+this.getTipoChip()+"','"+this.getFecha_creacion()+"','"+this.getNumero()+"','"+this.getSistema_id()+"','activo','"+this.getCreador()+"');");
    }
    
    public void delete(){
        con.setInsertar("update celulares set estado='pasivo' where celular_id='"+this.getCelular_id()+"' ");
    }
    
    public void update(){
        con.setInsertar("update celulares set tipo_chip='"+this.getTipoChip()+"',fecha='"+this.getFecha_creacion()+"',numero='"+this.getNumero()+"', sistema_id='"+this.getSistema_id()+"', creado_por='"+this.getCreador()+"' where celular_id='"+this.getCelular_id()+"'");
    }
}

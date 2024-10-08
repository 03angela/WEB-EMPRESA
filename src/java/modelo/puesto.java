/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;
import java.sql.ResultSet;
import java.util.HashMap;

/**
 *
 * @author aguin
 */
public class puesto {
    private int id_puesto;
    private String puesto;
    public puesto (int id_puesto, String puesto) {
        this.id_puesto = id_puesto;
    }

    public int getId_puesto() {
        return id_puesto;
    }

    public void setId_puesto(int id_puesto) {
        this.id_puesto = id_puesto;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }
    
    public HashMap drop_puesto () {
        
        HashMap <String, String> drop= new HashMap ();
        try {
            String query="select"
                    cn=new Conexion ();
                    cn.abrir_conexion ();
                    ResulSet consulta=cn.conexionBD.createStatement () .executeQuery (query);
                while (consulta.next ()) {
                    drop.put(consulta.getString ("id_puesto"), consulta,getString ("puesto"));
                }
        }
        catch (SQLException ex){
            System.out.println ("error" + ex.getMessage());
        return drop;
    }
    }
    
    
}

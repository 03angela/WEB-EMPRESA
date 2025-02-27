/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.table.DefaultTableModel;
/**
 *
 * @author aguin
 */
public class Empleado extends Persona {
    private String codigo;
    private int id, id_puesto;
    Conexion cn;
    public Empleado (){}
    public Empleado(String codigo, int id, int id_puesto) {
        this.codigo = codigo;
        this.id = id;
        this.id_puesto = id_puesto;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_puesto() {
        return id_puesto;
    }

    public void setId_puesto(int id_puesto) {
        this.id_puesto = id_puesto;
    }
    
    @Override
    public void agregar(){
        try {
            PreparedStatement parametro;
            cn = new Conexion();
            cn.abrir_conexion();
            String query = "INSERT INTO db_empresa2.clientes(nit,nombres,apellidos,direccion,telefono,fecha_nacimiento) VALUES (?,?,?,?,?,?);";
            parametro = (PreparedStatement) cn.conexionBD.prepareStatement(query);
            parametro.setString(1, getNit());
            parametro.setString(2, getNombres());
            parametro.setString(3, getApellidos());
            parametro.setString(4, getDireccion());
            parametro.setString(5, getTelefono());
            parametro.setString(6, this.getFecha_nacimiento());
            
            int executar = parametro.executeUpdate();
            System.out.println("Ingreso exitoso, ha afectado: "+ Integer.toString(executar));
            
            cn.cerrar_conexion();
                        
            
        } catch(SQLException ex){
            System.out.println("Algo salio mal" + ex.getMessage());
        }
     
         
    }
    
    

    /**
     *
     * @return
     */
    @Override
    public DefaultTableModel leer(){
    DefaultTableModel tabla = new DefaultTableModel();
    try{
        cn = new Conexion();
        cn.abrir_conexion();
        String query = "Insert into empleados (codigo, nombres, apellidos, direccion, telefono, fecha_nacimiento;";
        ResultSet consulta = cn.conexionBD.createStatement().executeQuery(query);
        String encabezado[] = {"id","nit","nombres","apellidos","direccion","telefono","nacimiento"};
        tabla.setColumnIdentifiers(encabezado);
        String datos[] = new String[7];
        while(consulta.next()){
            datos[0] = consulta.getString("id_cliente");
            datos[1] = consulta.getString("nit");
            datos[2] = consulta.getString("nombres");
            datos[3] = consulta.getString("apellidos");
            datos[4] = consulta.getString("direccion");
            datos[5] = consulta.getString("telefono");
            datos[6] = consulta.getString("fecha_nacimiento");
            parametro.setInt (7, getId_puesto ());
            int executar;
            retorno= executar;
            System.out.println ("INGRESO EXITOSO:" +  Integer, tpString (executar));
            cn.cerrar_conexion ();

        
    } catch(SQLException ex){
        System.out.println("Error en leer " + ex.getMessage());
    }
    
    return tabla;
}
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
    
    
    
    
}

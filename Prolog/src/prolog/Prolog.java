/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prolog;
 
import java.awt.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import org.jpl7.Query;

/**
 *
 * @author Eliomar
 */
public class Prolog {
    public static ArrayList<Profesor> listaProfesores = new ArrayList<Profesor>();
    public static ArrayList<Curso> listaCursos = new ArrayList<Curso>();
    public static void consultaPrueba(){
        String conexion = "consult('proyectoMain.pl')";
        Query con = new Query(conexion);
        //System.out.println(conexion + " " + (con.hasMoreSolutions()?"ACEPTADO":"FALLADO"));
        
        conexion();
        String consulta = "cursos(C,N,H,M).";
        Query ejecutar = new Query(consulta);
        if(ejecutar.hasSolution()){
            System.out.println(ejecutar.oneSolution().get("C" + "," + ejecutar.oneSolution().get("N")+","+ejecutar.oneSolution().get("H") + "," + ejecutar.oneSolution().get("M")));
            //System.out.println(ejecutar.oneSolution().get("R").toString());
            //System.out.println(ejecutar.oneSolution().get("R").toString());
        }
    }

/// conexion con prolog
    public static void conexion(){
        try {
            String conexion = "consult('proyectoMain.pl')";
            Query con = new Query(conexion);
            System.out.println(conexion + " " + (con.hasMoreSolutions()?"ACEPTADO":"FALLADO"));
            
            System.out.println("Iniciando la consulta");
            String consulta = "creaHorario([leguajes]).";
            Query ejecutar = new Query(consulta);
            if(ejecutar.hasSolution()){
                System.out.println(ejecutar.oneSolution().get("R").toString());
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());            
        }
    }
    public static void ejecutarConsultaCursos(Connection con) {
        try {
            String SQL = "SELECT * FROM Cursos";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);
            while (rs.next()) {
                Curso c = new Curso();
                c.setNombre(rs.getString("Nombre"));
                c.setSemestre(Integer.parseInt(rs.getString("Semestre")));
                c.setCreditos(Integer.parseInt(rs.getString("Creditos")));
                c.setTipo(rs.getString("Tipo"));
                listaCursos.add(c);
            }
            rs.close();
            stmt.close();
            String conexion = "consult('proyectoMain.pl')";
            Query conn = new Query(conexion);
            for(int i=0; i<listaCursos.size();i++){               
                
                System.out.println(conexion + " " + (conn.hasMoreSolutions()?"ACEPTADO":"FALLADO"));
                //nombre tipo cantidad creditos semestre
                String consulta = "assert(cursos("+listaCursos.get(i).getNombre()+","+listaCursos.get(i).getTipo()+","+listaCursos.get(i).getCreditos()+","+listaCursos.get(i).getSemestre()+")).";
                System.out.println(consulta);
                Query ejecutar = new Query(consulta);
                ejecutar.oneSolution();
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
   /// conexion con la base de datos
    public static Connection realizaConexion(){
        try {
            String connectionUrl = "jdbc:sqlserver://;"
                    + "database=PrologLenguajes;"
                    + "integratedSecurity=true;";
            Connection conect = DriverManager.getConnection(connectionUrl);
            //ejecutarConsulta(conect);
            return conect;
            //System.out.println("Conectado.");
        } 
        catch (SQLException ex) 
        {
            System.out.println("Error.");
        }
        return null;
    }
    /// ejemplo de consulta con sql server
    public static void ejecutarConsulta(Connection con) {
        try {
            String SQL = "SELECT * FROM Profesores;";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(SQL);

            while (rs.next()) {
                Profesor p = new Profesor(rs.getString("Carnet"), rs.getString("Nombre"));
                listaProfesores.add(p);
                System.out.println(listaProfesores.size());
            }
            System.out.println("len profes: "+listaProfesores.size());
            rs.close();
            stmt.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    
    public static void main(String[] args) {
        /// llamada a la vista donde se van a a cargar los datos
        //MainView h = new MainView();
        //h.show();
        
        //conexion();
        Vista1 v = new Vista1();
        v.show();
        ejecutarConsultaCursos(realizaConexion());
        System.out.println(listaCursos.size());
        consultaPrueba();
        //cargarCursos(realizaConexion());
        //realizaConexion
        //ejecutarConsultaProfes(realizaConexion());
        //ejecutarConsultaProfes(realizaConexion());
        //consultaPrueba();
        
        //ejecutarConsulta(con);
    }    
}

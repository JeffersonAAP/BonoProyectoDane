/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Persona;
import Persistencia.PersonaJpaController;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author JeAnA
 */
public class Persona_DAO {
    
    PersonaJpaController per;

    public Persona_DAO() {
        
        Conexion con = Conexion.getConexion();
        this.per = new PersonaJpaController(con.getBd());
        
    }
    
    public void create(Persona p) throws Exception {
        per.create(p);
    }

    public Persona read(int id) {
        return per.findPersona(id);
    }
    
    public List<Persona> readPersonas(){
        return per.findPersonaEntities();
    }
    
    public void update(Persona d){
        try {
            per.edit(d);
        } catch (Exception ex) {
            Logger.getLogger(Persona_DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void delete(int id){
        try {
            per.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(Persona_DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}

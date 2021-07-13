/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Departamento;
import Persistencia.DepartamentoJpaController;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author JeAnA
 */
public class Departamento_DAO {
    
    DepartamentoJpaController dep;

    public Departamento_DAO() {
        
        Conexion con = Conexion.getConexion();
        this.dep = new DepartamentoJpaController(con.getBd());
        
    }        
    
    public void create(Departamento d) throws Exception {
        dep.create(d);
    }

    public Departamento read(int id) {
        return dep.findDepartamento(id);
    }
    
    public List<Departamento> readDptos(){
        return dep.findDepartamentoEntities();
    }
    
    public void update(Departamento d){
        try {
            dep.edit(d);
        } catch (Exception ex) {
            Logger.getLogger(Departamento_DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void delete(int id){
        try {
            dep.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(Departamento_DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}

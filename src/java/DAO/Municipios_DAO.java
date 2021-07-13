/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Municipios;
import Persistencia.MunicipiosJpaController;
import Persistencia.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author JeAnA
 */
public class Municipios_DAO {
    
    MunicipiosJpaController mun;

    public Municipios_DAO() {
        
        Conexion con = Conexion.getConexion();
        this.mun = new MunicipiosJpaController(con.getBd());
        
    }
    
    public void create(Municipios d) throws Exception {
        mun.create(d);
    }

    public Municipios read(int id) {
        return mun.findMunicipios(id);
    }
    
    public List<Municipios> readDptos(){
        return mun.findMunicipiosEntities();
    }
    
    public void update(Municipios d){
        try {
            mun.edit(d);
        } catch (Exception ex) {
            Logger.getLogger(Municipios_DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void delete(int id){
        try {
            mun.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(Municipios_DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}

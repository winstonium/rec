/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.afcoop.rec.service.impl;

import bo.afcoop.rec.dao.AdmEnlaceDAO;
import bo.afcoop.rec.dto.AdmModulo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import bo.afcoop.rec.dao.AdmModuloDAO;
import bo.afcoop.rec.dto.AdmEnlace;
import bo.afcoop.rec.service.MenuPrincipalService;

/**
 *
 * @author winston
 */
@Service
@Transactional
public class MenuPrincipalServiceImpl implements MenuPrincipalService {
    @Autowired
    private AdmModuloDAO admModuloDAO;
    @Autowired
    private AdmEnlaceDAO admEnlaceDAO;
    @Override
    public List<AdmModulo> listarAdmModulosIntegrado() {
        return this.admModuloDAO.listarAdmModulosIntegrado();
    }
    
    @Override
    public List<AdmEnlace> listarAdmEnlacesIntegrado() {
        return this.admEnlaceDAO.listarAdmEnlacesIntegrado();
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.afcoop.rec.service.impl;

import bo.afcoop.rec.dao.AdmUsuarioDAO;
import bo.afcoop.rec.dto.AdmUsuario;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import bo.afcoop.rec.service.AdmUsuarioService;

/**
 *
 * @author winston
 */
@Service
@Transactional
public class AdmUsuarioServiceImpl implements AdmUsuarioService {

    @Autowired
    private AdmUsuarioDAO admUsuarioDAO;

    @Override
    public List<AdmUsuario> listarAdmUsuarios() {
        return this.admUsuarioDAO.listarAdmUsuarios();
    }
    @Override
    public AdmUsuario obtenerUsuario(AdmUsuario admUsuario){
        return this.admUsuarioDAO.obtenerUsuario(admUsuario);
    }
}

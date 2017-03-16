/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.afcoop.rec.dao;

import bo.afcoop.rec.dto.AdmUsuario;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Winston
 */
//@Repository
public interface AdmUsuarioDAO {
    public List<AdmUsuario> listarAdmUsuarios();
    public AdmUsuario obtenerUsuario(AdmUsuario admUsuario);
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.afcoop.rec.service;

import bo.afcoop.rec.dto.AdmEnlace;
import bo.afcoop.rec.dto.AdmModulo;
import java.util.List;

/**
 *
 * @author winston
 */
public interface MenuPrincipalService {
    public List<AdmModulo> listarAdmModulosIntegrado();
    public List<AdmEnlace> listarAdmEnlacesIntegrado();
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.afcoop.rec.dao;

import bo.afcoop.rec.dto.RegCooperativa;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Winston
 */   
//@Repository
public interface RegCooperativaDAO {
    public List<RegCooperativa> listarCooperativas();
    public RegCooperativa obtenerCooperativa(RegCooperativa regCooperativa);
}

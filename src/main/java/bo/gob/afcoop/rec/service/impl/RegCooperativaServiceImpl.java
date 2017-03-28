/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.gob.afcoop.rec.service.impl;

import bo.afcoop.rec.dao.RegCooperativaDAO;
import bo.afcoop.rec.dto.RegCooperativa;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import bo.afcoop.rec.service.RegCooperativaService;

/**
 *
 * @author winston
 */
@Service
@Transactional
public class RegCooperativaServiceImpl implements RegCooperativaService {

    @Autowired
    private RegCooperativaDAO regCooperativaDAO;

    @Override
    public List<RegCooperativa> listarCooperativas() {
        return this.regCooperativaDAO.listarCooperativas();
    }

    @Override
    public RegCooperativa obtenerCooperativa(RegCooperativa regCooperativa) {
        return this.regCooperativaDAO.obtenerCooperativa(regCooperativa);
    }
    
}

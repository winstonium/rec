/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.afcoop.rec.controller;

import bo.afcoop.rec.dto.RegCooperativa;
import bo.afcoop.rec.service.RegCooperativaService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Winston
 */
//@RestController
//@RequestMapping(value="/registros/cooperativa")
//public class RegCooperativaController0 {

//    @Autowired
//    private RegCooperativaService regCooperativaService;

//    @RequestMapping("/cooperativas")
//    public List<RegCooperativa> user() {
//        List<RegCooperativa> regCooperativas = regCooperativaService.listarCooperativas();
//        System.out.println("WIN: Listando Cooperativas.");
//        return regCooperativas;
//    }
    //OBTENER USUARIO SEGÚN PARÁMETROS DESDE LA VISTA
//    @RequestMapping(value="/{idCooperativa}", method = RequestMethod.GET)
//    public RegCooperativa doObtenerCooperativa(@PathVariable("idCooperativa") Long idCooperativa) {
//        RegCooperativa regCooperativa=new RegCooperativa();
//        regCooperativa.setIdCooperativa(idCooperativa);
//        regCooperativa = regCooperativaService.obtenerCooperativa(regCooperativa);
//        return regCooperativa;
//    }
    
//}

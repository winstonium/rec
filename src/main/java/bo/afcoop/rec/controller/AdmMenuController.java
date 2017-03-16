/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.afcoop.rec.controller;


import bo.afcoop.rec.dto.AdmEnlace;
import bo.afcoop.rec.dto.AdmMenu;
import bo.afcoop.rec.service.MenuPrincipalService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Winston
 */
@RestController
public class AdmMenuController {
 @Autowired
    private MenuPrincipalService menuPrincipalService;
    @RequestMapping(value = {"/listarEnlaces"})
    public List<AdmEnlace> doListarEnlaces() {
        List<AdmEnlace> admEnlaces = menuPrincipalService.listarAdmEnlacesIntegrado();
        for (AdmEnlace am : admEnlaces) {
            System.out.println("WIN-> ENLACE: " + am.getDescripcion());
            List<AdmMenu> admMenus = am.getAdmMenus();
            for (AdmMenu ae : admMenus) {
                System.out.println("WIN-> MENU: " + ae.getUrl());
            }
        }
        return admEnlaces;
    }
}

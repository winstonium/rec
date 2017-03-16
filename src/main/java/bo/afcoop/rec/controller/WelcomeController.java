/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.afcoop.rec.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Winston
 */
@RestController
public class WelcomeController {

    @RequestMapping(value = {"", "/", "welcome", "index"})
    public String user() {
        return "index";
    }
}

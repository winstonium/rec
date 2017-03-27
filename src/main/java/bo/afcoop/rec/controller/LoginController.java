/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bo.afcoop.rec.controller;


import bo.afcoop.rec.dto.AdmUsuario;
import bo.afcoop.rec.service.AdmUsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCrypt;

/**
 *
 * @author Winston
 * NOTA IMPORTANTE: ESTE LOGIN ES SOLO PARA ACELERAR EL DESARROLLO, SE DEBE IMPLEMENTAR AUN EL LOGIN CON 'OAUTH2'
 */
@RestController
@RequestMapping(value="/security")
public class LoginController {
    
    @Autowired
    private AdmUsuarioService admUsuarioService;

    @RequestMapping(value = "login0", method = RequestMethod.POST)
    @ResponseBody
    public Token0 doLogin(@RequestBody AdmUsuario admUsuario) {
        System.out.println("WIN: Logueando con: "+admUsuario.getIdAdmUsuario()+"     " +admUsuario.getUsuario()+" Pass: "+admUsuario.getContrasenia());
        String contrasenia=admUsuario.getContrasenia();
        admUsuario=admUsuarioService.obtenerUsuario(admUsuario);
        Token0 token0=new Token0();
        if(admUsuario!=null && contrasenia!=null){
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); //Para encriptar contraseña
            String hashedContrasenia = passwordEncoder.encode(contrasenia);
            System.out.println("PASS: "+hashedContrasenia);
            if(BCrypt.checkpw(contrasenia, admUsuario.getContrasenia())){
                token0.setState(1);
                token0.setIdAdmUsuario(admUsuario.getIdAdmUsuario());
                token0.setUsuario(admUsuario.getUsuario());
                token0.setMessage("Usuario con autorización correcta");
                token0.setAccess_token(String.valueOf(Math.random()*9999999));
            }else{
                token0.setState(0);
                token0.setMessage("Contraseña no válida");
            }            
        }else{
            token0.setState(0);
            token0.setMessage("Usuario no válido");
        }
        return token0;
    }
}
class Token0{
    private String access_token;
    private Integer state;
    private String message;
    private Long idAdmUsuario;
    private String usuario;

    public String getAccess_token() {
        return access_token;
    }

    public void setAccess_token(String access_token) {
        this.access_token = access_token;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Long getIdAdmUsuario() {
        return idAdmUsuario;
    }

    public void setIdAdmUsuario(Long idAdmUsuario) {
        this.idAdmUsuario = idAdmUsuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }
    
}

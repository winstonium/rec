package bo.afcoop.rec;

import bo.afcoop.rec.controller.AdmUsuarioController;
import bo.afcoop.rec.dao.AdmUsuarioDAO;
import bo.afcoop.rec.dto.AdmUsuario;
import java.util.List;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RecApplicationTests {

    @Test
    public void contextLoads() {
    }

    @Autowired
    private AdmUsuarioDAO admUsuarioDAO;
    //@Autowired private UserAnnotationMapper userMapper;

    @Test
    public void findAllUsers() {
        List<AdmUsuario> users = admUsuarioDAO.listarAdmUsuarios();
        assertNotNull(users);
        assertTrue(!users.isEmpty());
        System.out.println("WIN: Listado de USUARIOS.");
        users.forEach((admUsuario) -> {
            System.out.println("Id: " + admUsuario.getIdAdmUsuario() + " Usuario: " + admUsuario.getUsuario()
            );
        });
    }

}

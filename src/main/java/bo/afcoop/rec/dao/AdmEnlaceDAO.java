package bo.afcoop.rec.dao;
import bo.afcoop.rec.dto.AdmEnlace;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author winston
 */
@Repository
public interface AdmEnlaceDAO {
    public List<AdmEnlace> listarAdmEnlaces();
    public List<AdmEnlace> listarAdmEnlacesIntegrado();
}
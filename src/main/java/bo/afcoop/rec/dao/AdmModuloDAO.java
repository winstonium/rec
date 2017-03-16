package bo.afcoop.rec.dao;
import bo.afcoop.rec.dto.AdmModulo;
import java.util.List;
import org.springframework.stereotype.Repository;

/**
 *
 * @author winston
 */
@Repository
public interface AdmModuloDAO {
    public List<AdmModulo> listarAdmModulos();
    public List<AdmModulo> listarAdmModulosIntegrado();
}


/*
-- modulo por usuario
select distinct m.*
from adm_modulo m inner join (select distinct rm.adm_modulo_id 
from adm_usuario_rol ur inner join adm_rol_modulo rm on ur.adm_rol_id=rm.adm_rol_id
where ur.adm_usuario_id=2
) rolmod on m.id_adm_modulo=rolmod.adm_modulo_id


--rol por usuario
select r.*
from adm_rol r inner join adm_usuario_rol ur on r.id_adm_rol=ur.adm_usuario_id
where ur.adm_usuario_id=2;

*/
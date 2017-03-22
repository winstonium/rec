--PostgreSQL Maestro 16.6.0.8
------------------------------------------
--Host     : localhost
--Database : rec


\connect - postgres
CREATE DATABASE rec WITH TEMPLATE = template0 ENCODING = 6 TABLESPACE = pg_default;
\connect rec postgres
SET search_path = public, pg_catalog;
--
-- Data for blobs (OID = 16397) (LIMIT 0,2)
--
INSERT INTO adm_enlace (id_adm_enlace, descripcion, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 'Usuarios', 1, 1, '14/11/2016 11:33:49 a.m.', '14/11/2016 11:33:49 a.m.', 1);
INSERT INTO adm_enlace (id_adm_enlace, descripcion, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 'Usuarios 2', 1, 1, '15/11/2016 03:31:04 p.m.', '15/11/2016 03:31:04 p.m.', 1);
COMMIT;
--
-- Data for blobs (OID = 16400) (LIMIT 0,3)
--
INSERT INTO adm_enlace_menu (id_adm_enlace_menu, id_adm_enlace, id_adm_menu, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 1, 1, 1, 1, '14/11/2016 11:39:55 a.m.', '14/11/2016 11:39:55 a.m.', 1);
INSERT INTO adm_enlace_menu (id_adm_enlace_menu, id_adm_enlace, id_adm_menu, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 1, 2, 1, 1, '15/11/2016 06:24:40 p.m.', '15/11/2016 06:24:40 p.m.', 1);
INSERT INTO adm_enlace_menu (id_adm_enlace_menu, id_adm_enlace, id_adm_menu, insert_by, update_by, insert_time, update_time, estado) VALUES (3, 1, 3, 1, 1, '15/11/2016 06:24:40 p.m.', '15/11/2016 06:24:40 p.m.', 1);
COMMIT;
--
-- Data for blobs (OID = 16405) (LIMIT 0,3)
--
INSERT INTO adm_menu (id_adm_menu, descripcion, url, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 'Usuarios 2', 'usuario/AdmUsuario2', 1, 1, '15/11/2016 06:28:58 p.m.', '15/11/2016 06:28:58 p.m.', 1);
INSERT INTO adm_menu (id_adm_menu, descripcion, url, insert_by, update_by, insert_time, update_time, estado) VALUES (3, 'Usuarios 3', 'usuario/AdmUsuario3', 1, 1, '15/11/2016 06:28:58 p.m.', '15/11/2016 06:28:58 p.m.', 1);
INSERT INTO adm_menu (id_adm_menu, descripcion, url, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 'Usuarios', 'home/admin/usuario/usuarios', 1, 1, '14/11/2016 11:38:20 a.m.', '14/11/2016 11:38:20 a.m.', 1);
COMMIT;
--
-- Data for blobs (OID = 16408) (LIMIT 0,2)
--
INSERT INTO adm_modulo (id_adm_modulo, descripcion, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 'GESTION COOPERATIVAS', 1, 1, '14/11/2016 04:35:53 p.m.', '14/11/2016 04:35:53 p.m.', 1);
INSERT INTO adm_modulo (id_adm_modulo, descripcion, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 'GESTION SISTEMA', 1, 1, '14/11/2016 04:38:14 p.m.', '14/11/2016 04:38:14 p.m.', 1);
COMMIT;
--
-- Data for blobs (OID = 16411) (LIMIT 0,2)
--
INSERT INTO adm_modulo_enlace (id_adm_modulo_enlace, id_adm_modulo, id_adm_enlace, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 1, 1, 1, 1, '15/11/2016 09:26:49 a.m.', '15/11/2016 09:26:49 a.m.', 1);
INSERT INTO adm_modulo_enlace (id_adm_modulo_enlace, id_adm_modulo, id_adm_enlace, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 1, 2, 1, 1, '15/11/2016 03:32:24 p.m.', '15/11/2016 03:32:04 p.m.', 1);
COMMIT;
--
-- Data for blobs (OID = 16421) (LIMIT 0,2)
--
INSERT INTO adm_persona (id_adm_persona, ci, ap_paterno, ap_materno, ap_casada, nombres, fecha_nacimiento, insert_by, update_by, insert_time, update_time, estado) VALUES (1, '6988076', 'Quispe', 'Yujra', NULL, 'Winston', '09/12/1988', 1, 1, '19/10/2016 03:42:55 p.m.', '19/10/2016 03:42:55 p.m.', 1);
INSERT INTO adm_persona (id_adm_persona, ci, ap_paterno, ap_materno, ap_casada, nombres, fecha_nacimiento, insert_by, update_by, insert_time, update_time, estado) VALUES (2, '123456', 'Perez', 'Perez', NULL, 'Juan', '09/12/1988', 1, 1, '19/10/2016 03:42:55 p.m.', '19/10/2016 03:42:55 p.m.', 1);
COMMIT;
--
-- Data for blobs (OID = 16430) (LIMIT 0,2)
--
INSERT INTO adm_rol (id_adm_rol, rol, observacion, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 'SUPER ADMINISTRADOR', 'Rol Que se encarga de las gestion y mantenimiento del sistema', 1, 1, '19/10/2016 03:56:34 p.m.', '19/10/2016 03:56:34 p.m.', 1);
INSERT INTO adm_rol (id_adm_rol, rol, observacion, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 'ADMINISTRADOR', 'Rol de gestion de sistema', 1, 1, '14/11/2016 10:45:20 a.m.', '14/11/2016 10:45:20 a.m.', 1);
COMMIT;
--
-- Data for blobs (OID = 16434) (LIMIT 0,1)
--
INSERT INTO adm_rol_modulo (id_adm_rol_modulo, id_adm_rol, id_adm_modulo, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 2, 1, 1, 1, '14/11/2016 11:37:18 a.m.', '14/11/2016 11:37:18 a.m.', 1);
COMMIT;
--
-- Data for blobs (OID = 16443) (LIMIT 0,4)
--
INSERT INTO adm_usuario (id_adm_usuario, id_adm_persona, usuario, contrasenia, observacion, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 1, 'administrador', '68053af2923e00204c3ca7c6a3150cf7', 'Usuario que posee todo el acceso', 1, 1, '19/10/2016 04:26:18 p.m.', '19/10/2016 04:26:18 p.m.', 1);
INSERT INTO adm_usuario (id_adm_usuario, id_adm_persona, usuario, contrasenia, observacion, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 2, 'pjuan', '68053af2923e00204c3ca7c6a3150cf7', 'Usuario para administrador', 1, 1, '19/10/2016 04:26:18 p.m.', '19/10/2016 04:26:18 p.m.', 1);
INSERT INTO adm_usuario (id_adm_usuario, id_adm_persona, usuario, contrasenia, observacion, insert_by, update_by, insert_time, update_time, estado) VALUES (3, 1, 'win_1', '123', 'obs win_1', 1, 1, '21/03/2017 11:17:30 p.m.', '21/03/2017 11:17:30 p.m.', 1);
INSERT INTO adm_usuario (id_adm_usuario, id_adm_persona, usuario, contrasenia, observacion, insert_by, update_by, insert_time, update_time, estado) VALUES (5, 1, 'win_2', '123', 'obs win_2', 1, 1, '21/03/2017 11:41:07 p.m.', '21/03/2017 11:41:20 p.m.', 1);
COMMIT;
--
-- Data for blobs (OID = 16452) (LIMIT 0,2)
--
INSERT INTO adm_usuario_rol (id_adm_usuario_rol, id_adm_usuario, id_adm_rol, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 1, 1, 1, 1, '19/10/2016 04:26:52 p.m.', '19/10/2016 04:26:52 p.m.', 1);
INSERT INTO adm_usuario_rol (id_adm_usuario_rol, id_adm_usuario, id_adm_rol, insert_by, update_by, insert_time, update_time, estado) VALUES (3, 2, 2, 1, 1, '19/10/2016 04:26:18 p.m.', '19/10/2016 04:26:18 p.m.', 1);
COMMIT;
SET search_path = pg_catalog, pg_catalog;
COMMENT ON SCHEMA public IS 'standard public schema';

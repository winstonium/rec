--PostgreSQL Maestro 16.6.0.8
------------------------------------------
--Host     : localhost
--Database : rec


\connect - postgres
CREATE DATABASE rec WITH TEMPLATE = template0 ENCODING = 6 TABLESPACE = pg_default;
\connect rec postgres
-- Definition for sequence adm_cargo_id_seq (OID = 16723):
SET search_path = public, pg_catalog;
CREATE SEQUENCE adm_cargo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Structure for table adm_enlace (OID = 16725):
CREATE TABLE adm_enlace (
    id_adm_enlace integer NOT NULL,
    descripcion varchar(200),
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
) WITHOUT OIDS;
-- Structure for table adm_enlace_menu (OID = 16728):
CREATE TABLE adm_enlace_menu (
    id_adm_enlace_menu integer NOT NULL,
    id_adm_enlace integer,
    id_adm_menu integer,
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
) WITHOUT OIDS;
-- Definition for sequence adm_funcionario_id_seq (OID = 16731):
CREATE SEQUENCE adm_funcionario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Structure for table adm_menu (OID = 16733):
CREATE TABLE adm_menu (
    id_adm_menu integer NOT NULL,
    descripcion varchar(100),
    url varchar(200),
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone,
    estado integer
) WITHOUT OIDS;
-- Structure for table adm_modulo (OID = 16736):
CREATE TABLE adm_modulo (
    id_adm_modulo integer NOT NULL,
    descripcion varchar(100),
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone,
    estado integer
) WITHOUT OIDS;
-- Structure for table adm_modulo_enlace (OID = 16739):
CREATE TABLE adm_modulo_enlace (
    id_adm_modulo_enlace integer NOT NULL,
    id_adm_modulo integer,
    id_adm_enlace integer,
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
) WITHOUT OIDS;
-- Definition for sequence adm_oficina_id_seq (OID = 16742):
CREATE SEQUENCE adm_oficina_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Structure for table adm_permiso_menu (OID = 16744):
CREATE TABLE adm_permiso_menu (
    adm_permiso_menu integer NOT NULL,
    id_adm_usuario integer NOT NULL,
    id_adm_menu integer NOT NULL,
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
) WITHOUT OIDS;
-- Definition for sequence adm_persona_id_seq (OID = 16747):
CREATE SEQUENCE adm_persona_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Structure for table adm_persona (OID = 16749):
CREATE TABLE adm_persona (
    id_adm_persona integer DEFAULT nextval('adm_persona_id_seq'::regclass) NOT NULL,
    ci varchar(20) NOT NULL,
    ap_paterno varchar(100),
    ap_materno varchar(100),
    ap_casada varchar(100),
    nombres varchar(200),
    fecha_nacimiento date,
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
) WITHOUT OIDS;
-- Definition for sequence adm_rol_id_seq (OID = 16756):
CREATE SEQUENCE adm_rol_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Structure for table adm_rol (OID = 16758):
CREATE TABLE adm_rol (
    id_adm_rol integer DEFAULT nextval('adm_rol_id_seq'::regclass) NOT NULL,
    rol varchar(100),
    observacion varchar(200),
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
) WITHOUT OIDS;
-- Structure for table adm_rol_modulo (OID = 16762):
CREATE TABLE adm_rol_modulo (
    id_adm_rol_modulo integer NOT NULL,
    id_adm_rol integer,
    id_adm_modulo integer,
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
) WITHOUT OIDS;
-- Definition for sequence adm_solicita_id_seq (OID = 16765):
CREATE SEQUENCE adm_solicita_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Definition for sequence adm_unidad_id_seq (OID = 16767):
CREATE SEQUENCE adm_unidad_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Definition for sequence adm_usuario_id_seq (OID = 16769):
CREATE SEQUENCE adm_usuario_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Structure for table adm_usuario (OID = 16771):
CREATE TABLE adm_usuario (
    id_adm_usuario integer DEFAULT nextval('adm_usuario_id_seq'::regclass) NOT NULL,
    id_adm_persona integer,
    usuario varchar(250) NOT NULL,
    contrasenia varchar(100) NOT NULL,
    observacion varchar(250),
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
) WITHOUT OIDS;
-- Definition for sequence adm_usuario_rol_id_seq (OID = 16778):
CREATE SEQUENCE adm_usuario_rol_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Structure for table adm_usuario_rol (OID = 16780):
CREATE TABLE adm_usuario_rol (
    id_adm_usuario_rol integer DEFAULT nextval('adm_usuario_rol_id_seq'::regclass) NOT NULL,
    id_adm_usuario integer,
    id_adm_rol integer,
    insert_by integer,
    update_by integer,
    insert_time timestamp without time zone,
    update_time timestamp without time zone,
    estado integer
) WITHOUT OIDS;
-- Definition for sequence gen_tipo_id_seq (OID = 16784):
CREATE SEQUENCE gen_tipo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Structure for table gen_tipo (OID = 16786):
CREATE TABLE gen_tipo (
    id_gen_tipo integer DEFAULT nextval('gen_tipo_id_seq'::regclass) NOT NULL,
    tabla varchar(200),
    estado integer
) WITHOUT OIDS;
-- Definition for sequence gen_tipo_lista_id_seq (OID = 16790):
CREATE SEQUENCE gen_tipo_lista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Structure for table gen_tipo_lista (OID = 16792):
CREATE TABLE gen_tipo_lista (
    id_gen_tipo_lista integer DEFAULT nextval('gen_tipo_lista_id_seq'::regclass) NOT NULL,
    descripcion varchar(200),
    id_gen_tipo integer,
    estado integer
) WITHOUT OIDS;
-- Definition for sequence inv_categoria_id_seq (OID = 16796):
CREATE SEQUENCE inv_categoria_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Definition for sequence inv_compra_id_seq (OID = 16798):
CREATE SEQUENCE inv_compra_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Definition for sequence inv_insumo_id_seq (OID = 16800):
CREATE SEQUENCE inv_insumo_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Definition for sequence inv_inventario_id_seq (OID = 16802):
CREATE SEQUENCE inv_inventario_id_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Definition for sequence inv_pedido_id_seq (OID = 16804):
CREATE SEQUENCE inv_pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Definition for sequence inv_proveedor_id_seq (OID = 16806):
CREATE SEQUENCE inv_proveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
-- Definition for view vista_adm_usuario (OID = 16808):
CREATE VIEW vista_adm_usuario AS
    SELECT u.id_adm_usuario,
    u.usuario,
    p.id_adm_persona,
        p.ci,
    p.ap_paterno,
    p.ap_materno,
    p.nombres,
        p.fecha_nacimiento
    FROM (adm_usuario u
     JOIN adm_persona p ON (((p.id_adm_persona =
        u.id_adm_persona) AND (p.estado = 1))))
    WHERE (u.estado = 1);

-- Structure for table user_details (OID = 16885):
CREATE TABLE user_details (
    username varchar(10) NOT NULL,
    "password" varchar(32) NOT NULL
) WITHOUT OIDS;
-- Structure for table user_auth (OID = 16890):
CREATE TABLE user_auth (
    username varchar(10) NOT NULL,
    authority varchar(10) NOT NULL
) WITHOUT OIDS;
-- Structure for table reg_cooperativa (OID = 24763):
CREATE TABLE reg_cooperativa (
    id_cooperativa integer NOT NULL,
    nro_registro varchar(15) NOT NULL,
    denominacion varchar(200),
    razon_social varchar(200),
    fec_fundacion date,
    fec_reg_sirenco timestamp without time zone,
    id_clase integer,
    id_sub_clase integer
) WITHOUT OIDS;
-- Structure for table reg_sector (OID = 24768):
CREATE TABLE reg_sector (
    id_sector integer NOT NULL,
    descripcion varchar(200),
    id_usuario_registro integer NOT NULL,
    id_usuario_modificacion integer NOT NULL,
    fec_registro timestamp without time zone NOT NULL,
    fec_modificacion timestamp without time zone NOT NULL,
    estado integer
) WITHOUT OIDS;
-- Structure for table reg_clase (OID = 24774):
CREATE TABLE reg_clase (
    id_clase integer NOT NULL,
    id_sector integer,
    descripcion varchar(200),
    id_usuario_registro integer NOT NULL,
    id_usuario_modificacion integer NOT NULL,
    fec_registro timestamp without time zone NOT NULL,
    fec_modificacion timestamp without time zone NOT NULL
) WITHOUT OIDS;
-- Structure for table reg_ubicacion (OID = 24789):
CREATE TABLE reg_ubicacion (
    id_ubicacion integer NOT NULL,
    id_departamento integer,
    id_provincia integer,
    id_municipio integer,
    canton varchar(500),
    localidad integer,
    id_usuario_registro integer NOT NULL,
    id_usuario_modificacion integer NOT NULL,
    fec_registro timestamp without time zone NOT NULL,
    fec_modificacion timestamp without time zone NOT NULL,
    id_cooperativa integer
) WITHOUT OIDS;
-- Structure for table reg_departamento (OID = 24802):
CREATE TABLE reg_departamento (
    id_departamento integer NOT NULL,
    descripcion varchar(30)
) WITHOUT OIDS;
-- Structure for table reg_provincia (OID = 24807):
CREATE TABLE reg_provincia (
    id_provincia integer NOT NULL,
    id_departamento integer,
    descripcion varchar(200)
) WITHOUT OIDS;
-- Structure for table reg_municipio (OID = 24817):
CREATE TABLE reg_municipio (
    id_municipio integer NOT NULL,
    id_provincia integer,
    descripcion varchar(200)
) WITHOUT OIDS;
-- Structure for table reg_direccion (OID = 24827):
CREATE TABLE reg_direccion (
    id_direccion integer NOT NULL,
    descripcion varchar(500),
    telefono_1 varchar(30),
    telefono_2 varchar(30),
    celular_1 varchar(30),
    celular_2 varchar(30),
    correo varchar(200),
    tipo integer,
    estado integer,
    id_cooperativa integer
) WITHOUT OIDS;
--
-- Data for blobs (OID = 16725) (LIMIT 0,2)
--
INSERT INTO adm_enlace (id_adm_enlace, descripcion, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 'Usuarios', 1, 1, '14/11/2016 11:33:49', '14/11/2016 11:33:49', 1);
INSERT INTO adm_enlace (id_adm_enlace, descripcion, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 'Usuarios 2', 1, 1, '15/11/2016 15:31:04', '15/11/2016 15:31:04', 1);
COMMIT;
--
-- Data for blobs (OID = 16728) (LIMIT 0,3)
--
INSERT INTO adm_enlace_menu (id_adm_enlace_menu, id_adm_enlace, id_adm_menu, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 1, 1, 1, 1, '14/11/2016 11:39:55', '14/11/2016 11:39:55', 1);
INSERT INTO adm_enlace_menu (id_adm_enlace_menu, id_adm_enlace, id_adm_menu, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 1, 2, 1, 1, '15/11/2016 18:24:40', '15/11/2016 18:24:40', 1);
INSERT INTO adm_enlace_menu (id_adm_enlace_menu, id_adm_enlace, id_adm_menu, insert_by, update_by, insert_time, update_time, estado) VALUES (3, 1, 3, 1, 1, '15/11/2016 18:24:40', '15/11/2016 18:24:40', 1);
COMMIT;
--
-- Data for blobs (OID = 16733) (LIMIT 0,3)
--
INSERT INTO adm_menu (id_adm_menu, descripcion, url, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 'Usuarios 2', 'gestionusuarios/AdmUsuario2', 1, 1, '15/11/2016 18:28:58', '15/11/2016 18:28:58', 1);
INSERT INTO adm_menu (id_adm_menu, descripcion, url, insert_by, update_by, insert_time, update_time, estado) VALUES (3, 'Usuarios 3', 'gestionusuarios/AdmUsuario3', 1, 1, '15/11/2016 18:28:58', '15/11/2016 18:28:58', 1);
INSERT INTO adm_menu (id_adm_menu, descripcion, url, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 'Usuarios', 'home/admin/usuario/usuarios', 1, 1, '14/11/2016 11:38:20', '14/11/2016 11:38:20', 1);
COMMIT;
--
-- Data for blobs (OID = 16736) (LIMIT 0,2)
--
INSERT INTO adm_modulo (id_adm_modulo, descripcion, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 'GESTION COOPERATIVAS', 1, 1, '14/11/2016 16:35:53', '14/11/2016 16:35:53', 1);
INSERT INTO adm_modulo (id_adm_modulo, descripcion, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 'GESTION SISTEMA', 1, 1, '14/11/2016 16:38:14', '14/11/2016 16:38:14', 1);
COMMIT;
--
-- Data for blobs (OID = 16739) (LIMIT 0,2)
--
INSERT INTO adm_modulo_enlace (id_adm_modulo_enlace, id_adm_modulo, id_adm_enlace, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 1, 1, 1, 1, '15/11/2016 9:26:49', '15/11/2016 9:26:49', 1);
INSERT INTO adm_modulo_enlace (id_adm_modulo_enlace, id_adm_modulo, id_adm_enlace, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 1, 2, 1, 1, '15/11/2016 15:32:24', '15/11/2016 15:32:04', 1);
COMMIT;
--
-- Data for blobs (OID = 16749) (LIMIT 0,2)
--
INSERT INTO adm_persona (id_adm_persona, ci, ap_paterno, ap_materno, ap_casada, nombres, fecha_nacimiento, insert_by, update_by, insert_time, update_time, estado) VALUES (1, '6988076', 'Quispe', 'Yujra', NULL, 'Winston', '09/12/1988', 1, 1, '19/10/2016 15:42:55', '19/10/2016 15:42:55', 1);
INSERT INTO adm_persona (id_adm_persona, ci, ap_paterno, ap_materno, ap_casada, nombres, fecha_nacimiento, insert_by, update_by, insert_time, update_time, estado) VALUES (2, '123456', 'Perez', 'Perez', NULL, 'Juan', '09/12/1988', 1, 1, '19/10/2016 15:42:55', '19/10/2016 15:42:55', 1);
COMMIT;
--
-- Data for blobs (OID = 16758) (LIMIT 0,2)
--
INSERT INTO adm_rol (id_adm_rol, rol, observacion, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 'SUPER ADMINISTRADOR', 'Rol Que se encarga de las gestion y mantenimiento del sistema', 1, 1, '19/10/2016 15:56:34', '19/10/2016 15:56:34', 1);
INSERT INTO adm_rol (id_adm_rol, rol, observacion, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 'ADMINISTRADOR', 'Rol de gestion de sistema', 1, 1, '14/11/2016 10:45:20', '14/11/2016 10:45:20', 1);
COMMIT;
--
-- Data for blobs (OID = 16762) (LIMIT 0,1)
--
INSERT INTO adm_rol_modulo (id_adm_rol_modulo, id_adm_rol, id_adm_modulo, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 2, 1, 1, 1, '14/11/2016 11:37:18', '14/11/2016 11:37:18', 1);
COMMIT;
--
-- Data for blobs (OID = 16771) (LIMIT 0,5)
--
INSERT INTO adm_usuario (id_adm_usuario, id_adm_persona, usuario, contrasenia, observacion, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 2, 'admin', '$2a$10$Jqhs.1Tiwvi6H9kT84j3leQ.qvVBVVUzvpPN3Z6SQsUnlzlFeNdzO', 'Usuario para administrador', 1, 1, '19/10/2016 16:26:18', '19/10/2016 16:26:18', 1);
INSERT INTO adm_usuario (id_adm_usuario, id_adm_persona, usuario, contrasenia, observacion, insert_by, update_by, insert_time, update_time, estado) VALUES (5, 2, 'mmurillo', '$2a$10$KEN7JOPplRNKOo9LYPBEpuv9mgTSMlGhjQYHbKRMuwBZ4aLMA7Fpi', '1243', 1243, 1243, '07/03/2017', '07/03/2017', 1);
INSERT INTO adm_usuario (id_adm_usuario, id_adm_persona, usuario, contrasenia, observacion, insert_by, update_by, insert_time, update_time, estado) VALUES (4, 2, 'jrodriguez', '$2a$10$KEN7JOPplRNKOo9LYPBEpuv9mgTSMlGhjQYHbKRMuwBZ4aLMA7Fpi', NULL, 1, 1, '07/03/2017', '07/03/2017', 1);
INSERT INTO adm_usuario (id_adm_usuario, id_adm_persona, usuario, contrasenia, observacion, insert_by, update_by, insert_time, update_time, estado) VALUES (3, 2, 'wquispe', '$2a$10$KEN7JOPplRNKOo9LYPBEpuv9mgTSMlGhjQYHbKRMuwBZ4aLMA7Fpi', NULL, 1, 1, '07/03/2017', '07/03/2017', 1);
INSERT INTO adm_usuario (id_adm_usuario, id_adm_persona, usuario, contrasenia, observacion, insert_by, update_by, insert_time, update_time, estado) VALUES (1, 1, 'administrador', '$2a$10$Jqhs.1Tiwvi6H9kT84j3leQ.qvVBVVUzvpPN3Z6SQsUnlzlFeNdzO', 'Usuario que posee todo el acceso', 1, 1, '19/10/2016 16:26:18', '19/10/2016 16:26:18', 1);
COMMIT;
--
-- Data for blobs (OID = 16780) (LIMIT 0,2)
--
INSERT INTO adm_usuario_rol (id_adm_usuario_rol, id_adm_usuario, id_adm_rol, insert_by, update_by, insert_time, update_time, estado) VALUES (2, 1, 1, 1, 1, '19/10/2016 16:26:52', '19/10/2016 16:26:52', 1);
INSERT INTO adm_usuario_rol (id_adm_usuario_rol, id_adm_usuario, id_adm_rol, insert_by, update_by, insert_time, update_time, estado) VALUES (3, 2, 2, 1, 1, '19/10/2016 16:26:18', '19/10/2016 16:26:18', 1);
COMMIT;
--
-- Data for blobs (OID = 16885) (LIMIT 0,2)
--
INSERT INTO user_details (username, "password") VALUES ('user', '123');
INSERT INTO user_details (username, "password") VALUES ('admin', 'admin');
COMMIT;
--
-- Data for blobs (OID = 16890) (LIMIT 0,2)
--
INSERT INTO user_auth (username, authority) VALUES ('user', 'ROLE_USER');
INSERT INTO user_auth (username, authority) VALUES ('admin', 'ROLE_ADMIN');
COMMIT;
-- Definition for index user_details_pkey (OID = 16888):
ALTER TABLE ONLY user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (username);
-- Definition for index user_auth_username_fkey (OID = 16893):
ALTER TABLE ONLY user_auth
    ADD CONSTRAINT user_auth_username_fkey FOREIGN KEY (username) REFERENCES user_details(username);
-- Definition for index reg_cooperativa_pkey (OID = 24766):
ALTER TABLE ONLY reg_cooperativa
    ADD CONSTRAINT reg_cooperativa_pkey PRIMARY KEY (id_cooperativa);
-- Definition for index reg_rector_pkey (OID = 24771):
ALTER TABLE ONLY reg_sector
    ADD CONSTRAINT reg_rector_pkey PRIMARY KEY (id_sector);
-- Definition for index reg_clase_pkey (OID = 24777):
ALTER TABLE ONLY reg_clase
    ADD CONSTRAINT reg_clase_pkey PRIMARY KEY (id_clase);
-- Definition for index foreign_key01 (OID = 24779):
ALTER TABLE ONLY reg_clase
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_sector) REFERENCES reg_sector(id_sector) ON UPDATE CASCADE ON DELETE CASCADE;
-- Definition for index foreign_key01 (OID = 24784):
ALTER TABLE ONLY reg_cooperativa
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_clase) REFERENCES reg_clase(id_clase);
-- Definition for index reg_datos_generales_pkey (OID = 24795):
ALTER TABLE ONLY reg_ubicacion
    ADD CONSTRAINT reg_datos_generales_pkey PRIMARY KEY (id_ubicacion);
-- Definition for index foreign_key01 (OID = 24797):
ALTER TABLE ONLY reg_ubicacion
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_cooperativa) REFERENCES reg_cooperativa(id_cooperativa);
-- Definition for index reg_departamento_pkey (OID = 24805):
ALTER TABLE ONLY reg_departamento
    ADD CONSTRAINT reg_departamento_pkey PRIMARY KEY (id_departamento);
-- Definition for index reg_provincia_pkey (OID = 24810):
ALTER TABLE ONLY reg_provincia
    ADD CONSTRAINT reg_provincia_pkey PRIMARY KEY (id_provincia);
-- Definition for index foreign_key01 (OID = 24812):
ALTER TABLE ONLY reg_provincia
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_departamento) REFERENCES reg_departamento(id_departamento);
-- Definition for index reg_seccion_pkey (OID = 24820):
ALTER TABLE ONLY reg_municipio
    ADD CONSTRAINT reg_seccion_pkey PRIMARY KEY (id_municipio);
-- Definition for index foreign_key01 (OID = 24822):
ALTER TABLE ONLY reg_municipio
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_provincia) REFERENCES reg_provincia(id_provincia);
-- Definition for index reg_direccion_pkey (OID = 24833):
ALTER TABLE ONLY reg_direccion
    ADD CONSTRAINT reg_direccion_pkey PRIMARY KEY (id_direccion);
-- Definition for index foreign_key01 (OID = 24835):
ALTER TABLE ONLY reg_direccion
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_cooperativa) REFERENCES reg_cooperativa(id_cooperativa);
-- Definition for index foreign_key02 (OID = 24840):
ALTER TABLE ONLY reg_ubicacion
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_departamento) REFERENCES reg_departamento(id_departamento);
-- Definition for index foreign_key03 (OID = 24845):
ALTER TABLE ONLY reg_ubicacion
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_provincia) REFERENCES reg_provincia(id_provincia);
-- Definition for index foreign_key04 (OID = 24850):
ALTER TABLE ONLY reg_ubicacion
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (id_municipio) REFERENCES reg_municipio(id_municipio);
SET search_path = pg_catalog, pg_catalog;
COMMENT ON SCHEMA public IS 'standard public schema';
--
-- Comments
--
SET search_path = public, pg_catalog;
COMMENT ON SEQUENCE adm_cargo_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON SEQUENCE adm_funcionario_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON SEQUENCE adm_oficina_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON TABLE adm_permiso_menu IS 'tabla para gestionar usuarios con permisos restringidos a menus';
COMMENT ON SEQUENCE adm_persona_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON SEQUENCE adm_solicita_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON SEQUENCE adm_unidad_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON SEQUENCE adm_usuario_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON SEQUENCE gen_tipo_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON SEQUENCE gen_tipo_lista_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON SEQUENCE inv_categoria_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON SEQUENCE inv_compra_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON SEQUENCE inv_insumo_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON SEQUENCE inv_inventario_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON SEQUENCE inv_pedido_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON SEQUENCE inv_proveedor_id_seq IS 'DbWrench Autogenerated Sequence.';
COMMENT ON COLUMN reg_cooperativa.fec_reg_sirenco IS 'fecha registro en sirenco
';
COMMENT ON COLUMN reg_sector.descripcion IS 'Descripcion o nombre del sector
';
COMMENT ON COLUMN reg_clase.descripcion IS 'Descripcion o nombre de la clase
';
COMMENT ON COLUMN reg_ubicacion.id_cooperativa IS 'Datos generales de Id de  cooperativa';
COMMENT ON COLUMN reg_direccion.descripcion IS 'Direccion a registrar de la cooperativa';
COMMENT ON COLUMN reg_direccion.telefono_1 IS 'telefono de esta direccion';
COMMENT ON COLUMN reg_direccion.correo IS 'correo institucional depende de cada direccion, elegir de la lista que se tendra o a cual enviar';
COMMENT ON COLUMN reg_direccion.tipo IS '0:Dimicilio legal
1: direcciones circunstanciales (notificaciones y otros).';

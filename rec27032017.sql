--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6beta2

-- Started on 2017-03-27 18:34:45

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2326 (class 1262 OID 16721)
-- Dependencies: 2325
-- Name: rec; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE rec IS 'Prueba para ingresar';


--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2328 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 185 (class 1259 OID 16723)
-- Name: adm_cargo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adm_cargo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm_cargo_id_seq OWNER TO postgres;

--
-- TOC entry 2329 (class 0 OID 0)
-- Dependencies: 185
-- Name: SEQUENCE adm_cargo_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE adm_cargo_id_seq IS 'DbWrench Autogenerated Sequence.';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 186 (class 1259 OID 16725)
-- Name: adm_enlace; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE adm_enlace (
    id_adm_enlace integer NOT NULL,
    descripcion character varying(200),
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
);


ALTER TABLE adm_enlace OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16728)
-- Name: adm_enlace_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE adm_enlace_menu (
    id_adm_enlace_menu integer NOT NULL,
    id_adm_enlace integer,
    id_adm_menu integer,
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
);


ALTER TABLE adm_enlace_menu OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16731)
-- Name: adm_funcionario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adm_funcionario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm_funcionario_id_seq OWNER TO postgres;

--
-- TOC entry 2330 (class 0 OID 0)
-- Dependencies: 188
-- Name: SEQUENCE adm_funcionario_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE adm_funcionario_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 189 (class 1259 OID 16733)
-- Name: adm_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE adm_menu (
    id_adm_menu integer NOT NULL,
    descripcion character varying(100),
    url character varying(200),
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone,
    estado integer
);


ALTER TABLE adm_menu OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16736)
-- Name: adm_modulo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE adm_modulo (
    id_adm_modulo integer NOT NULL,
    descripcion character varying(100),
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone,
    estado integer
);


ALTER TABLE adm_modulo OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 16739)
-- Name: adm_modulo_enlace; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE adm_modulo_enlace (
    id_adm_modulo_enlace integer NOT NULL,
    id_adm_modulo integer,
    id_adm_enlace integer,
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
);


ALTER TABLE adm_modulo_enlace OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 16742)
-- Name: adm_oficina_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adm_oficina_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm_oficina_id_seq OWNER TO postgres;

--
-- TOC entry 2331 (class 0 OID 0)
-- Dependencies: 192
-- Name: SEQUENCE adm_oficina_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE adm_oficina_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 193 (class 1259 OID 16744)
-- Name: adm_permiso_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE adm_permiso_menu (
    adm_permiso_menu integer NOT NULL,
    id_adm_usuario integer NOT NULL,
    id_adm_menu integer NOT NULL,
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
);


ALTER TABLE adm_permiso_menu OWNER TO postgres;

--
-- TOC entry 2332 (class 0 OID 0)
-- Dependencies: 193
-- Name: TABLE adm_permiso_menu; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE adm_permiso_menu IS 'tabla para gestionar usuarios con permisos restringidos a menus';


--
-- TOC entry 194 (class 1259 OID 16747)
-- Name: adm_persona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adm_persona_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm_persona_id_seq OWNER TO postgres;

--
-- TOC entry 2333 (class 0 OID 0)
-- Dependencies: 194
-- Name: SEQUENCE adm_persona_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE adm_persona_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 195 (class 1259 OID 16749)
-- Name: adm_persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE adm_persona (
    id_adm_persona integer DEFAULT nextval('adm_persona_id_seq'::regclass) NOT NULL,
    ci character varying(20) NOT NULL,
    ap_paterno character varying(100),
    ap_materno character varying(100),
    ap_casada character varying(100),
    nombres character varying(200),
    fecha_nacimiento date,
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
);


ALTER TABLE adm_persona OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16756)
-- Name: adm_rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adm_rol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm_rol_id_seq OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16758)
-- Name: adm_rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE adm_rol (
    id_adm_rol integer DEFAULT nextval('adm_rol_id_seq'::regclass) NOT NULL,
    rol character varying(100),
    observacion character varying(200),
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
);


ALTER TABLE adm_rol OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16762)
-- Name: adm_rol_modulo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE adm_rol_modulo (
    id_adm_rol_modulo integer NOT NULL,
    id_adm_rol integer,
    id_adm_modulo integer,
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
);


ALTER TABLE adm_rol_modulo OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16765)
-- Name: adm_solicita_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adm_solicita_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm_solicita_id_seq OWNER TO postgres;

--
-- TOC entry 2334 (class 0 OID 0)
-- Dependencies: 199
-- Name: SEQUENCE adm_solicita_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE adm_solicita_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 200 (class 1259 OID 16767)
-- Name: adm_unidad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adm_unidad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm_unidad_id_seq OWNER TO postgres;

--
-- TOC entry 2335 (class 0 OID 0)
-- Dependencies: 200
-- Name: SEQUENCE adm_unidad_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE adm_unidad_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 201 (class 1259 OID 16769)
-- Name: adm_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adm_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm_usuario_id_seq OWNER TO postgres;

--
-- TOC entry 2336 (class 0 OID 0)
-- Dependencies: 201
-- Name: SEQUENCE adm_usuario_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE adm_usuario_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 202 (class 1259 OID 16771)
-- Name: adm_usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE adm_usuario (
    id_adm_usuario integer DEFAULT nextval('adm_usuario_id_seq'::regclass) NOT NULL,
    id_adm_persona integer,
    usuario character varying(250) NOT NULL,
    contrasenia character varying(100) NOT NULL,
    observacion character varying(250),
    insert_by integer NOT NULL,
    update_by integer NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone NOT NULL,
    estado integer
);


ALTER TABLE adm_usuario OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16778)
-- Name: adm_usuario_rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE adm_usuario_rol_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE adm_usuario_rol_id_seq OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16780)
-- Name: adm_usuario_rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE adm_usuario_rol (
    id_adm_usuario_rol integer DEFAULT nextval('adm_usuario_rol_id_seq'::regclass) NOT NULL,
    id_adm_usuario integer,
    id_adm_rol integer,
    insert_by integer,
    update_by integer,
    insert_time timestamp without time zone,
    update_time timestamp without time zone,
    estado integer
);


ALTER TABLE adm_usuario_rol OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16784)
-- Name: gen_tipo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gen_tipo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gen_tipo_id_seq OWNER TO postgres;

--
-- TOC entry 2337 (class 0 OID 0)
-- Dependencies: 205
-- Name: SEQUENCE gen_tipo_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE gen_tipo_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 206 (class 1259 OID 16786)
-- Name: gen_tipo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE gen_tipo (
    id_gen_tipo integer DEFAULT nextval('gen_tipo_id_seq'::regclass) NOT NULL,
    tabla character varying(200),
    estado integer
);


ALTER TABLE gen_tipo OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16790)
-- Name: gen_tipo_lista_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gen_tipo_lista_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gen_tipo_lista_id_seq OWNER TO postgres;

--
-- TOC entry 2338 (class 0 OID 0)
-- Dependencies: 207
-- Name: SEQUENCE gen_tipo_lista_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE gen_tipo_lista_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 208 (class 1259 OID 16792)
-- Name: gen_tipo_lista; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE gen_tipo_lista (
    id_gen_tipo_lista integer DEFAULT nextval('gen_tipo_lista_id_seq'::regclass) NOT NULL,
    descripcion character varying(200),
    id_gen_tipo integer,
    estado integer
);


ALTER TABLE gen_tipo_lista OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16796)
-- Name: inv_categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE inv_categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inv_categoria_id_seq OWNER TO postgres;

--
-- TOC entry 2339 (class 0 OID 0)
-- Dependencies: 209
-- Name: SEQUENCE inv_categoria_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE inv_categoria_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 210 (class 1259 OID 16798)
-- Name: inv_compra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE inv_compra_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inv_compra_id_seq OWNER TO postgres;

--
-- TOC entry 2340 (class 0 OID 0)
-- Dependencies: 210
-- Name: SEQUENCE inv_compra_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE inv_compra_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 211 (class 1259 OID 16800)
-- Name: inv_insumo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE inv_insumo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inv_insumo_id_seq OWNER TO postgres;

--
-- TOC entry 2341 (class 0 OID 0)
-- Dependencies: 211
-- Name: SEQUENCE inv_insumo_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE inv_insumo_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 212 (class 1259 OID 16802)
-- Name: inv_inventario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE inv_inventario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inv_inventario_id_seq OWNER TO postgres;

--
-- TOC entry 2342 (class 0 OID 0)
-- Dependencies: 212
-- Name: SEQUENCE inv_inventario_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE inv_inventario_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 213 (class 1259 OID 16804)
-- Name: inv_pedido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE inv_pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inv_pedido_id_seq OWNER TO postgres;

--
-- TOC entry 2343 (class 0 OID 0)
-- Dependencies: 213
-- Name: SEQUENCE inv_pedido_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE inv_pedido_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 214 (class 1259 OID 16806)
-- Name: inv_proveedor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE inv_proveedor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inv_proveedor_id_seq OWNER TO postgres;

--
-- TOC entry 2344 (class 0 OID 0)
-- Dependencies: 214
-- Name: SEQUENCE inv_proveedor_id_seq; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON SEQUENCE inv_proveedor_id_seq IS 'DbWrench Autogenerated Sequence.';


--
-- TOC entry 220 (class 1259 OID 24774)
-- Name: reg_clase; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reg_clase (
    id_clase integer NOT NULL,
    id_sector integer,
    descripcion character varying(200),
    id_usuario_registro integer NOT NULL,
    id_usuario_modificacion integer NOT NULL,
    fec_registro timestamp without time zone NOT NULL,
    fec_modificacion timestamp without time zone NOT NULL
);


ALTER TABLE reg_clase OWNER TO postgres;

--
-- TOC entry 2345 (class 0 OID 0)
-- Dependencies: 220
-- Name: COLUMN reg_clase.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN reg_clase.descripcion IS 'Descripcion o nombre de la clase
';


--
-- TOC entry 218 (class 1259 OID 24763)
-- Name: reg_cooperativa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reg_cooperativa (
    id_cooperativa integer NOT NULL,
    nro_registro character varying(15) NOT NULL,
    denominacion character varying(200),
    razon_social character varying(200),
    fec_fundacion date,
    fec_reg_sirenco timestamp without time zone,
    id_clase integer,
    id_sub_clase integer
);


ALTER TABLE reg_cooperativa OWNER TO postgres;

--
-- TOC entry 2346 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN reg_cooperativa.fec_reg_sirenco; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN reg_cooperativa.fec_reg_sirenco IS 'fecha registro en sirenco
';


--
-- TOC entry 222 (class 1259 OID 24802)
-- Name: reg_departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reg_departamento (
    id_departamento integer NOT NULL,
    descripcion character varying(30)
);


ALTER TABLE reg_departamento OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 24827)
-- Name: reg_direccion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reg_direccion (
    id_direccion integer NOT NULL,
    descripcion character varying(500),
    telefono_1 character varying(30),
    telefono_2 character varying(30),
    celular_1 character varying(30),
    celular_2 character varying(30),
    correo character varying(200),
    tipo integer,
    estado integer,
    id_cooperativa integer
);


ALTER TABLE reg_direccion OWNER TO postgres;

--
-- TOC entry 2347 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN reg_direccion.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN reg_direccion.descripcion IS 'Direccion a registrar de la cooperativa';


--
-- TOC entry 2348 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN reg_direccion.telefono_1; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN reg_direccion.telefono_1 IS 'telefono de esta direccion';


--
-- TOC entry 2349 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN reg_direccion.correo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN reg_direccion.correo IS 'correo institucional depende de cada direccion, elegir de la lista que se tendra o a cual enviar';


--
-- TOC entry 2350 (class 0 OID 0)
-- Dependencies: 225
-- Name: COLUMN reg_direccion.tipo; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN reg_direccion.tipo IS '0:Dimicilio legal
1: direcciones circunstanciales (notificaciones y otros).';


--
-- TOC entry 224 (class 1259 OID 24817)
-- Name: reg_municipio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reg_municipio (
    id_municipio integer NOT NULL,
    id_provincia integer,
    descripcion character varying(200)
);


ALTER TABLE reg_municipio OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24807)
-- Name: reg_provincia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reg_provincia (
    id_provincia integer NOT NULL,
    id_departamento integer,
    descripcion character varying(200)
);


ALTER TABLE reg_provincia OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24768)
-- Name: reg_sector; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reg_sector (
    id_sector integer NOT NULL,
    descripcion character varying(200),
    id_usuario_registro integer NOT NULL,
    id_usuario_modificacion integer NOT NULL,
    fec_registro timestamp without time zone NOT NULL,
    fec_modificacion timestamp without time zone NOT NULL,
    estado integer
);


ALTER TABLE reg_sector OWNER TO postgres;

--
-- TOC entry 2351 (class 0 OID 0)
-- Dependencies: 219
-- Name: COLUMN reg_sector.descripcion; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN reg_sector.descripcion IS 'Descripcion o nombre del sector
';


--
-- TOC entry 221 (class 1259 OID 24789)
-- Name: reg_ubicacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE reg_ubicacion (
    id_ubicacion integer NOT NULL,
    id_departamento integer,
    id_provincia integer,
    id_municipio integer,
    canton character varying(500),
    localidad integer,
    id_usuario_registro integer NOT NULL,
    id_usuario_modificacion integer NOT NULL,
    fec_registro timestamp without time zone NOT NULL,
    fec_modificacion timestamp without time zone NOT NULL,
    id_cooperativa integer
);


ALTER TABLE reg_ubicacion OWNER TO postgres;

--
-- TOC entry 2352 (class 0 OID 0)
-- Dependencies: 221
-- Name: COLUMN reg_ubicacion.id_cooperativa; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON COLUMN reg_ubicacion.id_cooperativa IS 'Datos generales de Id de  cooperativa';


--
-- TOC entry 217 (class 1259 OID 16890)
-- Name: user_auth; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE user_auth (
    username character varying(10) NOT NULL,
    authority character varying(10) NOT NULL
);


ALTER TABLE user_auth OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16885)
-- Name: user_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE user_details (
    username character varying(10) NOT NULL,
    password character varying(32) NOT NULL
);


ALTER TABLE user_details OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16808)
-- Name: vista_adm_usuario; Type: VIEW; Schema: public; Owner: postgres
--

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
     JOIN adm_persona p ON (((p.id_adm_persona = u.id_adm_persona) AND (p.estado = 1))))
  WHERE (u.estado = 1);


ALTER TABLE vista_adm_usuario OWNER TO postgres;

--
-- TOC entry 2353 (class 0 OID 0)
-- Dependencies: 185
-- Name: adm_cargo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adm_cargo_id_seq', 1, false);


--
-- TOC entry 2282 (class 0 OID 16725)
-- Dependencies: 186
-- Data for Name: adm_enlace; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY adm_enlace (id_adm_enlace, descripcion, insert_by, update_by, insert_time, update_time, estado) FROM stdin;
1	Usuarios	1	1	2016-11-14 11:33:49.827061	2016-11-14 11:33:49.827061	1
2	Usuarios 2	1	1	2016-11-15 15:31:04.03322	2016-11-15 15:31:04.03322	1
\.


--
-- TOC entry 2283 (class 0 OID 16728)
-- Dependencies: 187
-- Data for Name: adm_enlace_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY adm_enlace_menu (id_adm_enlace_menu, id_adm_enlace, id_adm_menu, insert_by, update_by, insert_time, update_time, estado) FROM stdin;
1	1	1	1	1	2016-11-14 11:39:55.23939	2016-11-14 11:39:55.23939	1
2	1	2	1	1	2016-11-15 18:24:40.865159	2016-11-15 18:24:40.865159	1
3	1	3	1	1	2016-11-15 18:24:40.946188	2016-11-15 18:24:40.946188	1
\.


--
-- TOC entry 2354 (class 0 OID 0)
-- Dependencies: 188
-- Name: adm_funcionario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adm_funcionario_id_seq', 1, false);


--
-- TOC entry 2285 (class 0 OID 16733)
-- Dependencies: 189
-- Data for Name: adm_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY adm_menu (id_adm_menu, descripcion, url, insert_by, update_by, insert_time, update_time, estado) FROM stdin;
2	Usuarios 2	gestionusuarios/AdmUsuario2	1	1	2016-11-15 18:28:58.247303	2016-11-15 18:28:58.247303	1
3	Usuarios 3	gestionusuarios/AdmUsuario3	1	1	2016-11-15 18:28:58.271282	2016-11-15 18:28:58.271282	1
1	Usuarios	home/admin/usuario/usuarios	1	1	2016-11-14 11:38:20.627845	2016-11-14 11:38:20.627845	1
\.


--
-- TOC entry 2286 (class 0 OID 16736)
-- Dependencies: 190
-- Data for Name: adm_modulo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY adm_modulo (id_adm_modulo, descripcion, insert_by, update_by, insert_time, update_time, estado) FROM stdin;
2	GESTION COOPERATIVAS	1	1	2016-11-14 16:35:53.70609	2016-11-14 16:35:53.70609	1
1	GESTION SISTEMA	1	1	2016-11-14 16:38:14.791315	2016-11-14 16:38:14.791315	1
\.


--
-- TOC entry 2287 (class 0 OID 16739)
-- Dependencies: 191
-- Data for Name: adm_modulo_enlace; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY adm_modulo_enlace (id_adm_modulo_enlace, id_adm_modulo, id_adm_enlace, insert_by, update_by, insert_time, update_time, estado) FROM stdin;
1	1	1	1	1	2016-11-15 09:26:49.912308	2016-11-15 09:26:49.912308	1
2	1	2	1	1	2016-11-15 15:32:24.51176	2016-11-15 15:32:04.265	1
\.


--
-- TOC entry 2355 (class 0 OID 0)
-- Dependencies: 192
-- Name: adm_oficina_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adm_oficina_id_seq', 1, true);


--
-- TOC entry 2289 (class 0 OID 16744)
-- Dependencies: 193
-- Data for Name: adm_permiso_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY adm_permiso_menu (adm_permiso_menu, id_adm_usuario, id_adm_menu, insert_by, update_by, insert_time, update_time, estado) FROM stdin;
\.


--
-- TOC entry 2291 (class 0 OID 16749)
-- Dependencies: 195
-- Data for Name: adm_persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY adm_persona (id_adm_persona, ci, ap_paterno, ap_materno, ap_casada, nombres, fecha_nacimiento, insert_by, update_by, insert_time, update_time, estado) FROM stdin;
1	6988076	Quispe	Yujra	\N	Winston	1988-12-09	1	1	2016-10-19 15:42:55.339782	2016-10-19 15:42:55.339782	1
2	123456	Perez	Perez	\N	Juan	1988-12-09	1	1	2016-10-19 15:42:55.339782	2016-10-19 15:42:55.339782	1
\.


--
-- TOC entry 2356 (class 0 OID 0)
-- Dependencies: 194
-- Name: adm_persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adm_persona_id_seq', 1, true);


--
-- TOC entry 2293 (class 0 OID 16758)
-- Dependencies: 197
-- Data for Name: adm_rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY adm_rol (id_adm_rol, rol, observacion, insert_by, update_by, insert_time, update_time, estado) FROM stdin;
1	SUPER ADMINISTRADOR	Rol Que se encarga de las gestion y mantenimiento del sistema	1	1	2016-10-19 15:56:34.564441	2016-10-19 15:56:34.564441	1
2	ADMINISTRADOR	Rol de gestion de sistema	1	1	2016-11-14 10:45:20.934941	2016-11-14 10:45:20.934941	1
\.


--
-- TOC entry 2357 (class 0 OID 0)
-- Dependencies: 196
-- Name: adm_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adm_rol_id_seq', 2, true);


--
-- TOC entry 2294 (class 0 OID 16762)
-- Dependencies: 198
-- Data for Name: adm_rol_modulo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY adm_rol_modulo (id_adm_rol_modulo, id_adm_rol, id_adm_modulo, insert_by, update_by, insert_time, update_time, estado) FROM stdin;
1	2	1	1	1	2016-11-14 11:37:18.6504	2016-11-14 11:37:18.6504	1
\.


--
-- TOC entry 2358 (class 0 OID 0)
-- Dependencies: 199
-- Name: adm_solicita_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adm_solicita_id_seq', 1, false);


--
-- TOC entry 2359 (class 0 OID 0)
-- Dependencies: 200
-- Name: adm_unidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adm_unidad_id_seq', 1, true);


--
-- TOC entry 2298 (class 0 OID 16771)
-- Dependencies: 202
-- Data for Name: adm_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY adm_usuario (id_adm_usuario, id_adm_persona, usuario, contrasenia, observacion, insert_by, update_by, insert_time, update_time, estado) FROM stdin;
2	2	admin	$2a$10$Jqhs.1Tiwvi6H9kT84j3leQ.qvVBVVUzvpPN3Z6SQsUnlzlFeNdzO	Usuario para administrador	1	1	2016-10-19 16:26:18.416148	2016-10-19 16:26:18.416148	1
5	2	mmurillo	$2a$10$KEN7JOPplRNKOo9LYPBEpuv9mgTSMlGhjQYHbKRMuwBZ4aLMA7Fpi	1243	1243	1243	2017-03-07 00:00:00	2017-03-07 00:00:00	1
4	2	jrodriguez	$2a$10$KEN7JOPplRNKOo9LYPBEpuv9mgTSMlGhjQYHbKRMuwBZ4aLMA7Fpi	\N	1	1	2017-03-07 00:00:00	2017-03-07 00:00:00	1
3	2	wquispe	$2a$10$KEN7JOPplRNKOo9LYPBEpuv9mgTSMlGhjQYHbKRMuwBZ4aLMA7Fpi	\N	1	1	2017-03-07 00:00:00	2017-03-07 00:00:00	1
1	1	administrador	$2a$10$Jqhs.1Tiwvi6H9kT84j3leQ.qvVBVVUzvpPN3Z6SQsUnlzlFeNdzO	Usuario que posee todo el acceso	1	1	2016-10-19 16:26:18.416148	2016-10-19 16:26:18.416148	1
\.


--
-- TOC entry 2360 (class 0 OID 0)
-- Dependencies: 201
-- Name: adm_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adm_usuario_id_seq', 1, true);


--
-- TOC entry 2300 (class 0 OID 16780)
-- Dependencies: 204
-- Data for Name: adm_usuario_rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY adm_usuario_rol (id_adm_usuario_rol, id_adm_usuario, id_adm_rol, insert_by, update_by, insert_time, update_time, estado) FROM stdin;
2	1	1	1	1	2016-10-19 16:26:52.963412	2016-10-19 16:26:52.963412	1
3	2	2	1	1	2016-10-19 16:26:18.416148	2016-10-19 16:26:18.416148	1
\.


--
-- TOC entry 2361 (class 0 OID 0)
-- Dependencies: 203
-- Name: adm_usuario_rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('adm_usuario_rol_id_seq', 2, true);


--
-- TOC entry 2302 (class 0 OID 16786)
-- Dependencies: 206
-- Data for Name: gen_tipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gen_tipo (id_gen_tipo, tabla, estado) FROM stdin;
\.


--
-- TOC entry 2362 (class 0 OID 0)
-- Dependencies: 205
-- Name: gen_tipo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gen_tipo_id_seq', 1, false);


--
-- TOC entry 2304 (class 0 OID 16792)
-- Dependencies: 208
-- Data for Name: gen_tipo_lista; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gen_tipo_lista (id_gen_tipo_lista, descripcion, id_gen_tipo, estado) FROM stdin;
\.


--
-- TOC entry 2363 (class 0 OID 0)
-- Dependencies: 207
-- Name: gen_tipo_lista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gen_tipo_lista_id_seq', 1, false);


--
-- TOC entry 2364 (class 0 OID 0)
-- Dependencies: 209
-- Name: inv_categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inv_categoria_id_seq', 1, true);


--
-- TOC entry 2365 (class 0 OID 0)
-- Dependencies: 210
-- Name: inv_compra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inv_compra_id_seq', 1, false);


--
-- TOC entry 2366 (class 0 OID 0)
-- Dependencies: 211
-- Name: inv_insumo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inv_insumo_id_seq', 4, true);


--
-- TOC entry 2367 (class 0 OID 0)
-- Dependencies: 212
-- Name: inv_inventario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inv_inventario_id_seq', 1, true);


--
-- TOC entry 2368 (class 0 OID 0)
-- Dependencies: 213
-- Name: inv_pedido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inv_pedido_id_seq', 1, false);


--
-- TOC entry 2369 (class 0 OID 0)
-- Dependencies: 214
-- Name: inv_proveedor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inv_proveedor_id_seq', 1, false);


--
-- TOC entry 2315 (class 0 OID 24774)
-- Dependencies: 220
-- Data for Name: reg_clase; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reg_clase (id_clase, id_sector, descripcion, id_usuario_registro, id_usuario_modificacion, fec_registro, fec_modificacion) FROM stdin;
\.


--
-- TOC entry 2313 (class 0 OID 24763)
-- Dependencies: 218
-- Data for Name: reg_cooperativa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reg_cooperativa (id_cooperativa, nro_registro, denominacion, razon_social, fec_fundacion, fec_reg_sirenco, id_clase, id_sub_clase) FROM stdin;
\.


--
-- TOC entry 2317 (class 0 OID 24802)
-- Dependencies: 222
-- Data for Name: reg_departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reg_departamento (id_departamento, descripcion) FROM stdin;
\.


--
-- TOC entry 2320 (class 0 OID 24827)
-- Dependencies: 225
-- Data for Name: reg_direccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reg_direccion (id_direccion, descripcion, telefono_1, telefono_2, celular_1, celular_2, correo, tipo, estado, id_cooperativa) FROM stdin;
\.


--
-- TOC entry 2319 (class 0 OID 24817)
-- Dependencies: 224
-- Data for Name: reg_municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reg_municipio (id_municipio, id_provincia, descripcion) FROM stdin;
\.


--
-- TOC entry 2318 (class 0 OID 24807)
-- Dependencies: 223
-- Data for Name: reg_provincia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reg_provincia (id_provincia, id_departamento, descripcion) FROM stdin;
\.


--
-- TOC entry 2314 (class 0 OID 24768)
-- Dependencies: 219
-- Data for Name: reg_sector; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reg_sector (id_sector, descripcion, id_usuario_registro, id_usuario_modificacion, fec_registro, fec_modificacion, estado) FROM stdin;
\.


--
-- TOC entry 2316 (class 0 OID 24789)
-- Dependencies: 221
-- Data for Name: reg_ubicacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY reg_ubicacion (id_ubicacion, id_departamento, id_provincia, id_municipio, canton, localidad, id_usuario_registro, id_usuario_modificacion, fec_registro, fec_modificacion, id_cooperativa) FROM stdin;
\.


--
-- TOC entry 2312 (class 0 OID 16890)
-- Dependencies: 217
-- Data for Name: user_auth; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_auth (username, authority) FROM stdin;
user	ROLE_USER
admin	ROLE_ADMIN
\.


--
-- TOC entry 2311 (class 0 OID 16885)
-- Dependencies: 216
-- Data for Name: user_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY user_details (username, password) FROM stdin;
user	123
admin	admin
\.


--
-- TOC entry 2142 (class 2606 OID 24778)
-- Name: reg_clase reg_clase_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_clase
    ADD CONSTRAINT reg_clase_pkey PRIMARY KEY (id_clase);


--
-- TOC entry 2138 (class 2606 OID 24767)
-- Name: reg_cooperativa reg_cooperativa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_cooperativa
    ADD CONSTRAINT reg_cooperativa_pkey PRIMARY KEY (id_cooperativa);


--
-- TOC entry 2144 (class 2606 OID 24796)
-- Name: reg_ubicacion reg_datos_generales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_ubicacion
    ADD CONSTRAINT reg_datos_generales_pkey PRIMARY KEY (id_ubicacion);


--
-- TOC entry 2146 (class 2606 OID 24806)
-- Name: reg_departamento reg_departamento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_departamento
    ADD CONSTRAINT reg_departamento_pkey PRIMARY KEY (id_departamento);


--
-- TOC entry 2152 (class 2606 OID 24834)
-- Name: reg_direccion reg_direccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_direccion
    ADD CONSTRAINT reg_direccion_pkey PRIMARY KEY (id_direccion);


--
-- TOC entry 2148 (class 2606 OID 24811)
-- Name: reg_provincia reg_provincia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_provincia
    ADD CONSTRAINT reg_provincia_pkey PRIMARY KEY (id_provincia);


--
-- TOC entry 2140 (class 2606 OID 24772)
-- Name: reg_sector reg_rector_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_sector
    ADD CONSTRAINT reg_rector_pkey PRIMARY KEY (id_sector);


--
-- TOC entry 2150 (class 2606 OID 24821)
-- Name: reg_municipio reg_seccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_municipio
    ADD CONSTRAINT reg_seccion_pkey PRIMARY KEY (id_municipio);


--
-- TOC entry 2136 (class 2606 OID 16889)
-- Name: user_details user_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_details
    ADD CONSTRAINT user_details_pkey PRIMARY KEY (username);


--
-- TOC entry 2155 (class 2606 OID 24779)
-- Name: reg_clase foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_clase
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_sector) REFERENCES reg_sector(id_sector) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2154 (class 2606 OID 24784)
-- Name: reg_cooperativa foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_cooperativa
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_clase) REFERENCES reg_clase(id_clase);


--
-- TOC entry 2156 (class 2606 OID 24797)
-- Name: reg_ubicacion foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_ubicacion
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_cooperativa) REFERENCES reg_cooperativa(id_cooperativa);


--
-- TOC entry 2160 (class 2606 OID 24812)
-- Name: reg_provincia foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_provincia
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_departamento) REFERENCES reg_departamento(id_departamento);


--
-- TOC entry 2161 (class 2606 OID 24822)
-- Name: reg_municipio foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_municipio
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_provincia) REFERENCES reg_provincia(id_provincia);


--
-- TOC entry 2162 (class 2606 OID 24835)
-- Name: reg_direccion foreign_key01; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_direccion
    ADD CONSTRAINT foreign_key01 FOREIGN KEY (id_cooperativa) REFERENCES reg_cooperativa(id_cooperativa);


--
-- TOC entry 2157 (class 2606 OID 24840)
-- Name: reg_ubicacion foreign_key02; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_ubicacion
    ADD CONSTRAINT foreign_key02 FOREIGN KEY (id_departamento) REFERENCES reg_departamento(id_departamento);


--
-- TOC entry 2158 (class 2606 OID 24845)
-- Name: reg_ubicacion foreign_key03; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_ubicacion
    ADD CONSTRAINT foreign_key03 FOREIGN KEY (id_provincia) REFERENCES reg_provincia(id_provincia);


--
-- TOC entry 2159 (class 2606 OID 24850)
-- Name: reg_ubicacion foreign_key04; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY reg_ubicacion
    ADD CONSTRAINT foreign_key04 FOREIGN KEY (id_municipio) REFERENCES reg_municipio(id_municipio);


--
-- TOC entry 2153 (class 2606 OID 16893)
-- Name: user_auth user_auth_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY user_auth
    ADD CONSTRAINT user_auth_username_fkey FOREIGN KEY (username) REFERENCES user_details(username);


-- Completed on 2017-03-27 18:34:48

--
-- PostgreSQL database dump complete
--


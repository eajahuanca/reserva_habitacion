--
-- PostgreSQL database dump
--

-- Dumped from database version 10.21
-- Dumped by pg_dump version 10.21

-- Started on 2022-08-21 02:18:21

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 203 (class 1259 OID 26337)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 26335)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 205 (class 1259 OID 26347)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 26345)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 201 (class 1259 OID 26329)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 26327)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 207 (class 1259 OID 26355)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 26365)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 26363)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 206 (class 1259 OID 26353)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 211 (class 1259 OID 26373)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 26371)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 213 (class 1259 OID 26433)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 26431)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 199 (class 1259 OID 26319)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 26317)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 197 (class 1259 OID 26308)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 26306)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 234 (class 1259 OID 26619)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 26466)
-- Name: reserva_categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva_categoria (
    id bigint NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_modificacion timestamp with time zone,
    fecha_eliminacion timestamp with time zone,
    categoria character varying(50) NOT NULL
);


ALTER TABLE public.reserva_categoria OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 26464)
-- Name: reserva_categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reserva_categoria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reserva_categoria_id_seq OWNER TO postgres;

--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 214
-- Name: reserva_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reserva_categoria_id_seq OWNED BY public.reserva_categoria.id;


--
-- TOC entry 217 (class 1259 OID 26476)
-- Name: reserva_cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva_cliente (
    id bigint NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_modificacion timestamp with time zone,
    fecha_eliminacion timestamp with time zone,
    nombre character varying(20) NOT NULL,
    apellido character varying(30),
    direccion character varying(50) NOT NULL,
    correo_electronico character varying(100) NOT NULL,
    telefono character varying(10) NOT NULL,
    pais_id bigint NOT NULL
);


ALTER TABLE public.reserva_cliente OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 26474)
-- Name: reserva_cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reserva_cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reserva_cliente_id_seq OWNER TO postgres;

--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 216
-- Name: reserva_cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reserva_cliente_id_seq OWNED BY public.reserva_cliente.id;


--
-- TOC entry 219 (class 1259 OID 26484)
-- Name: reserva_estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva_estado (
    id bigint NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_modificacion timestamp with time zone,
    fecha_eliminacion timestamp with time zone,
    estado character varying(10) NOT NULL
);


ALTER TABLE public.reserva_estado OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 26482)
-- Name: reserva_estado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reserva_estado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reserva_estado_id_seq OWNER TO postgres;

--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 218
-- Name: reserva_estado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reserva_estado_id_seq OWNED BY public.reserva_estado.id;


--
-- TOC entry 221 (class 1259 OID 26494)
-- Name: reserva_habitacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva_habitacion (
    id bigint NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_modificacion timestamp with time zone,
    fecha_eliminacion timestamp with time zone,
    descripcion character varying(100) NOT NULL,
    categoria_id bigint NOT NULL,
    hotel_id bigint NOT NULL
);


ALTER TABLE public.reserva_habitacion OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 26492)
-- Name: reserva_habitacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reserva_habitacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reserva_habitacion_id_seq OWNER TO postgres;

--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 220
-- Name: reserva_habitacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reserva_habitacion_id_seq OWNED BY public.reserva_habitacion.id;


--
-- TOC entry 233 (class 1259 OID 26553)
-- Name: reserva_hotel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva_hotel (
    id bigint NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_modificacion timestamp with time zone,
    fecha_eliminacion timestamp with time zone,
    nombre character varying(50) NOT NULL,
    direccion character varying(100) NOT NULL,
    pais_id bigint NOT NULL
);


ALTER TABLE public.reserva_hotel OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 26551)
-- Name: reserva_hotel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reserva_hotel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reserva_hotel_id_seq OWNER TO postgres;

--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 232
-- Name: reserva_hotel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reserva_hotel_id_seq OWNED BY public.reserva_hotel.id;


--
-- TOC entry 223 (class 1259 OID 26502)
-- Name: reserva_metodopago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva_metodopago (
    id bigint NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_modificacion timestamp with time zone,
    fecha_eliminacion timestamp with time zone,
    pago character varying(50) NOT NULL
);


ALTER TABLE public.reserva_metodopago OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 26500)
-- Name: reserva_metodopago_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reserva_metodopago_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reserva_metodopago_id_seq OWNER TO postgres;

--
-- TOC entry 3097 (class 0 OID 0)
-- Dependencies: 222
-- Name: reserva_metodopago_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reserva_metodopago_id_seq OWNED BY public.reserva_metodopago.id;


--
-- TOC entry 225 (class 1259 OID 26512)
-- Name: reserva_pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva_pais (
    id bigint NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_modificacion timestamp with time zone,
    fecha_eliminacion timestamp with time zone,
    pais character varying(20) NOT NULL
);


ALTER TABLE public.reserva_pais OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 26510)
-- Name: reserva_pais_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reserva_pais_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reserva_pais_id_seq OWNER TO postgres;

--
-- TOC entry 3098 (class 0 OID 0)
-- Dependencies: 224
-- Name: reserva_pais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reserva_pais_id_seq OWNED BY public.reserva_pais.id;


--
-- TOC entry 227 (class 1259 OID 26522)
-- Name: reserva_reservacliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva_reservacliente (
    id bigint NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_modificacion timestamp with time zone,
    fecha_eliminacion timestamp with time zone,
    razon_social character varying(50) NOT NULL,
    numero_documento character varying(15) NOT NULL,
    fecha_desde date NOT NULL,
    fecha_hasta date NOT NULL,
    costo_total numeric(10,2) NOT NULL,
    cliente_id bigint NOT NULL,
    habitacion_id bigint NOT NULL,
    metodo_pago_id bigint NOT NULL,
    tipo_documento_id bigint NOT NULL
);


ALTER TABLE public.reserva_reservacliente OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 26520)
-- Name: reserva_reservacliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reserva_reservacliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reserva_reservacliente_id_seq OWNER TO postgres;

--
-- TOC entry 3099 (class 0 OID 0)
-- Dependencies: 226
-- Name: reserva_reservacliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reserva_reservacliente_id_seq OWNED BY public.reserva_reservacliente.id;


--
-- TOC entry 231 (class 1259 OID 26540)
-- Name: reserva_reservaestado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva_reservaestado (
    id bigint NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_modificacion timestamp with time zone,
    fecha_eliminacion timestamp with time zone,
    estado_id bigint NOT NULL,
    reserva_id bigint NOT NULL
);


ALTER TABLE public.reserva_reservaestado OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 26538)
-- Name: reserva_reservaestado_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reserva_reservaestado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reserva_reservaestado_id_seq OWNER TO postgres;

--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 230
-- Name: reserva_reservaestado_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reserva_reservaestado_id_seq OWNED BY public.reserva_reservaestado.id;


--
-- TOC entry 229 (class 1259 OID 26530)
-- Name: reserva_tipodocumento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reserva_tipodocumento (
    id bigint NOT NULL,
    fecha_creacion timestamp with time zone NOT NULL,
    fecha_modificacion timestamp with time zone,
    fecha_eliminacion timestamp with time zone,
    tipo character varying(20) NOT NULL
);


ALTER TABLE public.reserva_tipodocumento OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 26528)
-- Name: reserva_tipodocumento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reserva_tipodocumento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reserva_tipodocumento_id_seq OWNER TO postgres;

--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 228
-- Name: reserva_tipodocumento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reserva_tipodocumento_id_seq OWNED BY public.reserva_tipodocumento.id;


--
-- TOC entry 2789 (class 2604 OID 26340)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2790 (class 2604 OID 26350)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2788 (class 2604 OID 26332)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2791 (class 2604 OID 26358)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2792 (class 2604 OID 26368)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2793 (class 2604 OID 26376)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2794 (class 2604 OID 26436)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2787 (class 2604 OID 26322)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2786 (class 2604 OID 26311)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2796 (class 2604 OID 26469)
-- Name: reserva_categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_categoria ALTER COLUMN id SET DEFAULT nextval('public.reserva_categoria_id_seq'::regclass);


--
-- TOC entry 2797 (class 2604 OID 26479)
-- Name: reserva_cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_cliente ALTER COLUMN id SET DEFAULT nextval('public.reserva_cliente_id_seq'::regclass);


--
-- TOC entry 2798 (class 2604 OID 26487)
-- Name: reserva_estado id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_estado ALTER COLUMN id SET DEFAULT nextval('public.reserva_estado_id_seq'::regclass);


--
-- TOC entry 2799 (class 2604 OID 26497)
-- Name: reserva_habitacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_habitacion ALTER COLUMN id SET DEFAULT nextval('public.reserva_habitacion_id_seq'::regclass);


--
-- TOC entry 2805 (class 2604 OID 26556)
-- Name: reserva_hotel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_hotel ALTER COLUMN id SET DEFAULT nextval('public.reserva_hotel_id_seq'::regclass);


--
-- TOC entry 2800 (class 2604 OID 26505)
-- Name: reserva_metodopago id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_metodopago ALTER COLUMN id SET DEFAULT nextval('public.reserva_metodopago_id_seq'::regclass);


--
-- TOC entry 2801 (class 2604 OID 26515)
-- Name: reserva_pais id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_pais ALTER COLUMN id SET DEFAULT nextval('public.reserva_pais_id_seq'::regclass);


--
-- TOC entry 2802 (class 2604 OID 26525)
-- Name: reserva_reservacliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_reservacliente ALTER COLUMN id SET DEFAULT nextval('public.reserva_reservacliente_id_seq'::regclass);


--
-- TOC entry 2804 (class 2604 OID 26543)
-- Name: reserva_reservaestado id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_reservaestado ALTER COLUMN id SET DEFAULT nextval('public.reserva_reservaestado_id_seq'::regclass);


--
-- TOC entry 2803 (class 2604 OID 26533)
-- Name: reserva_tipodocumento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_tipodocumento ALTER COLUMN id SET DEFAULT nextval('public.reserva_tipodocumento_id_seq'::regclass);


--
-- TOC entry 3045 (class 0 OID 26337)
-- Dependencies: 203
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3047 (class 0 OID 26347)
-- Dependencies: 205
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3043 (class 0 OID 26329)
-- Dependencies: 201
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add categoria	7	add_categoria
26	Can change categoria	7	change_categoria
27	Can delete categoria	7	delete_categoria
28	Can view categoria	7	view_categoria
29	Can add cliente	8	add_cliente
30	Can change cliente	8	change_cliente
31	Can delete cliente	8	delete_cliente
32	Can view cliente	8	view_cliente
33	Can add estado	9	add_estado
34	Can change estado	9	change_estado
35	Can delete estado	9	delete_estado
36	Can view estado	9	view_estado
37	Can add habitacion	10	add_habitacion
38	Can change habitacion	10	change_habitacion
39	Can delete habitacion	10	delete_habitacion
40	Can view habitacion	10	view_habitacion
41	Can add metodo pago	11	add_metodopago
42	Can change metodo pago	11	change_metodopago
43	Can delete metodo pago	11	delete_metodopago
44	Can view metodo pago	11	view_metodopago
45	Can add pais	12	add_pais
46	Can change pais	12	change_pais
47	Can delete pais	12	delete_pais
48	Can view pais	12	view_pais
49	Can add reserva cliente	13	add_reservacliente
50	Can change reserva cliente	13	change_reservacliente
51	Can delete reserva cliente	13	delete_reservacliente
52	Can view reserva cliente	13	view_reservacliente
53	Can add tipo documento	14	add_tipodocumento
54	Can change tipo documento	14	change_tipodocumento
55	Can delete tipo documento	14	delete_tipodocumento
56	Can view tipo documento	14	view_tipodocumento
57	Can add reserva estado	15	add_reservaestado
58	Can change reserva estado	15	change_reservaestado
59	Can delete reserva estado	15	delete_reservaestado
60	Can view reserva estado	15	view_reservaestado
61	Can add hotel	16	add_hotel
62	Can change hotel	16	change_hotel
63	Can delete hotel	16	delete_hotel
64	Can view hotel	16	view_hotel
\.


--
-- TOC entry 3049 (class 0 OID 26355)
-- Dependencies: 207
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- TOC entry 3051 (class 0 OID 26365)
-- Dependencies: 209
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3053 (class 0 OID 26373)
-- Dependencies: 211
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3055 (class 0 OID 26433)
-- Dependencies: 213
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 3041 (class 0 OID 26319)
-- Dependencies: 199
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	reserva	categoria
8	reserva	cliente
9	reserva	estado
10	reserva	habitacion
11	reserva	metodopago
12	reserva	pais
13	reserva	reservacliente
14	reserva	tipodocumento
15	reserva	reservaestado
16	reserva	hotel
\.


--
-- TOC entry 3039 (class 0 OID 26308)
-- Dependencies: 197
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-08-21 00:25:32.379034-04
2	auth	0001_initial	2022-08-21 00:25:32.497926-04
3	admin	0001_initial	2022-08-21 00:25:32.526317-04
4	admin	0002_logentry_remove_auto_add	2022-08-21 00:25:32.532446-04
5	admin	0003_logentry_add_action_flag_choices	2022-08-21 00:25:32.54053-04
6	contenttypes	0002_remove_content_type_name	2022-08-21 00:25:32.55353-04
7	auth	0002_alter_permission_name_max_length	2022-08-21 00:25:32.560553-04
8	auth	0003_alter_user_email_max_length	2022-08-21 00:25:32.567179-04
9	auth	0004_alter_user_username_opts	2022-08-21 00:25:32.574088-04
10	auth	0005_alter_user_last_login_null	2022-08-21 00:25:32.580097-04
11	auth	0006_require_contenttypes_0002	2022-08-21 00:25:32.582769-04
12	auth	0007_alter_validators_add_error_messages	2022-08-21 00:25:32.58977-04
13	auth	0008_alter_user_username_max_length	2022-08-21 00:25:32.601948-04
14	auth	0009_alter_user_last_name_max_length	2022-08-21 00:25:32.608576-04
15	auth	0010_alter_group_name_max_length	2022-08-21 00:25:32.616551-04
16	auth	0011_update_proxy_permissions	2022-08-21 00:25:32.623163-04
17	auth	0012_alter_user_first_name_max_length	2022-08-21 00:25:32.628562-04
18	reserva	0001_initial	2022-08-21 00:25:32.797156-04
19	sessions	0001_initial	2022-08-21 00:25:32.814096-04
\.


--
-- TOC entry 3076 (class 0 OID 26619)
-- Dependencies: 234
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 3057 (class 0 OID 26466)
-- Dependencies: 215
-- Data for Name: reserva_categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva_categoria (id, fecha_creacion, fecha_modificacion, fecha_eliminacion, categoria) FROM stdin;
1	2022-08-21 01:12:02.1262-04	\N	\N	VIP
2	2022-08-21 01:13:09.451962-04	\N	\N	MEDIA VIP
3	2022-08-21 01:13:21.656951-04	\N	\N	NORMAL
\.


--
-- TOC entry 3059 (class 0 OID 26476)
-- Dependencies: 217
-- Data for Name: reserva_cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva_cliente (id, fecha_creacion, fecha_modificacion, fecha_eliminacion, nombre, apellido, direccion, correo_electronico, telefono, pais_id) FROM stdin;
1	2022-08-21 00:56:59.928625-04	\N	\N	JUAN	PEREZ PEPITO	LAS RETAMAS ESQ.AROMA NRO. 10	juan.pepito@gmail.com	6547774	1
\.


--
-- TOC entry 3061 (class 0 OID 26484)
-- Dependencies: 219
-- Data for Name: reserva_estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva_estado (id, fecha_creacion, fecha_modificacion, fecha_eliminacion, estado) FROM stdin;
1	2022-08-21 01:31:45.303108-04	\N	\N	PENDIENTE
2	2022-08-21 01:32:48.287131-04	\N	\N	PAGADO
3	2022-08-21 01:32:56.235282-04	\N	\N	ELIMINADO
\.


--
-- TOC entry 3063 (class 0 OID 26494)
-- Dependencies: 221
-- Data for Name: reserva_habitacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva_habitacion (id, fecha_creacion, fecha_modificacion, fecha_eliminacion, descripcion, categoria_id, hotel_id) FROM stdin;
1	2022-08-21 01:20:00.609286-04	\N	\N	2 CAMAS, DUCHA Y SALA	1	1
2	2022-08-21 01:22:09.225259-04	\N	\N	2 CAMAS, DUCHA	2	1
\.


--
-- TOC entry 3075 (class 0 OID 26553)
-- Dependencies: 233
-- Data for Name: reserva_hotel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva_hotel (id, fecha_creacion, fecha_modificacion, fecha_eliminacion, nombre, direccion, pais_id) FROM stdin;
1	2022-08-21 01:02:53.750274-04	\N	\N	LAS 5 ESTRELLAS	MIRAFLORES CALLE LAS ROSAS NRO. 111	1
2	2022-08-21 01:04:32.525832-04	\N	\N	EL TABU	CHICLAYO CALLE LAS MERCEDES NRO. 110	2
\.


--
-- TOC entry 3065 (class 0 OID 26502)
-- Dependencies: 223
-- Data for Name: reserva_metodopago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva_metodopago (id, fecha_creacion, fecha_modificacion, fecha_eliminacion, pago) FROM stdin;
1	2022-08-21 00:50:29.131665-04	\N	\N	MASTER CARD
2	2022-08-21 00:51:18.75918-04	\N	\N	DEPOSITO BANCARIO
3	2022-08-21 00:51:31.193785-04	\N	\N	VIA PAYPAL
\.


--
-- TOC entry 3067 (class 0 OID 26512)
-- Dependencies: 225
-- Data for Name: reserva_pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva_pais (id, fecha_creacion, fecha_modificacion, fecha_eliminacion, pais) FROM stdin;
1	2022-08-21 00:35:36.969257-04	\N	\N	BOLIVIA
2	2022-08-21 00:37:09.066946-04	\N	\N	PERU
\.


--
-- TOC entry 3069 (class 0 OID 26522)
-- Dependencies: 227
-- Data for Name: reserva_reservacliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva_reservacliente (id, fecha_creacion, fecha_modificacion, fecha_eliminacion, razon_social, numero_documento, fecha_desde, fecha_hasta, costo_total, cliente_id, habitacion_id, metodo_pago_id, tipo_documento_id) FROM stdin;
1	2022-08-21 01:42:23.698221-04	\N	\N	PEPITO Y ASOCIADOS	412211115	2022-08-18	2022-08-20	150.00	1	1	1	1
\.


--
-- TOC entry 3073 (class 0 OID 26540)
-- Dependencies: 231
-- Data for Name: reserva_reservaestado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva_reservaestado (id, fecha_creacion, fecha_modificacion, fecha_eliminacion, estado_id, reserva_id) FROM stdin;
1	2022-08-21 02:01:41.666295-04	\N	\N	1	1
\.


--
-- TOC entry 3071 (class 0 OID 26530)
-- Dependencies: 229
-- Data for Name: reserva_tipodocumento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reserva_tipodocumento (id, fecha_creacion, fecha_modificacion, fecha_eliminacion, tipo) FROM stdin;
1	2022-08-21 00:43:09.177747-04	\N	\N	NIT
2	2022-08-21 00:44:13.385487-04	\N	\N	DNI
3	2022-08-21 00:44:22.602202-04	\N	\N	CI
\.


--
-- TOC entry 3102 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3104 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- TOC entry 3105 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3106 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- TOC entry 3107 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3108 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 3109 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- TOC entry 3110 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- TOC entry 3111 (class 0 OID 0)
-- Dependencies: 214
-- Name: reserva_categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_categoria_id_seq', 3, true);


--
-- TOC entry 3112 (class 0 OID 0)
-- Dependencies: 216
-- Name: reserva_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_cliente_id_seq', 1, true);


--
-- TOC entry 3113 (class 0 OID 0)
-- Dependencies: 218
-- Name: reserva_estado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_estado_id_seq', 3, true);


--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 220
-- Name: reserva_habitacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_habitacion_id_seq', 2, true);


--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 232
-- Name: reserva_hotel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_hotel_id_seq', 2, true);


--
-- TOC entry 3116 (class 0 OID 0)
-- Dependencies: 222
-- Name: reserva_metodopago_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_metodopago_id_seq', 3, true);


--
-- TOC entry 3117 (class 0 OID 0)
-- Dependencies: 224
-- Name: reserva_pais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_pais_id_seq', 2, true);


--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 226
-- Name: reserva_reservacliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_reservacliente_id_seq', 1, true);


--
-- TOC entry 3119 (class 0 OID 0)
-- Dependencies: 230
-- Name: reserva_reservaestado_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_reservaestado_id_seq', 1, true);


--
-- TOC entry 3120 (class 0 OID 0)
-- Dependencies: 228
-- Name: reserva_tipodocumento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reserva_tipodocumento_id_seq', 3, true);


--
-- TOC entry 2819 (class 2606 OID 26462)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2824 (class 2606 OID 26389)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2827 (class 2606 OID 26352)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2821 (class 2606 OID 26342)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2814 (class 2606 OID 26380)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2816 (class 2606 OID 26334)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2835 (class 2606 OID 26370)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2838 (class 2606 OID 26404)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2829 (class 2606 OID 26360)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2841 (class 2606 OID 26378)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2844 (class 2606 OID 26418)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2832 (class 2606 OID 26456)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2847 (class 2606 OID 26442)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2809 (class 2606 OID 26326)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2811 (class 2606 OID 26324)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2807 (class 2606 OID 26316)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2896 (class 2606 OID 26626)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2851 (class 2606 OID 26473)
-- Name: reserva_categoria reserva_categoria_categoria_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_categoria
    ADD CONSTRAINT reserva_categoria_categoria_key UNIQUE (categoria);


--
-- TOC entry 2853 (class 2606 OID 26471)
-- Name: reserva_categoria reserva_categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_categoria
    ADD CONSTRAINT reserva_categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 2856 (class 2606 OID 26481)
-- Name: reserva_cliente reserva_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_cliente
    ADD CONSTRAINT reserva_cliente_pkey PRIMARY KEY (id);


--
-- TOC entry 2859 (class 2606 OID 26491)
-- Name: reserva_estado reserva_estado_estado_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_estado
    ADD CONSTRAINT reserva_estado_estado_key UNIQUE (estado);


--
-- TOC entry 2861 (class 2606 OID 26489)
-- Name: reserva_estado reserva_estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_estado
    ADD CONSTRAINT reserva_estado_pkey PRIMARY KEY (id);


--
-- TOC entry 2865 (class 2606 OID 26499)
-- Name: reserva_habitacion reserva_habitacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_habitacion
    ADD CONSTRAINT reserva_habitacion_pkey PRIMARY KEY (id);


--
-- TOC entry 2893 (class 2606 OID 26558)
-- Name: reserva_hotel reserva_hotel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_hotel
    ADD CONSTRAINT reserva_hotel_pkey PRIMARY KEY (id);


--
-- TOC entry 2868 (class 2606 OID 26509)
-- Name: reserva_metodopago reserva_metodopago_pago_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_metodopago
    ADD CONSTRAINT reserva_metodopago_pago_key UNIQUE (pago);


--
-- TOC entry 2870 (class 2606 OID 26507)
-- Name: reserva_metodopago reserva_metodopago_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_metodopago
    ADD CONSTRAINT reserva_metodopago_pkey PRIMARY KEY (id);


--
-- TOC entry 2873 (class 2606 OID 26519)
-- Name: reserva_pais reserva_pais_pais_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_pais
    ADD CONSTRAINT reserva_pais_pais_key UNIQUE (pais);


--
-- TOC entry 2875 (class 2606 OID 26517)
-- Name: reserva_pais reserva_pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_pais
    ADD CONSTRAINT reserva_pais_pkey PRIMARY KEY (id);


--
-- TOC entry 2880 (class 2606 OID 26527)
-- Name: reserva_reservacliente reserva_reservacliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_reservacliente
    ADD CONSTRAINT reserva_reservacliente_pkey PRIMARY KEY (id);


--
-- TOC entry 2889 (class 2606 OID 26545)
-- Name: reserva_reservaestado reserva_reservaestado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_reservaestado
    ADD CONSTRAINT reserva_reservaestado_pkey PRIMARY KEY (id);


--
-- TOC entry 2883 (class 2606 OID 26535)
-- Name: reserva_tipodocumento reserva_tipodocumento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_tipodocumento
    ADD CONSTRAINT reserva_tipodocumento_pkey PRIMARY KEY (id);


--
-- TOC entry 2886 (class 2606 OID 26537)
-- Name: reserva_tipodocumento reserva_tipodocumento_tipo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_tipodocumento
    ADD CONSTRAINT reserva_tipodocumento_tipo_key UNIQUE (tipo);


--
-- TOC entry 2817 (class 1259 OID 26463)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2822 (class 1259 OID 26400)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2825 (class 1259 OID 26401)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2812 (class 1259 OID 26386)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2833 (class 1259 OID 26416)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2836 (class 1259 OID 26415)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2839 (class 1259 OID 26430)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2842 (class 1259 OID 26429)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2830 (class 1259 OID 26457)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2845 (class 1259 OID 26453)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2848 (class 1259 OID 26454)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2894 (class 1259 OID 26628)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2897 (class 1259 OID 26627)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2849 (class 1259 OID 26569)
-- Name: reserva_categoria_categoria_1fd08402_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_categoria_categoria_1fd08402_like ON public.reserva_categoria USING btree (categoria varchar_pattern_ops);


--
-- TOC entry 2854 (class 1259 OID 26618)
-- Name: reserva_cliente_pais_id_f8633eeb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_cliente_pais_id_f8633eeb ON public.reserva_cliente USING btree (pais_id);


--
-- TOC entry 2857 (class 1259 OID 26570)
-- Name: reserva_estado_estado_85d7d8d1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_estado_estado_85d7d8d1_like ON public.reserva_estado USING btree (estado varchar_pattern_ops);


--
-- TOC entry 2862 (class 1259 OID 26576)
-- Name: reserva_habitacion_categoria_id_5bc1b0b2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_habitacion_categoria_id_5bc1b0b2 ON public.reserva_habitacion USING btree (categoria_id);


--
-- TOC entry 2863 (class 1259 OID 26617)
-- Name: reserva_habitacion_hotel_id_b6d93271; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_habitacion_hotel_id_b6d93271 ON public.reserva_habitacion USING btree (hotel_id);


--
-- TOC entry 2891 (class 1259 OID 26616)
-- Name: reserva_hotel_pais_id_26fe01ca; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_hotel_pais_id_26fe01ca ON public.reserva_hotel USING btree (pais_id);


--
-- TOC entry 2866 (class 1259 OID 26577)
-- Name: reserva_metodopago_pago_2a286d1d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_metodopago_pago_2a286d1d_like ON public.reserva_metodopago USING btree (pago varchar_pattern_ops);


--
-- TOC entry 2871 (class 1259 OID 26578)
-- Name: reserva_pais_pais_448a8a28_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_pais_pais_448a8a28_like ON public.reserva_pais USING btree (pais varchar_pattern_ops);


--
-- TOC entry 2876 (class 1259 OID 26594)
-- Name: reserva_reservacliente_cliente_id_47b9fbad; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_reservacliente_cliente_id_47b9fbad ON public.reserva_reservacliente USING btree (cliente_id);


--
-- TOC entry 2877 (class 1259 OID 26595)
-- Name: reserva_reservacliente_habitacion_id_c194716e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_reservacliente_habitacion_id_c194716e ON public.reserva_reservacliente USING btree (habitacion_id);


--
-- TOC entry 2878 (class 1259 OID 26596)
-- Name: reserva_reservacliente_metodo_pago_id_f0343b37; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_reservacliente_metodo_pago_id_f0343b37 ON public.reserva_reservacliente USING btree (metodo_pago_id);


--
-- TOC entry 2881 (class 1259 OID 26610)
-- Name: reserva_reservacliente_tipo_documento_id_fdd92493; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_reservacliente_tipo_documento_id_fdd92493 ON public.reserva_reservacliente USING btree (tipo_documento_id);


--
-- TOC entry 2887 (class 1259 OID 26608)
-- Name: reserva_reservaestado_estado_id_50924ed8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_reservaestado_estado_id_50924ed8 ON public.reserva_reservaestado USING btree (estado_id);


--
-- TOC entry 2890 (class 1259 OID 26609)
-- Name: reserva_reservaestado_reserva_id_6f646142; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_reservaestado_reserva_id_6f646142 ON public.reserva_reservaestado USING btree (reserva_id);


--
-- TOC entry 2884 (class 1259 OID 26597)
-- Name: reserva_tipodocumento_tipo_80412be4_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reserva_tipodocumento_tipo_80412be4_like ON public.reserva_tipodocumento USING btree (tipo varchar_pattern_ops);


--
-- TOC entry 2900 (class 2606 OID 26395)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2899 (class 2606 OID 26390)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2898 (class 2606 OID 26381)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2902 (class 2606 OID 26410)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2901 (class 2606 OID 26405)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2904 (class 2606 OID 26424)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2903 (class 2606 OID 26419)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2905 (class 2606 OID 26443)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2906 (class 2606 OID 26448)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2907 (class 2606 OID 26564)
-- Name: reserva_cliente reserva_cliente_pais_id_f8633eeb_fk_reserva_pais_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_cliente
    ADD CONSTRAINT reserva_cliente_pais_id_f8633eeb_fk_reserva_pais_id FOREIGN KEY (pais_id) REFERENCES public.reserva_pais(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2909 (class 2606 OID 26571)
-- Name: reserva_habitacion reserva_habitacion_categoria_id_5bc1b0b2_fk_reserva_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_habitacion
    ADD CONSTRAINT reserva_habitacion_categoria_id_5bc1b0b2_fk_reserva_c FOREIGN KEY (categoria_id) REFERENCES public.reserva_categoria(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2908 (class 2606 OID 26559)
-- Name: reserva_habitacion reserva_habitacion_hotel_id_b6d93271_fk_reserva_hotel_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_habitacion
    ADD CONSTRAINT reserva_habitacion_hotel_id_b6d93271_fk_reserva_hotel_id FOREIGN KEY (hotel_id) REFERENCES public.reserva_hotel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2916 (class 2606 OID 26611)
-- Name: reserva_hotel reserva_hotel_pais_id_26fe01ca_fk_reserva_pais_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_hotel
    ADD CONSTRAINT reserva_hotel_pais_id_26fe01ca_fk_reserva_pais_id FOREIGN KEY (pais_id) REFERENCES public.reserva_pais(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2911 (class 2606 OID 26579)
-- Name: reserva_reservacliente reserva_reservaclien_cliente_id_47b9fbad_fk_reserva_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_reservacliente
    ADD CONSTRAINT reserva_reservaclien_cliente_id_47b9fbad_fk_reserva_c FOREIGN KEY (cliente_id) REFERENCES public.reserva_cliente(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2912 (class 2606 OID 26584)
-- Name: reserva_reservacliente reserva_reservaclien_habitacion_id_c194716e_fk_reserva_h; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_reservacliente
    ADD CONSTRAINT reserva_reservaclien_habitacion_id_c194716e_fk_reserva_h FOREIGN KEY (habitacion_id) REFERENCES public.reserva_habitacion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2913 (class 2606 OID 26589)
-- Name: reserva_reservacliente reserva_reservaclien_metodo_pago_id_f0343b37_fk_reserva_m; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_reservacliente
    ADD CONSTRAINT reserva_reservaclien_metodo_pago_id_f0343b37_fk_reserva_m FOREIGN KEY (metodo_pago_id) REFERENCES public.reserva_metodopago(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2910 (class 2606 OID 26546)
-- Name: reserva_reservacliente reserva_reservaclien_tipo_documento_id_fdd92493_fk_reserva_t; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_reservacliente
    ADD CONSTRAINT reserva_reservaclien_tipo_documento_id_fdd92493_fk_reserva_t FOREIGN KEY (tipo_documento_id) REFERENCES public.reserva_tipodocumento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2915 (class 2606 OID 26603)
-- Name: reserva_reservaestado reserva_reservaestad_reserva_id_6f646142_fk_reserva_r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_reservaestado
    ADD CONSTRAINT reserva_reservaestad_reserva_id_6f646142_fk_reserva_r FOREIGN KEY (reserva_id) REFERENCES public.reserva_reservacliente(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2914 (class 2606 OID 26598)
-- Name: reserva_reservaestado reserva_reservaestado_estado_id_50924ed8_fk_reserva_estado_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reserva_reservaestado
    ADD CONSTRAINT reserva_reservaestado_estado_id_50924ed8_fk_reserva_estado_id FOREIGN KEY (estado_id) REFERENCES public.reserva_estado(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2022-08-21 02:18:21

--
-- PostgreSQL database dump complete
--


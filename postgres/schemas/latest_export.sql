--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Debian 12.2-2.pgdg100+1)
-- Dumped by pg_dump version 12.2 (Debian 12.2-2.pgdg100+1)

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

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO admin_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO admin_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO admin_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO admin_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO admin_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO admin_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: database_app_brand; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.database_app_brand (
    id integer NOT NULL,
    brand character varying(30) NOT NULL,
    model character varying(100) NOT NULL,
    country character varying(100) NOT NULL,
    production_begin date NOT NULL,
    production_end date NOT NULL
);


ALTER TABLE public.database_app_brand OWNER TO admin_user;

--
-- Name: database_app_brand_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.database_app_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.database_app_brand_id_seq OWNER TO admin_user;

--
-- Name: database_app_brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.database_app_brand_id_seq OWNED BY public.database_app_brand.id;


--
-- Name: database_app_car; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.database_app_car (
    id integer NOT NULL,
    production_date date NOT NULL,
    description character varying(3000) NOT NULL,
    brand_id integer NOT NULL,
    user_id character varying(50) NOT NULL
);


ALTER TABLE public.database_app_car OWNER TO admin_user;

--
-- Name: database_app_car_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.database_app_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.database_app_car_id_seq OWNER TO admin_user;

--
-- Name: database_app_car_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.database_app_car_id_seq OWNED BY public.database_app_car.id;


--
-- Name: database_app_comment; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.database_app_comment (
    id integer NOT NULL,
    content character varying(5000) NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    nick_id character varying(50) NOT NULL,
    thread_id integer NOT NULL
);


ALTER TABLE public.database_app_comment OWNER TO admin_user;

--
-- Name: database_app_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.database_app_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.database_app_comment_id_seq OWNER TO admin_user;

--
-- Name: database_app_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.database_app_comment_id_seq OWNED BY public.database_app_comment.id;


--
-- Name: database_app_hashtag; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.database_app_hashtag (
    name character varying(50) NOT NULL
);


ALTER TABLE public.database_app_hashtag OWNER TO admin_user;

--
-- Name: database_app_thread; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.database_app_thread (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    content character varying(5000) NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    brand_id integer NOT NULL,
    nick_id character varying(50) NOT NULL
);


ALTER TABLE public.database_app_thread OWNER TO admin_user;

--
-- Name: database_app_thread_hashtags; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.database_app_thread_hashtags (
    id integer NOT NULL,
    thread_id integer NOT NULL,
    hashtag_id character varying(50) NOT NULL
);


ALTER TABLE public.database_app_thread_hashtags OWNER TO admin_user;

--
-- Name: database_app_thread_hashtags_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.database_app_thread_hashtags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.database_app_thread_hashtags_id_seq OWNER TO admin_user;

--
-- Name: database_app_thread_hashtags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.database_app_thread_hashtags_id_seq OWNED BY public.database_app_thread_hashtags.id;


--
-- Name: database_app_thread_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.database_app_thread_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.database_app_thread_id_seq OWNER TO admin_user;

--
-- Name: database_app_thread_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.database_app_thread_id_seq OWNED BY public.database_app_thread.id;


--
-- Name: database_app_user; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.database_app_user (
    nick character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    location character varying(100) NOT NULL
);


ALTER TABLE public.database_app_user OWNER TO admin_user;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin_user
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


ALTER TABLE public.django_admin_log OWNER TO admin_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin_user;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: database_app_brand id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_brand ALTER COLUMN id SET DEFAULT nextval('public.database_app_brand_id_seq'::regclass);


--
-- Name: database_app_car id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_car ALTER COLUMN id SET DEFAULT nextval('public.database_app_car_id_seq'::regclass);


--
-- Name: database_app_comment id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_comment ALTER COLUMN id SET DEFAULT nextval('public.database_app_comment_id_seq'::regclass);


--
-- Name: database_app_thread id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_thread ALTER COLUMN id SET DEFAULT nextval('public.database_app_thread_id_seq'::regclass);


--
-- Name: database_app_thread_hashtags id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_thread_hashtags ALTER COLUMN id SET DEFAULT nextval('public.database_app_thread_hashtags_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin_user
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
25	Can add brand	7	add_brand
26	Can change brand	7	change_brand
27	Can delete brand	7	delete_brand
28	Can view brand	7	view_brand
29	Can add hashtag	8	add_hashtag
30	Can change hashtag	8	change_hashtag
31	Can delete hashtag	8	delete_hashtag
32	Can view hashtag	8	view_hashtag
33	Can add user	9	add_user
34	Can change user	9	change_user
35	Can delete user	9	delete_user
36	Can view user	9	view_user
37	Can add thread	10	add_thread
38	Can change thread	10	change_thread
39	Can delete thread	10	delete_thread
40	Can view thread	10	view_thread
41	Can add comment	11	add_comment
42	Can change comment	11	change_comment
43	Can delete comment	11	delete_comment
44	Can view comment	11	view_comment
45	Can add car	12	add_car
46	Can change car	12	change_car
47	Can delete car	12	delete_car
48	Can view car	12	view_car
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$frVXai56kxkJ$8x/as92mMF7gA37YpTzr4dSQguubC7iIConDVZOWu8k=	\N	t	admin			admin@gmail.com	t	t	2020-05-14 11:28:47.820424+02
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: database_app_brand; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.database_app_brand (id, brand, model, country, production_begin, production_end) FROM stdin;
1	Toyota	Camry	Japan	1990-01-01	2000-12-31
2	Ford	Fiesta	USA	1998-04-01	2005-05-06
3	Opel	Vectra	Germany	2010-01-01	2017-04-13
\.


--
-- Data for Name: database_app_car; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.database_app_car (id, production_date, description, brand_id, user_id) FROM stdin;
\.


--
-- Data for Name: database_app_comment; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.database_app_comment (id, content, "timestamp", nick_id, thread_id) FROM stdin;
\.


--
-- Data for Name: database_app_hashtag; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.database_app_hashtag (name) FROM stdin;
\.


--
-- Data for Name: database_app_thread; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.database_app_thread (id, title, content, "timestamp", brand_id, nick_id) FROM stdin;
\.


--
-- Data for Name: database_app_thread_hashtags; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.database_app_thread_hashtags (id, thread_id, hashtag_id) FROM stdin;
\.


--
-- Data for Name: database_app_user; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.database_app_user (nick, name, location) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	database_app	brand
8	database_app	hashtag
9	database_app	user
10	database_app	thread
11	database_app	comment
12	database_app	car
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-05-14 11:28:46.839023+02
2	auth	0001_initial	2020-05-14 11:28:46.899386+02
3	admin	0001_initial	2020-05-14 11:28:46.986113+02
4	admin	0002_logentry_remove_auto_add	2020-05-14 11:28:47.007333+02
5	admin	0003_logentry_add_action_flag_choices	2020-05-14 11:28:47.018098+02
6	contenttypes	0002_remove_content_type_name	2020-05-14 11:28:47.037409+02
7	auth	0002_alter_permission_name_max_length	2020-05-14 11:28:47.043854+02
8	auth	0003_alter_user_email_max_length	2020-05-14 11:28:47.053387+02
9	auth	0004_alter_user_username_opts	2020-05-14 11:28:47.062802+02
10	auth	0005_alter_user_last_login_null	2020-05-14 11:28:47.072755+02
11	auth	0006_require_contenttypes_0002	2020-05-14 11:28:47.076463+02
12	auth	0007_alter_validators_add_error_messages	2020-05-14 11:28:47.087811+02
13	auth	0008_alter_user_username_max_length	2020-05-14 11:28:47.10429+02
14	auth	0009_alter_user_last_name_max_length	2020-05-14 11:28:47.114464+02
15	auth	0010_alter_group_name_max_length	2020-05-14 11:28:47.124287+02
16	auth	0011_update_proxy_permissions	2020-05-14 11:28:47.134262+02
17	database_app	0001_initial	2020-05-14 11:28:47.216996+02
18	sessions	0001_initial	2020-05-14 11:28:47.336523+02
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: database_app_brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.database_app_brand_id_seq', 3, true);


--
-- Name: database_app_car_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.database_app_car_id_seq', 1, false);


--
-- Name: database_app_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.database_app_comment_id_seq', 1, false);


--
-- Name: database_app_thread_hashtags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.database_app_thread_hashtags_id_seq', 1, false);


--
-- Name: database_app_thread_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.database_app_thread_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: database_app_brand database_app_brand_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_brand
    ADD CONSTRAINT database_app_brand_pkey PRIMARY KEY (id);


--
-- Name: database_app_car database_app_car_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_car
    ADD CONSTRAINT database_app_car_pkey PRIMARY KEY (id);


--
-- Name: database_app_comment database_app_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_comment
    ADD CONSTRAINT database_app_comment_pkey PRIMARY KEY (id);


--
-- Name: database_app_hashtag database_app_hashtag_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_hashtag
    ADD CONSTRAINT database_app_hashtag_pkey PRIMARY KEY (name);


--
-- Name: database_app_thread_hashtags database_app_thread_hashtags_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_thread_hashtags
    ADD CONSTRAINT database_app_thread_hashtags_pkey PRIMARY KEY (id);


--
-- Name: database_app_thread_hashtags database_app_thread_hashtags_thread_id_hashtag_id_0b197b00_uniq; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_thread_hashtags
    ADD CONSTRAINT database_app_thread_hashtags_thread_id_hashtag_id_0b197b00_uniq UNIQUE (thread_id, hashtag_id);


--
-- Name: database_app_thread database_app_thread_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_thread
    ADD CONSTRAINT database_app_thread_pkey PRIMARY KEY (id);


--
-- Name: database_app_user database_app_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_user
    ADD CONSTRAINT database_app_user_pkey PRIMARY KEY (nick);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: database_app_car_brand_id_43a23a9d; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_car_brand_id_43a23a9d ON public.database_app_car USING btree (brand_id);


--
-- Name: database_app_car_user_id_83b37503; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_car_user_id_83b37503 ON public.database_app_car USING btree (user_id);


--
-- Name: database_app_car_user_id_83b37503_like; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_car_user_id_83b37503_like ON public.database_app_car USING btree (user_id varchar_pattern_ops);


--
-- Name: database_app_comment_nick_id_47549a1f; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_comment_nick_id_47549a1f ON public.database_app_comment USING btree (nick_id);


--
-- Name: database_app_comment_nick_id_47549a1f_like; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_comment_nick_id_47549a1f_like ON public.database_app_comment USING btree (nick_id varchar_pattern_ops);


--
-- Name: database_app_comment_thread_id_113d5d01; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_comment_thread_id_113d5d01 ON public.database_app_comment USING btree (thread_id);


--
-- Name: database_app_hashtag_name_4dddf58e_like; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_hashtag_name_4dddf58e_like ON public.database_app_hashtag USING btree (name varchar_pattern_ops);


--
-- Name: database_app_thread_brand_id_5fe4f528; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_thread_brand_id_5fe4f528 ON public.database_app_thread USING btree (brand_id);


--
-- Name: database_app_thread_hashtags_hashtag_id_3157b8e9; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_thread_hashtags_hashtag_id_3157b8e9 ON public.database_app_thread_hashtags USING btree (hashtag_id);


--
-- Name: database_app_thread_hashtags_hashtag_id_3157b8e9_like; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_thread_hashtags_hashtag_id_3157b8e9_like ON public.database_app_thread_hashtags USING btree (hashtag_id varchar_pattern_ops);


--
-- Name: database_app_thread_hashtags_thread_id_8c2ace12; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_thread_hashtags_thread_id_8c2ace12 ON public.database_app_thread_hashtags USING btree (thread_id);


--
-- Name: database_app_thread_nick_id_0ec05a43; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_thread_nick_id_0ec05a43 ON public.database_app_thread USING btree (nick_id);


--
-- Name: database_app_thread_nick_id_0ec05a43_like; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_thread_nick_id_0ec05a43_like ON public.database_app_thread USING btree (nick_id varchar_pattern_ops);


--
-- Name: database_app_user_nick_efe82edb_like; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX database_app_user_nick_efe82edb_like ON public.database_app_user USING btree (nick varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: database_app_car database_app_car_brand_id_43a23a9d_fk_database_app_brand_id; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_car
    ADD CONSTRAINT database_app_car_brand_id_43a23a9d_fk_database_app_brand_id FOREIGN KEY (brand_id) REFERENCES public.database_app_brand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: database_app_car database_app_car_user_id_83b37503_fk_database_app_user_nick; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_car
    ADD CONSTRAINT database_app_car_user_id_83b37503_fk_database_app_user_nick FOREIGN KEY (user_id) REFERENCES public.database_app_user(nick) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: database_app_comment database_app_comment_nick_id_47549a1f_fk_database_app_user_nick; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_comment
    ADD CONSTRAINT database_app_comment_nick_id_47549a1f_fk_database_app_user_nick FOREIGN KEY (nick_id) REFERENCES public.database_app_user(nick) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: database_app_comment database_app_comment_thread_id_113d5d01_fk_database_; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_comment
    ADD CONSTRAINT database_app_comment_thread_id_113d5d01_fk_database_ FOREIGN KEY (thread_id) REFERENCES public.database_app_thread(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: database_app_thread_hashtags database_app_thread__hashtag_id_3157b8e9_fk_database_; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_thread_hashtags
    ADD CONSTRAINT database_app_thread__hashtag_id_3157b8e9_fk_database_ FOREIGN KEY (hashtag_id) REFERENCES public.database_app_hashtag(name) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: database_app_thread_hashtags database_app_thread__thread_id_8c2ace12_fk_database_; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_thread_hashtags
    ADD CONSTRAINT database_app_thread__thread_id_8c2ace12_fk_database_ FOREIGN KEY (thread_id) REFERENCES public.database_app_thread(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: database_app_thread database_app_thread_brand_id_5fe4f528_fk_database_app_brand_id; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_thread
    ADD CONSTRAINT database_app_thread_brand_id_5fe4f528_fk_database_app_brand_id FOREIGN KEY (brand_id) REFERENCES public.database_app_brand(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: database_app_thread database_app_thread_nick_id_0ec05a43_fk_database_app_user_nick; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.database_app_thread
    ADD CONSTRAINT database_app_thread_nick_id_0ec05a43_fk_database_app_user_nick FOREIGN KEY (nick_id) REFERENCES public.database_app_user(nick) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--


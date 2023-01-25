--
-- PostgreSQL database dump
--

-- Dumped from database version 11.16
-- Dumped by pg_dump version 14.5

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

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO doadmin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO doadmin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO doadmin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO doadmin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO doadmin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO doadmin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: doadmin
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


ALTER TABLE public.django_admin_log OWNER TO doadmin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO doadmin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO doadmin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO doadmin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_cron_cronjoblog; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.django_cron_cronjoblog (
    id integer NOT NULL,
    code character varying(64) NOT NULL,
    start_time timestamp with time zone NOT NULL,
    end_time timestamp with time zone NOT NULL,
    is_success boolean NOT NULL,
    message text NOT NULL,
    ran_at_time time without time zone
);


ALTER TABLE public.django_cron_cronjoblog OWNER TO doadmin;

--
-- Name: django_cron_cronjoblog_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.django_cron_cronjoblog_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_cron_cronjoblog_id_seq OWNER TO doadmin;

--
-- Name: django_cron_cronjoblog_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.django_cron_cronjoblog_id_seq OWNED BY public.django_cron_cronjoblog.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO doadmin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO doadmin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO doadmin;

--
-- Name: knox_authtoken; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.knox_authtoken (
    digest character varying(128) NOT NULL,
    salt character varying(16) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    expiry timestamp with time zone,
    token_key character varying(8) NOT NULL
);


ALTER TABLE public.knox_authtoken OWNER TO doadmin;

--
-- Name: passwordReset_resetpasswordtoken; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public."passwordReset_resetpasswordtoken" (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    key character varying(64) NOT NULL,
    ip_address inet,
    user_agent character varying(256) NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public."passwordReset_resetpasswordtoken" OWNER TO doadmin;

--
-- Name: passwordReset_resetpasswordtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public."passwordReset_resetpasswordtoken_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."passwordReset_resetpasswordtoken_id_seq" OWNER TO doadmin;

--
-- Name: passwordReset_resetpasswordtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public."passwordReset_resetpasswordtoken_id_seq" OWNED BY public."passwordReset_resetpasswordtoken".id;


--
-- Name: pins_aboutus; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.pins_aboutus (
    id integer NOT NULL,
    "aboutDesc" text NOT NULL
);


ALTER TABLE public.pins_aboutus OWNER TO doadmin;

--
-- Name: pins_aboutus_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.pins_aboutus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pins_aboutus_id_seq OWNER TO doadmin;

--
-- Name: pins_aboutus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.pins_aboutus_id_seq OWNED BY public.pins_aboutus.id;


--
-- Name: pins_categorytype; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.pins_categorytype (
    id integer NOT NULL,
    "categoryName" character varying(50) NOT NULL,
    image_url character varying(100)
);


ALTER TABLE public.pins_categorytype OWNER TO doadmin;

--
-- Name: pins_categorytype_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.pins_categorytype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pins_categorytype_id_seq OWNER TO doadmin;

--
-- Name: pins_categorytype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.pins_categorytype_id_seq OWNED BY public.pins_categorytype.id;


--
-- Name: pins_commentstory; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.pins_commentstory (
    id integer NOT NULL,
    is_anonymous_comment boolean NOT NULL,
    description text NOT NULL,
    commenter_id integer,
    pin_id integer
);


ALTER TABLE public.pins_commentstory OWNER TO doadmin;

--
-- Name: pins_commentstory_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.pins_commentstory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pins_commentstory_id_seq OWNER TO doadmin;

--
-- Name: pins_commentstory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.pins_commentstory_id_seq OWNED BY public.pins_commentstory.id;


--
-- Name: pins_faq; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.pins_faq (
    id integer NOT NULL,
    "faqQuestionDesc" text NOT NULL,
    "faqAnswerDesc" text NOT NULL
);


ALTER TABLE public.pins_faq OWNER TO doadmin;

--
-- Name: pins_faq_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.pins_faq_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pins_faq_id_seq OWNER TO doadmin;

--
-- Name: pins_faq_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.pins_faq_id_seq OWNED BY public.pins_faq.id;


--
-- Name: pins_flagcomment; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.pins_flagcomment (
    id integer NOT NULL,
    flagged boolean NOT NULL,
    "reportType" integer NOT NULL,
    reason text,
    created_at timestamp with time zone,
    comment_id integer,
    flagger_id integer,
    CONSTRAINT "pins_flagcomment_reportType_check" CHECK (("reportType" >= 0))
);


ALTER TABLE public.pins_flagcomment OWNER TO doadmin;

--
-- Name: pins_flagcomment_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.pins_flagcomment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pins_flagcomment_id_seq OWNER TO doadmin;

--
-- Name: pins_flagcomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.pins_flagcomment_id_seq OWNED BY public.pins_flagcomment.id;


--
-- Name: pins_flagstory; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.pins_flagstory (
    id integer NOT NULL,
    flagged boolean NOT NULL,
    "reportType" integer NOT NULL,
    reason text,
    flagger_id integer,
    "pinId_id" integer,
    CONSTRAINT "pins_flagstory_reportType_check" CHECK (("reportType" >= 0))
);


ALTER TABLE public.pins_flagstory OWNER TO doadmin;

--
-- Name: pins_flagstory_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.pins_flagstory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pins_flagstory_id_seq OWNER TO doadmin;

--
-- Name: pins_flagstory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.pins_flagstory_id_seq OWNED BY public.pins_flagstory.id;


--
-- Name: pins_photo; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.pins_photo (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    image_url character varying(100),
    uploader_id integer
);


ALTER TABLE public.pins_photo OWNER TO doadmin;

--
-- Name: pins_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.pins_photo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pins_photo_id_seq OWNER TO doadmin;

--
-- Name: pins_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.pins_photo_id_seq OWNED BY public.pins_photo.id;


--
-- Name: pins_pin; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.pins_pin (
    id integer NOT NULL,
    title character varying(150) NOT NULL,
    description text NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL,
    "upVotes" smallint NOT NULL,
    "startDate" date,
    "endDate" date,
    is_anonymous_pin boolean NOT NULL,
    "postDate" date,
    "lastEditDate" date,
    "postCode" character varying(150),
    locality character varying(150),
    region character varying(150),
    country character varying(150),
    address character varying(150),
    category_id integer,
    "lastPersonEdit_id" integer,
    owner_id integer,
    CONSTRAINT "pins_pin_upVotes_check" CHECK (("upVotes" >= 0))
);


ALTER TABLE public.pins_pin OWNER TO doadmin;

--
-- Name: pins_pin_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.pins_pin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pins_pin_id_seq OWNER TO doadmin;

--
-- Name: pins_pin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.pins_pin_id_seq OWNED BY public.pins_pin.id;


--
-- Name: pins_upvotestory; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.pins_upvotestory (
    id integer NOT NULL,
    upvote boolean NOT NULL,
    "pinId_id" integer,
    "upVoter_id" integer
);


ALTER TABLE public.pins_upvotestory OWNER TO doadmin;

--
-- Name: pins_upvotestory_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.pins_upvotestory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pins_upvotestory_id_seq OWNER TO doadmin;

--
-- Name: pins_upvotestory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.pins_upvotestory_id_seq OWNED BY public.pins_upvotestory.id;


--
-- Name: rest_framework_api_key_apikey; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.rest_framework_api_key_apikey (
    id character varying(150) NOT NULL,
    created timestamp with time zone NOT NULL,
    name character varying(50) NOT NULL,
    revoked boolean NOT NULL,
    expiry_date timestamp with time zone,
    hashed_key character varying(150) NOT NULL,
    prefix character varying(8) NOT NULL
);


ALTER TABLE public.rest_framework_api_key_apikey OWNER TO doadmin;

--
-- Name: users_user; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    username character varying(20) NOT NULL,
    email character varying(70) NOT NULL,
    is_moderator boolean NOT NULL,
    is_administrator boolean NOT NULL,
    is_anonymous_active boolean NOT NULL,
    accessibility_mode_active boolean NOT NULL,
    bio character varying(300) NOT NULL,
    is_profile_private boolean NOT NULL,
    profileurl character varying(200),
    image_url character varying(100)
);


ALTER TABLE public.users_user OWNER TO doadmin;

--
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO doadmin;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO doadmin;

--
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO doadmin;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO doadmin;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO doadmin;

--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_cron_cronjoblog id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_cron_cronjoblog ALTER COLUMN id SET DEFAULT nextval('public.django_cron_cronjoblog_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: passwordReset_resetpasswordtoken id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public."passwordReset_resetpasswordtoken" ALTER COLUMN id SET DEFAULT nextval('public."passwordReset_resetpasswordtoken_id_seq"'::regclass);


--
-- Name: pins_aboutus id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_aboutus ALTER COLUMN id SET DEFAULT nextval('public.pins_aboutus_id_seq'::regclass);


--
-- Name: pins_categorytype id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_categorytype ALTER COLUMN id SET DEFAULT nextval('public.pins_categorytype_id_seq'::regclass);


--
-- Name: pins_commentstory id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_commentstory ALTER COLUMN id SET DEFAULT nextval('public.pins_commentstory_id_seq'::regclass);


--
-- Name: pins_faq id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_faq ALTER COLUMN id SET DEFAULT nextval('public.pins_faq_id_seq'::regclass);


--
-- Name: pins_flagcomment id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_flagcomment ALTER COLUMN id SET DEFAULT nextval('public.pins_flagcomment_id_seq'::regclass);


--
-- Name: pins_flagstory id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_flagstory ALTER COLUMN id SET DEFAULT nextval('public.pins_flagstory_id_seq'::regclass);


--
-- Name: pins_photo id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_photo ALTER COLUMN id SET DEFAULT nextval('public.pins_photo_id_seq'::regclass);


--
-- Name: pins_pin id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_pin ALTER COLUMN id SET DEFAULT nextval('public.pins_pin_id_seq'::regclass);


--
-- Name: pins_upvotestory id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_upvotestory ALTER COLUMN id SET DEFAULT nextval('public.pins_upvotestory_id_seq'::regclass);


--
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: doadmin
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
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add about us	6	add_aboutus
22	Can change about us	6	change_aboutus
23	Can delete about us	6	delete_aboutus
24	Can view about us	6	view_aboutus
25	Can add category type	7	add_categorytype
26	Can change category type	7	change_categorytype
27	Can delete category type	7	delete_categorytype
28	Can view category type	7	view_categorytype
29	Can add comment story	8	add_commentstory
30	Can change comment story	8	change_commentstory
31	Can delete comment story	8	delete_commentstory
32	Can view comment story	8	view_commentstory
33	Can add faq	9	add_faq
34	Can change faq	9	change_faq
35	Can delete faq	9	delete_faq
36	Can view faq	9	view_faq
37	Can add pin	10	add_pin
38	Can change pin	10	change_pin
39	Can delete pin	10	delete_pin
40	Can view pin	10	view_pin
41	Can add up vote story	11	add_upvotestory
42	Can change up vote story	11	change_upvotestory
43	Can delete up vote story	11	delete_upvotestory
44	Can view up vote story	11	view_upvotestory
45	Can add photo	12	add_photo
46	Can change photo	12	change_photo
47	Can delete photo	12	delete_photo
48	Can view photo	12	view_photo
49	Can add flag story	13	add_flagstory
50	Can change flag story	13	change_flagstory
51	Can delete flag story	13	delete_flagstory
52	Can view flag story	13	view_flagstory
53	Can add flag comment	14	add_flagcomment
54	Can change flag comment	14	change_flagcomment
55	Can delete flag comment	14	delete_flagcomment
56	Can view flag comment	14	view_flagcomment
57	Can add auth token	15	add_authtoken
58	Can change auth token	15	change_authtoken
59	Can delete auth token	15	delete_authtoken
60	Can view auth token	15	view_authtoken
61	Can add user	16	add_user
62	Can change user	16	change_user
63	Can delete user	16	delete_user
64	Can view user	16	view_user
65	Can add stories	16	can_add_stories
66	Can edit their stories	16	can_edit_their_stories
67	Can delete their stories	16	can_delete_their_stories
68	Can delete other user stories	16	can_delete_other_stories
69	Can edit other user stories	16	can_edit_other_stories
70	Can ban users	16	can_ban_users
71	Can ban moderators	16	can_ban_moderators
72	Can add moderators	16	can_add_moderators
73	Can add administrators	16	can_add_admin
74	Can add personal stories	16	can_add_personal_stories
75	Can add Password Reset Token	17	add_resetpasswordtoken
76	Can change Password Reset Token	17	change_resetpasswordtoken
77	Can delete Password Reset Token	17	delete_resetpasswordtoken
78	Can view Password Reset Token	17	view_resetpasswordtoken
79	Can add about us	18	add_aboutus
80	Can change about us	18	change_aboutus
81	Can delete about us	18	delete_aboutus
82	Can view about us	18	view_aboutus
83	Can add cron job log	19	add_cronjoblog
84	Can change cron job log	19	change_cronjoblog
85	Can delete cron job log	19	delete_cronjoblog
86	Can view cron job log	19	view_cronjoblog
87	Can add API key	20	add_apikey
88	Can change API key	20	change_apikey
89	Can delete API key	20	delete_apikey
90	Can view API key	20	view_apikey
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	pins	aboutus
7	pins	categorytype
8	pins	commentstory
9	pins	faq
10	pins	pin
11	pins	upvotestory
12	pins	photo
13	pins	flagstory
14	pins	flagcomment
15	knox	authtoken
16	users	user
17	passwordReset	resetpasswordtoken
18	management	aboutus
19	django_cron	cronjoblog
20	rest_framework_api_key	apikey
\.


--
-- Data for Name: django_cron_cronjoblog; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_cron_cronjoblog (id, code, start_time, end_time, is_success, message, ran_at_time) FROM stdin;
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-05-07 02:26:54.27506+00
2	contenttypes	0002_remove_content_type_name	2020-05-07 02:26:54.450686+00
3	auth	0001_initial	2020-05-07 02:26:54.824343+00
4	auth	0002_alter_permission_name_max_length	2020-05-07 02:26:55.401881+00
5	auth	0003_alter_user_email_max_length	2020-05-07 02:26:55.63835+00
6	auth	0004_alter_user_username_opts	2020-05-07 02:26:55.828941+00
7	auth	0005_alter_user_last_login_null	2020-05-07 02:26:55.955493+00
8	auth	0006_require_contenttypes_0002	2020-05-07 02:26:56.0626+00
9	auth	0007_alter_validators_add_error_messages	2020-05-07 02:26:56.169001+00
10	auth	0008_alter_user_username_max_length	2020-05-07 02:26:56.275575+00
11	auth	0009_alter_user_last_name_max_length	2020-05-07 02:26:56.391607+00
12	auth	0010_alter_group_name_max_length	2020-05-07 02:26:56.521557+00
13	auth	0011_update_proxy_permissions	2020-05-07 02:26:56.629323+00
14	users	0001_initial	2020-05-07 02:26:56.832201+00
15	admin	0001_initial	2020-05-07 02:26:57.31636+00
16	admin	0002_logentry_remove_auto_add	2020-05-07 02:26:57.539111+00
17	admin	0003_logentry_add_action_flag_choices	2020-05-07 02:26:57.676431+00
18	django_cron	0001_initial	2020-05-07 02:26:57.91008+00
19	django_cron	0002_remove_max_length_from_CronJobLog_message	2020-05-07 02:26:58.165821+00
20	knox	0001_initial	2020-05-07 02:26:58.307216+00
21	knox	0002_auto_20150916_1425	2020-05-07 02:26:58.55654+00
22	knox	0003_auto_20150916_1526	2020-05-07 02:26:58.818175+00
23	knox	0004_authtoken_expires	2020-05-07 02:26:58.95174+00
24	knox	0005_authtoken_token_key	2020-05-07 02:26:59.09438+00
25	knox	0006_auto_20160818_0932	2020-05-07 02:26:59.424416+00
26	knox	0007_auto_20190111_0542	2020-05-07 02:26:59.563441+00
27	passwordReset	0001_initial	2020-05-07 02:26:59.700055+00
28	passwordReset	0002_resetpasswordtoken_user	2020-05-07 02:26:59.867745+00
29	pins	0001_initial	2020-05-07 02:27:00.699974+00
30	sessions	0001_initial	2020-05-07 02:27:02.017981+00
31	rest_framework_api_key	0001_initial	2020-05-09 02:29:51.645934+00
32	rest_framework_api_key	0002_auto_20190529_2243	2020-05-09 02:29:51.976051+00
33	rest_framework_api_key	0003_auto_20190623_1952	2020-05-09 02:29:52.212418+00
34	rest_framework_api_key	0004_prefix_hashed_key	2020-05-09 02:29:52.734025+00
35	pins	0002_auto_20210430_0744	2021-04-30 07:44:10.942155+00
36	pins	0002_auto_20210502_2316	2021-05-02 23:16:58.216419+00
37	pins	0002_auto_20210504_0010	2021-05-04 00:10:30.756755+00
38	pins	0002_auto_20210506_0407	2021-05-06 04:07:28.973297+00
39	pins	0002_auto_20210521_1650	2021-05-21 16:51:02.900288+00
40	pins	0002_auto_20211023_0122	2021-10-23 01:22:51.496057+00
41	pins	0002_auto_20211109_0050	2021-11-09 00:50:18.297605+00
42	pins	0002_auto_20211116_0707	2021-11-16 07:07:52.304192+00
43	pins	0002_auto_20220406_0155	2022-04-06 18:33:31.200601+00
44	rest_framework_api_key	0005_auto_20220110_1102	2022-04-06 18:33:31.412515+00
45	pins	0002_auto_20211004_2033	2022-04-07 03:42:33.165513+00
46	pins	0002_auto_20220407_1928	2022-04-07 19:28:20.798638+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: knox_authtoken; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.knox_authtoken (digest, salt, created, user_id, expiry, token_key) FROM stdin;
b025d4b0d31df6326f091c23a9006ffb6f61b670111d88ba14580d53fd7e666dfab07ac6864a7039d7014a26105393a6d475622aab8541fcbdf5f14dbf006457	643ebc34d8fdfd18	2020-05-09 21:00:24.777036+00	26	2020-05-10 07:00:24.776632+00	201cc6fb
e647871efcd628f847d456c4f1bb7fab9930cbcc1a9bd4686965b3c964f8ce9b66f10d11566223de729f4e70bee326c619d85dc64176a6bc8ae7f388d4c0a743	134551c5e0417225	2020-11-29 22:50:55.986802+00	51	2020-11-30 08:50:55.986163+00	2c47b63a
fd747c8945fbabd600ea01c162579521c414c0f97f2f33b6272a7ddd80343b4f06f5aa1cafb2791c0a8a70d2c9828da1f7e1cf54a74e1a564f488a02d263fd4f	0190a6a29866102d	2021-05-14 17:49:20.155664+00	102	2021-05-15 03:49:20.15082+00	6799f311
70fdc97692269a0f5613f82065b4e86905667765554b0a0d8335378a9d99ed8fe8752d9d3443a120461cbac2ce6cbb3e20041ead9031c9edf81f7963a7ab3493	a5cfcf4a42729cdc	2020-05-12 00:11:59.512736+00	28	2020-05-12 10:11:59.512291+00	ddbb79ab
6cfa61363c785beeaf4d547da02f3264bf37db38e18a139c63d683e1fee3eb9d527ae8916a059c460f4e8bb2eceef849f5d7a20bc936bc88de2b5b3fda1ff17f	69acea2d0c6f9d1a	2022-03-15 00:56:45.460559+00	150	2022-03-15 10:56:45.459666+00	aff5491e
681248160b0b60f89ff641f2bd5a3218a7e2afcbf15af4c2d2cd39abc55decd4f724f2a26ceb9754c51927565d7bb6d005b5a49de48b69b72aefbb10d51c9f2f	0b76d75d7b8e2ea3	2021-05-18 01:07:29.791872+00	106	2021-05-18 11:07:29.791478+00	38c7c92d
675739034ecf0f1d58f090e93b1eb4c7502769aefc495492f0e687181121c3d23547766bd32a2d79eafa7ff9372be6241787bd8f4c1f4c436e8fd7cb84d46673	b197aff2eb3bcfac	2021-05-18 19:14:23.887839+00	35	2021-05-19 05:14:23.886991+00	68892f8a
834480da00ff17b8ed508c043a2f589077547375b614ded37e1de61711cbccea7d1e0defb2f733f246bb9986cb169e32f3267c2a1bec8ac0e08a4fd07e856565	c9da4d16ccd870a0	2021-11-17 00:18:40.339823+00	138	2021-11-17 10:18:40.339349+00	564ec75b
68b91213e10a5644a1d1b147865807b5819b83affddea250ea910a17eee1cb42f51f852991c39848112140b9a21b6a81aad5991f249756370e90e875b8276e0b	4a29e7447467b1e9	2022-03-17 02:45:54.122352+00	155	2022-03-17 12:45:54.121865+00	b7236612
70a3b9f24c8b1e5eba826a274f60ba5af1879dc17ed62b77b13549c1fed6ac63cfaab3ee67628340b64725c54223dbcb3dbd300426ce9e7f947effc20d2350ee	0d3eea1e505f7d22	2021-05-20 01:33:56.943476+00	35	2021-05-20 11:33:56.94308+00	c09a4c81
9357f317a415b10f969f81895db527c81d804765da96d332b37a4baf02f56582bbcd21a634814df5a7245ea51061669638eeeed40e05dcfdad903816445b5e6c	2f55a9774c6f52eb	2022-03-02 19:39:24.630615+00	137	2022-03-03 05:39:24.629536+00	6bc821eb
489bf20cbca27659f55b3fa6e2dc0cb1c65d7d01e58f6af3458afd878b4e0e7c36f9bc9cf413a83c51f855fccfc753bf281af7f2b434b66c001468fbcc8d71ca	87188bea38771b45	2021-06-29 08:26:33.044743+00	109	2021-06-29 18:26:33.042918+00	cd964da1
a41f7cec23c59cfa2d0ba2ec3bddc913f902d2aade3b78f82a84d4e2e6480b6c7cfe832ee365c000560a60cac65af8a12c2f2166e3c948eb345e2f1ef12b675a	6ce7cd7451c4a5b5	2022-07-26 23:05:08.89613+00	189	2022-07-27 09:05:08.895388+00	6044cb60
94632f81a9e6410570f7c96b18c6f12f1f3a53823ce183876658545b535c7d18a181debe69f86b506d05a4e53673b658f7b5df4bc5d6ff5ff1bb564e053f08bc	f0de67b75c448c58	2022-04-17 19:31:24.337352+00	170	2022-04-18 05:31:24.336518+00	d08e635a
27c8f2082d9deff23645e42d1e26c479bf697e253acf756fbdb3894775e56357ca2751ea632f01624e198464e21a4c617c12b10a1172e51b63e404d9361a7e3b	e3cfb277009c35a0	2021-05-13 17:43:16.288058+00	103	2021-05-14 03:43:16.287703+00	be8a7c5e
ed03866cd0998e0f875e65d6e07470a00923c35e9484f16ca917b13ca1d63a7b28e7373166f0d1c16f11ad3dcdb277478ede02aee3cc1eb11e4cbc0d88f23cd5	0dc34c54d89d15f7	2022-08-24 03:57:15.404163+00	195	2022-08-24 13:57:15.403307+00	6eaba84d
5fd00533cda5af3386283cd7a0a6f71c07a802ac442d4b8abc6cf3e961f57c26e82c7766b1af00f5d6e6da18e8c4e16da50bd50ea5208521a138282b74973d0b	f0d29c90e3da34d9	2020-05-08 18:23:46.749236+00	7	2020-05-09 04:23:46.748787+00	14acde9b
42115081bc24fb78d7d0f0863d1a8273ccc2e79fdcbe937d0fdc5f0f5493fc25244a02733191d35443e176111ccce3ea42974c102642fb732947bc4f45c23375	e8b60511ad5e4f98	2021-09-09 04:43:41.257868+00	118	2021-09-09 14:43:41.257111+00	f16efab0
35927c217e88dbbbe575e827cea5be643a6c0c9f2c0d3f65e36520b4ca6f2395d2e5ba402defa0e90ee56731c88fb013b96f1ebdd9d0cc0eb7066e4f3cd16cd3	468e576f359d9fac	2021-09-09 04:43:54.279711+00	118	2021-09-09 14:43:54.258738+00	8a25e89e
f946a36500c2b7ae92af21347e7291625db3c51a987b00a04908956eb727624cd31ce0b0b515ba03dd6c4805802264538745be3242758cfdd50e98df7975bf11	c803637457a1ce3d	2021-09-09 04:44:03.202676+00	118	2021-09-09 14:44:03.202266+00	fd2dbe92
b031e744f32b62a821e803f8a48ec018c9f7edce03262664c8cb85b5265388162d5670ed23bf9c1ad9c37d3dbdef35d17714c2df5bc6e29e1eb9c6922cd6f0a7	5d033f6e74f99ef2	2021-09-09 04:44:12.599059+00	118	2021-09-09 14:44:12.598158+00	d89a486a
b97a51e5b8fbd3f01a8fc4091a35ab435feeadc4da4e3dd14ed37b8e9c6124323ee21b2d4983748a5afc8351752861da9eb62c8c659b73cebdbf8aa05afa6d47	2ac328985e2e7371	2020-05-08 20:21:53.62847+00	13	2020-05-09 06:21:53.627967+00	7463d497
953c8271ca8df6390495f26cf95ff3953fa76c3c9c400c4324c73bf503c9c16c912793f211f2eb9265188f3d49b3d5b9015721baeb62ae9a2f1ec4b8403ce5e5	18fb9d09fa584603	2020-05-08 20:33:39.646451+00	14	2020-05-09 06:33:39.646079+00	444bd3a8
a5f320eb399c7604d77e315aa512fc781812a5655c3b0848e0154de2bdc82015db9163cffd9f436a656f009dc235f5a31a156a5420f647e9b8356a30eac85f7b	3792cff44bb94f89	2020-05-08 20:41:59.847035+00	15	2020-05-09 06:41:59.846523+00	2f278f0c
acba2b53982fa0fdf41db13e42445685b1a3967aedff1a5882a8ccbca4c0e9a9431d59a3d30a06774f27a91c4e5999d542f4691fb728046132dd767942bbcdcc	2962e5d5219b7f1b	2020-05-08 20:52:25.166756+00	16	2020-05-09 06:52:25.166377+00	ba36e29d
99e75ea73e688915d6b8b021dd46c1e4ee5b2df6032c95a82aab0f7b88dc62ce3a4c2bc77a4defa71ab633edb22570fbab2a9feebf7394705f92ae16d77360fb	ba5c8f07b8edfdef	2020-05-08 22:05:28.910376+00	18	2020-05-09 08:05:28.909965+00	d3d6510e
797a977023070a983ab62b8a43e49aa10654a976833b516ad2467b142f07e0b9f24618755243f98b16a79ad6b026207794bcf344b4a381e961cc0afd855f7fce	6ab39f0f9f9ed300	2020-05-09 00:17:34.402192+00	19	2020-05-09 10:17:34.401708+00	aa92ced3
e94e8d7610ad4d4c9debe3c9ad7dcee8ae219f5bf335ca53cd4a38d270f806061317020a026c92895bd92d2ff6071bca86db2c000fc88749628169581d6dde9e	df5dd1b66e746cde	2020-05-09 00:30:33.813629+00	20	2020-05-09 10:30:33.813265+00	80f7747e
b532c57dc49504ba6d3b6c64f38987a99afe3ac2cf67edd035cc27bfbe4e9f818c63ebf3beb100d7ae962108c340b8cbca90c10484cd6c118382584b34e3d34b	b120a03d560552f6	2020-05-09 01:38:58.359878+00	21	2020-05-09 11:38:58.359513+00	d37b8f54
1888bae00d9f454b9f2a04359c159fe4851fc3a37f0af8fe60580a67211c93fe4ed39fee1a5e173aaa270c0377091a77453e90b15edf71b138a21194a3b95a30	dda7c2c8ca53cdf5	2020-05-09 06:48:49.827566+00	10	2020-05-09 16:48:49.826906+00	93ae572b
eda44ee2e7da099f3741e9fa6363674aab5ca948b2d90e0663b999c918da5021df047883a3fe94b5975f87405e03529981d00ac7ee733e22317d4fbd0428864a	e6abc4967358f536	2020-05-09 17:21:05.172296+00	24	2020-05-10 03:21:05.171853+00	60c1b0e5
c6131e69ea029887f03d164a4d697ff5877dfe96d837441145547704087a3abb3d18ec5c853078df5398f8c97d3f97722b5d5ec4a70859394ff35ed04565c261	73789751ea8d0552	2021-05-18 00:22:09.898087+00	35	2021-05-18 10:22:09.897722+00	d540eae3
52e29ebb0cf8b8641570da5b0e31188ef2b7b5aba2dafbce9ec93bfa5febfae7a02ee94a925c7dce7e4651a287f47e3eca4e0483d4c074932da5e663d9db294d	36e4c2e455447a43	2021-05-15 18:55:45.927885+00	104	2021-05-16 04:55:45.927526+00	10ddb19e
6a5c841b93c5c35f4e9c77ccabadeec0b6fdad1bbb76d7bddb6597285992552e4c38fdc02be0eb4afe6ff4466dbac2c8b00b7c896e752e48a5d4a70ca5cfeb99	2322c6e39c239407	2022-04-09 09:40:22.255322+00	168	2022-04-09 19:40:22.25485+00	568167e9
e803c9eeadca25f886f6513f272d9a6684e985520595cb286d271ed34be8e6db402fd4c1e6cfb48f404bba7dcb302b0668e91c74dda11e21fdadb0772671c942	6ddc9054bde77521	2021-05-18 19:23:55.439693+00	35	2021-05-19 05:23:55.439218+00	46efad88
1271d64b8985eeab658f7bae595b6db777fcdec6724592e663f77af340d5f4f23c92514b8180e5710357411771a2e6a7d59747c5cb9ea4391c4ed153dccbd753	cdc8223948f79ea7	2021-05-19 17:53:22.279455+00	35	2021-05-20 03:53:22.274762+00	d475f70a
2ae5360f2415d12f0d639a76a7b4356f484729f6918f68fb0198e00501ffb106cfe8d4753ec78bff7f813163955f7dff5a721b04922a39bad4559a85942e1935	983ba2f19166e6ac	2022-03-15 04:13:58.606745+00	151	2022-03-15 14:13:58.606207+00	c02e0c20
661b3be679ef474412a907ce5aa5f5c6fbc40bc8f4b50e741e8beb8b870c2c3d493a3b1925f11cfb4cd0b707f106d21db809b4f6b6c8957207ea34170e9e98de	3b2c61c1dc864384	2021-05-26 22:51:31.778512+00	42	2021-05-27 08:51:31.777875+00	b627aeaa
0525798f88dc0346501edff812da5118393374a85e27c0a3cd7ccfc22cd8904c9719844fe362b8e017287994c94813f7c2c405a28b6d2da3b33ef27394ae163e	40ddce402dfb5fd6	2022-03-17 12:24:58.830527+00	156	2022-03-17 22:24:58.829322+00	5438b9e3
36e38c01f92483ead494bf79c11ddea618284f6f049e90d91d92bbf06e1cb81e7c17317b894fe923531ec2385d2c6937af52b5a5346d22b853ce5bf8ab24f342	c9e4bedc784b18b7	2022-04-15 01:57:53.431506+00	169	2022-04-15 11:57:53.426193+00	6c5aa286
64ff9dc278a4519d76225091ee239579a1ff0ea2aa2c51eb95a2aaa9225905b979865f493caeaaf0018fc2acd86a977de02d55130bbcddfcbf42dccd697d2a05	22347487bc52c48c	2021-06-29 08:26:33.053046+00	109	2021-06-29 18:26:33.052627+00	9dc328a2
6762fca087d6415ed62aa339640a4bb462c4d8c01e439a55281632687838c763e9c78ce37a4249a89f68cadbd43d3afd15b5218238924cdd7fc7c701b5785f3a	a5f5b4a739d3554e	2021-09-09 03:54:58.422458+00	112	2021-09-09 13:54:58.421611+00	f20fceeb
ee841fb42b7730104817951046b756c644618b67da98f13e221c02ff4f204c5980ca3a082b337325a510c57d7d50d7d9d812c2fde71a0a92d4e6d6c3e58e0f45	22b89a585f7cfb30	2021-09-09 04:39:38.519615+00	116	2021-09-09 14:39:38.51908+00	5d9ad4c1
8d9e1c514ac073c9e0da927688b9aab1a3d82e0234d829e3cbaa5a153e3c7072b34c6aca633289359bf0abeac53c670450f2e5119b1931efc05e51c9d5ffcbfa	48eef85a9411391b	2021-09-09 04:43:30.191942+00	118	2021-09-09 14:43:30.186872+00	99a6627a
34e025324281bbba3f18fe7ba5e8764a885246e4fac2fc2408e8f732e9410fe2110ebf98d913bbc6ffaaa6401d6cdab727bf3f8833a8c8e964c80a0145ed3333	e238cb7d0dc0e655	2021-09-09 04:43:44.795187+00	118	2021-09-09 14:43:44.785701+00	362af994
747955c8b3c55b6ed68b377b37f4fc866f60ef6bfb756abc067c21f3fb30d0243e53635ca037ad2dca906ea4b2dbcefb1a6146e823832b2ed6abc1ce9b5a3e41	536db430ca0aa084	2021-03-06 17:57:16.362092+00	94	2021-03-07 03:57:16.361361+00	a5baade3
2daa953f203524c11a9b6cab9006a71c3815a2103d7f05ee73156285a628e79dbe90b310daf5adb2dfcf32464e4c95cbee8730b657a966413f21b5bab3b11b08	f40abc958730bfb6	2021-09-09 04:43:55.313114+00	118	2021-09-09 14:43:55.312384+00	bb20de41
4a2088b41aaad7130fb36f4cb6f7ef9f38be1babb94fb6566baff4a5dfdae33b091ae5d390bb221867fde7b7bd062e6f1ca02c6702edae25d67b56415a31a829	be5157cc077af9cc	2021-09-09 04:44:03.314484+00	118	2021-09-09 14:44:03.313978+00	098c4f57
e97c8dc038ed885f7db28150c5b33d782deae80c396716a5d773311f196c214bde051830a4b078a6ac66cf60d3b197cc8211a8ba4c07f9e8bc3c7076f23a4250	2a2338ba79bfc899	2022-03-02 19:39:26.10368+00	137	2022-03-03 05:39:26.103084+00	271b7cb3
c621ef51f6d002dc565082386f25e247cd81895e779abf33bc302321e4110f661666b5f97a97730acd519cc27a23dc6b3466497598b5453f8225f104f6382788	fde193794180e668	2022-03-21 02:51:09.565438+00	162	2022-03-21 12:51:09.564629+00	469c50f7
abc6e779bba85024c1a5187e59597c42344bdda46603137eb6c9cc6deb1dce8f503ca99a77b23779c6ac923bf7d08d9ecd395210e43565d12963d0090f1e955c	778c42fcb7039db7	2020-11-12 23:07:51.942+00	48	2020-11-13 09:07:51.94153+00	5a6d79b2
70bb290aa190b86ebb9f68e1ab273bde61b1c9dd33ae43749c1e92f459a9905d9ccf8c238db420fcba008b9c446d726cccebee6fca486b9e6518c75341780a5a	7fa608d46154af4d	2021-09-09 04:44:18.362167+00	118	2021-09-09 14:44:18.361346+00	20c30a12
d1e6fe54c116f39bfb9e6ab5c5f05cee107dccbc96fb61735225fc56edb818ff6bb2b5d34ec149fb5740c78d9c362f9aef31e7e39651e000b1f0849e9b7b8c90	912146d5106b1131	2021-09-28 00:41:08.252356+00	133	2021-09-28 10:41:08.251052+00	701b2cdf
6fe6b98d44ebe0971b87d9e51e1774c6b74204665e569ea3fa4658dc136aadcc85f332dccd29630dee44b3825a02ba3d9231916116e05f23022e7cb77dd34e0d	0b3ef6c825919457	2022-03-25 06:39:13.625522+00	164	2022-03-25 16:39:13.624861+00	67baeaa6
dfa4528659cbf21719b41fbea0af36a0d71af77add85d0a053bfbbde994b183c6f168544a87ea7c7780dcdddf9a152b4509630bc285b06abd30062eb74ccbcb2	05ce65e5c9bec741	2022-06-23 13:04:45.965345+00	183	2022-06-23 23:04:45.964404+00	919c7386
846772969a4ffe0b6e3e7f1c40b7ceadbc30c345934a5619bce19b0b627d8c5cf492f81ca95c2ba99ef2be2e38d39f33fbe5622762288eb54e05fbccc8da2860	c8a9276753022286	2022-03-29 23:11:15.721146+00	166	2022-03-30 09:11:15.720449+00	b5d85693
20cdf45b01632fa6e7b6776b754e35ed7eab9bc84aab4d8f1f42487e96704f382c194dce266d2f5fb0b74c92ffea0c5fd609ebc92f5968c6d189a2d19878a542	8505545afaa8a52f	2022-08-02 08:02:39.006244+00	190	2022-08-02 18:02:39.005412+00	0b96d45d
4c0ba508333a71cf905e4a2b73a4ce0306130f612e1a3f94f501aea1431e6c478b9b9152a86f345c0638efc502e16e51a6ab9e2aac83af6fe9d169822acc67bf	c70f50ff24451bd0	2021-04-26 17:41:45.742908+00	102	2021-04-27 03:41:45.742559+00	8788700f
70d4da7fc3a399237fd8956fa61729873f2b1a53fc8edd277b1d9f790b41cbb50a2451466df8f4a0743630de5e0ed03f25c3b4f278c3c537519786e528d1ad01	73d1eca0ed4cf9e3	2022-03-15 04:21:05.450907+00	151	2022-03-15 14:21:05.450432+00	8129e0c3
fdcd3a34b3be3cdd21789ea08938409ea8cb8c2a84240161fbeaba11b1f064259f910421a8f63066e646f473cee4e2c118ee66bdd81f386fa5eef35eb04b01ee	e2e0a692ccb98455	2021-05-18 17:58:13.963555+00	38	2021-05-19 03:58:13.958637+00	bc1f740e
424ec94a49544ad7b4c1227240278221810dc0bf173906a6817bc83dbf2fdf4e52bc2414956be0dbcc20752f138e54a9a1fdb0ff20bf5402693ba0725257bfb7	c2c457b0aed4b75a	2021-04-27 02:00:37.563393+00	102	2021-04-27 12:00:37.563025+00	14883b0f
a49851237c7afa56ef82e470ed1f7251510e640793a78b09af106532c09401c83b6492e1aeb91a777c94c739649119151a063c9bec1d59618a8e09099467650d	6bf1c6877404fc2d	2021-05-18 19:47:12.078796+00	35	2021-05-19 05:47:12.078358+00	22da04fc
b96af506ad29a2ceea6e27fdaacf2b91044484ebeba77043541ea429a6121ee3e19ba847a58955a69076cdb83e9711025a14196f172729b9afd4521dfcbe9dc6	df202a3a6c4b0fc9	2022-03-20 04:51:46.650169+00	159	2022-03-20 14:51:46.646292+00	d383cb9f
5b2ad9e1ea3e7e3e0570a58057e06676dad23d31abbdbb32119656ac84a18d3ee389b91769c153aa0ff62d132645ed50c3f49962cb5e4c910a0e531413dab420	e8c059a785456059	2021-06-29 08:25:29.9787+00	109	2021-06-29 18:25:29.97771+00	a2ce6699
97aa462f562949861998787c4f8cd84809aab0f7e430a108a579c91f467dcd6b2ee78ef6ee18bde1554489c56469d139f3da72107b524d221cb5cd72991ab76f	e968df6d36bce15c	2022-06-06 18:03:53.830688+00	179	2022-06-07 04:03:53.829158+00	752caa97
f1ff4cceb812cbba25c04318436fe444b0663a19b11d554e3d88e9a6513c109a2bfcbe831218e5db0eb049012e390fd384b511f8362650be065483011deb6b78	5e17af6952e3dd01	2022-06-27 06:11:02.111816+00	184	2022-06-27 16:11:02.110922+00	2370470c
cfa393a27b7da9a631fe67728ab15d2a108852a4ad2f18e27f91c0502efb1c6489f0ac92655cd121fc08beb4a74566ab9989fc2c26bb0279ca866dc815b777ae	d352299672f5515f	2021-09-09 03:55:52.29182+00	112	2021-09-09 13:55:52.291289+00	92c4bb2d
8f7a8b09edd5e5ee8c3f10a5de00b8fdf4dbf4f22bd5ab2091110e6f3951d309705cf717473cb452e8808d557e662b492ed31074122459749e3f1907a8824484	b0de2babc3444dba	2022-04-22 20:04:41.988085+00	125	2022-04-23 06:04:41.987283+00	53484f27
1978f9147281132b2fc18ed6f3674dd98d7d3f2fa245f4bc8f1a440a98e7881745b81f6ea04b687fcf5a4b371bcf6cf3fece1cadfe63ca0cbd7e0206c56be35d	e9f38865715e8433	2022-08-02 19:27:28.666678+00	191	2022-08-03 05:27:28.665719+00	b9e4184a
fc07314981af8f7b7564639e11d02511617633a8e44f1d352de1a7c9c34fbf7fec4f9f74c360be17e23b7c45f7dc65d260ed32dc046e29cac4bdfbb5292084e2	96b56d7e5c043a1d	2021-09-09 04:43:34.430393+00	118	2021-09-09 14:43:34.429882+00	93684d39
fc3280eae07fecac84a8c49b2edb3963343316d64f9e9ae1a0616f792ef24dadde5133b02f35b379bb6f445abb810dc6cdabff9cb3aef5ef8c1f381eea750b90	5835e0cc70ed1a70	2021-05-17 16:08:46.302201+00	35	2021-05-18 02:08:46.301384+00	35463b69
e035afd4117cdcae648f306cda14638b19b5bfbbf3acd11b64efbf31096794541aca350f403d5a901e16e5d9b566b582bb522f666d200533dcd22106ba608c9d	86afac3a3a180335	2021-09-09 04:43:45.772682+00	118	2021-09-09 14:43:45.771966+00	386dd84a
b7fbbe87492cacdde60473bc91bfb8061d82bd20328bb6b08c561bbc9632f7c97105cceef41722d202cdba646d5b5f3085cb738d818fd83f132d806e301c9d50	c54ab28360f71152	2021-09-09 04:43:55.323178+00	118	2021-09-09 14:43:55.322398+00	4a9a418f
57f610addec40d503fffbe6c09939b857e5c9d7ff50e9c85805c2fd88bce2c4d34e9b013d52a3859547a05d301b5252c5a1d8c69d8452205ba0104e49b976ca9	c5f3e99171860d38	2021-09-09 04:44:09.338263+00	118	2021-09-09 14:44:09.337708+00	c2496a71
706cc451470e10cf4f99c0970c812edf37255359857e6b110b38567e988ae6cb2a9cd81a9fb0356db556bc47c43803b84eaa11e330a958de500aa5f21d5497ce	6cc36745f6f6e71b	2022-03-25 06:39:16.448191+00	164	2022-03-25 16:39:16.44757+00	40cb2ef2
fe840b95eff00cb48d65af9cd5a323075afe78c1c42a696200baa9da57ced8771e6b2ce09f0406b890f52f6b60046dd6a0696c571c260711c46857dc6b60f440	2dd4c6e7b4e1b50b	2021-05-18 17:59:03.5704+00	38	2021-05-19 03:59:03.569726+00	e8c1f87a
f8b89f610d5c2a2c722703165202ae41672c06e87f16ef7b420372bb7e411bbef86a4e888e59dfb725bf2a1e6cb933fdc9d4cdec2415988216f5245ac4932802	218840efc653666f	2021-05-15 19:04:39.203228+00	104	2021-05-16 05:04:39.202796+00	402b820d
15bf585aea9966cd49fa22c140a47e918309d8adfd4332465bd199d68f855bfd14848626212d259d21dda7cd003d2fcf51081448a190b63ba418353f1dbb05bb	518f9faf1b836498	2021-01-01 23:34:55.66767+00	55	2021-01-02 09:34:55.666993+00	44e523b2
48bf523dc567d1ec03a6442e35d6c850abb270fa884414c39c76091e96e4fa529b2a62b49e59168f9bfe704cbaf373fc2021a8d7ffacb82ddd6ef0a081ea4cab	e94867e194d58594	2021-05-18 19:49:56.779746+00	35	2021-05-19 05:49:56.779252+00	5ec68c14
ec9fa87eb38a4cd963e9d41e00bd3078ed20a1535a0c4cb38d383420b2324ff0e22aed22729edafa59aa87065a355387ac6037d598bae32f719d1ae5f0dd4f0c	54bddc33b28d46d3	2021-05-19 18:31:45.92988+00	35	2021-05-20 04:31:45.929531+00	0ca3ea50
9e491282b739fdac04f2837d94318d7a6f5d670566d50bfed3d7189f9081fe336dafdffaa595967c2b31ff3f2a7e6bc5d8869725dce5fddb40b844bb8ea07a4a	fec8adecfb08ad38	2021-05-21 09:19:40.279513+00	102	2021-05-21 19:19:40.279012+00	1493324c
70e3fedeb17d5b4217f9c1ec3528d22868c1cdcc256071aa5e8fe44f03fca4a76331fce611a143869956531230aa7c238ba88feec4a65224d0af4fe3d6df303f	2b0774c8998993d5	2022-04-29 23:01:44.531371+00	157	2022-04-30 09:01:44.530499+00	f6e5d60e
5bf532695ae95154629624ad89d67bd633b5fb3a33fcfeafbcf89697b5d24c72f4017f9d7e08cf609a49776f06cfc21adf25e383fb23e01c9e0039eb92344a4f	cb0f9b2605bd6b37	2021-05-16 00:03:37.635295+00	102	2021-05-16 10:03:37.634878+00	bce28851
a928c8e53b300dea32248c041ca1fb6b3a50a8b1ec41f905f49e81a5ee66d7c672ac161603c248e5cebe85458ece5aae083281f86460cc04e5d8411fbf01c0ea	5e2634a2c0983c52	2021-06-29 08:26:30.718589+00	109	2021-06-29 18:26:30.718183+00	0967c324
03fcb5c06f5cda1464cacbe842dd1ab101bdfe10ff65bcd5db4b974117885c69db0c252ae4173ad6c7696ce5ebd092cc7b4b2173f2909b33fcf15e805343130b	4e9ed74101bbaf4a	2022-06-07 04:10:31.262308+00	180	2022-06-07 14:10:31.261565+00	d25093ec
8afcb2040a54de9564bb9aca92ae92bd24dceddb639e33942ce6ef4894c5a9ffbab04bede9bec91bcc2a534a69fd12aa48b9bf78adc9030caf60e2552d464921	44f42d09e31a5f0d	2022-03-20 04:54:08.539781+00	160	2022-03-20 14:54:08.539259+00	b373f396
0b98b8b628265db6501f65cffd8afc96eb9a0fb3ed3eab227de8cfa4a0f086fde54448333a2e0ae4fa2b00c56f0a50af6daf79a8be88edadf09f4eca57233300	7cf72840290fad80	2021-05-17 04:05:47.040413+00	102	2021-05-17 14:05:47.040067+00	e225088f
c2aa2e2cf372ab53d0da4e8dccbe0e582b87674f6fc4dc4361e2b4f3d4e3fce0d28f9bc5bdff781d51469913f3c73f40e3a2f7debc105edaeb29c7c962621ea6	fdf1f594b0f8a4dd	2022-04-18 05:13:25.98201+00	171	2022-04-18 15:13:25.981529+00	51b3968c
1aa3e4f5c4b6fa97930986024b413135c3130418f654c623dd803a17021dae2b0ef7095ec9243e6445ac3c317c890f9ff18581e11c33382936f0f1f631211f51	5b183e8270d554db	2022-06-30 10:55:31.165438+00	185	2022-06-30 20:55:31.16463+00	6d1aa0ad
6c93eb0f2c1cccc45a247eef42de1041fb9cfb369bbf4053b1cf71de44de7208e1fb099c82c59cfe6d299e18fccb203cbc257b82224aa3c2660a56ec11a28bf3	709d83befefe1cb9	2022-09-02 17:17:14.76564+00	198	2022-09-03 03:17:14.764973+00	94e0303b
2d89a7b0ed00d0b5a9748c2e1368866076688ac975fff1434278deb887c6712b8823c93f058f940dc4c3066bad0874066e9b26382c197de500ca41b68d55c440	9c50459f3acbe840	2021-09-09 04:41:00.780403+00	118	2021-09-09 14:41:00.779827+00	fbb8ef02
bb2b8a6bea34c1b92cb0bf303473b41c3e9809fceb46d9dd3b50b33ad0c059ddbdb4934f20ab41df52835d608c9ed4013a20b77e62fe0547d553dbcf376a1ce2	165bc32c2e211a44	2022-09-16 22:11:11.32649+00	197	2022-09-17 08:11:11.32578+00	32066469
1cd5371a366f0f499299869672e8de04d7f88ec0befd74b4622d825d4bd075dc4283ed0914ab767dcda429ed50f0b2427e7a3e4adc31d17048cb0248a79ab15f	e6a9f4587a75a0cf	2021-05-17 18:35:45.962455+00	35	2021-05-18 04:35:45.962101+00	80727f57
dca9e750b70ff43e3180fbee6a56b3807d57774ad9105e792572e277dd0151c6c634e7cd9c998f050cf812289973dde753836baacc0f613da3dd3fe7c5caed6f	029178e0c1f19cbb	2021-09-09 04:43:35.452527+00	118	2021-09-09 14:43:35.443834+00	0ffd0b7e
a989df5ee99ea5cecb4248c6ce6266c4e910fa9fe072406372e48b062cc21c9e3e60a01e0a8042ca79069e1abe877c9898da76c08ac5bb9518aefb10104b2de3	4d39eb186be5c684	2021-09-09 04:43:45.896457+00	118	2021-09-09 14:43:45.895868+00	db6a34ff
877600f2a1632a7d45dad000fe5780bad32ec6989303aef800f3cfc03ae20d823992c3d94cf2368a7dc29360a233adeae47cecf197192f611cb3c0f1370ae7f1	39cabc6b4d611f11	2021-09-09 04:44:00.531182+00	118	2021-09-09 14:44:00.530223+00	ecf5a692
eefb26dd0db9381e183a785cc38e6567fa1a083048a00eac8d62999dcdd71d3787cbeede040eadd2bdefa4f06b7fca3b2a12cbcf50e629ee2678d9f60e0f394f	8976964355c0111c	2021-02-16 18:58:53.515148+00	34	2021-02-17 04:58:53.514732+00	7be85edb
2185faabee19cb452babaeeea0f8cbe59917faa3e975081cdee119b33ffc0e85f3dc0af5a6c80d938814912d685527051e050ba085734dd845175e32176a9180	00a2f1b1b57811bc	2021-04-29 18:00:17.467053+00	31	2021-04-30 04:00:17.466423+00	209a2d54
2c94e2cdf5dc6f6669baee1dfb0b5a86620eac02e31cf9f355a2290cb7ee48c5c2a88b43e40b3d96621eec4d510f03474dd2a2bb7ce93e5645699d14d69ec5be	0e01518fc0b5cbd7	2021-09-09 04:44:10.925023+00	118	2021-09-09 14:44:10.924103+00	570140a3
0f2d593cc970ca3d10666222e71730639edde1f5e57de8981ae8f9a9c7789c2135286069af9fb4a9cbf2cc27a9aab312b670cb13ab2b1952342716bd89dc4775	b83951707e86c310	2021-09-28 20:23:44.458882+00	135	2021-09-29 06:23:44.458112+00	a940e3a4
0b207ed7831a6e37b4f79fdb40c8b8f39ce345ca9c47cdedeee762e418eec6a73dbab537782376748998f4b6c425e1d67f7edb62b6988d1ef9c6d7f2bffcee07	33ccd43b2cf4e1bf	2021-10-04 06:54:29.442811+00	136	2021-10-04 16:54:29.441979+00	b6ea2c00
978b3d1b091f2e80111f3ae011d92f239bd4ff7d319724a39e79dbd13799999e395ba080f303804aa2186a0b78a523cc2c336460857b459d61e1eac63809011b	07582cfe550caa84	2022-03-14 16:11:04.150117+00	147	2022-03-15 02:11:04.149507+00	aa333e7a
169faa3789c7a7cd21491cbf4f63e3c11a935a344795517997e2120c6b1848c12318cfc356b3552b6104989b2662adcaf7282d7a90ae7ee35a41a8f4f059132a	378fff604170ce2c	2022-03-16 21:36:39.933737+00	152	2022-03-17 07:36:39.932864+00	f96c6f68
b33217e9739f23da2cd170e2691e9c56ddd0aba38af474c493f4d4dfccdd9b466f0eca3ba09801e047fb4ac5e97dc812f880dfdbd7d7f8de7afb1ec7b2ed2000	eff8840d440abb6d	2021-05-18 19:09:15.067095+00	35	2021-05-19 05:09:15.066719+00	823d09aa
f1dd71554a8253a740cf00181ce8f8963851424c41101881967937174a5a87abbc8881daba3292bf315042beabb911900234480478229ac6a9f2eecf81dfff7a	3dc9cb5f4d4de801	2021-05-15 19:04:41.594583+00	104	2021-05-16 05:04:41.594117+00	1e69db50
c81fa995c808bf325c387459056de7246ea4ed89bff0c28eda3f51aa3ee7b6cff1534332d35c8d8fed4fe1ecd24ad90975cc8f1b7588d4c009bb8caf0376a6e9	82c1c95a3d557d88	2021-05-18 20:04:39.64002+00	35	2021-05-19 06:04:39.639496+00	c04225d3
5e84fb39bb13d584d492a5cac80150a5359ff4d514f8d3d33ee00374f5ba5c5766ffb2cf4fa9e64f4421da8dc0b1c31c3f92c9e47f32cb9836e51e6f12abec0a	b84fe28a29e93a19	2021-05-19 20:03:54.608556+00	102	2021-05-20 06:03:54.608132+00	25aa384d
f14ca6f484d5c59c6f7b1163645d14b17b061fa0139e21a02df49f290ada87a7a32f07ea40365895c16a16151234e58498a188a82d3c7414f3372071ac1a2df8	39024fb22ee99c6d	2021-06-11 15:41:58.081559+00	108	2021-06-12 01:41:58.080775+00	dde7879b
17fadf032258e76c3ea0c7ec356963437b4ec7c68f980cd73014a61b6d6fbb52fb6ef40183fe9d31eafae4662cc24bfb1531c2ad989e8f871d849bb704176308	b3b396d208c145d7	2021-06-29 08:26:33.042646+00	109	2021-06-29 18:26:33.042098+00	0cc0a70b
42867a763ca74b94b2a67544b6921e92ebd82f43babccf142762a6fbbc24d6abb20b48a9263e4b0fe462e7ae03f4b90fb9e8f8a6747f0cbad2879c26e9b46676	56024e7d257e436e	2022-06-10 15:27:28.589321+00	181	2022-06-11 01:27:28.588459+00	73d96145
c82c5279ee57c31c6b9b6721f0b4be42cd321c557bee29e273a23ad9e3e0016a1296caa259bc9b261c3787bbf663c52249f22ada1d6d5e3a5c9ad011cb387732	e665f79837f34fbd	2022-06-30 14:53:08.698015+00	186	2022-07-01 00:53:08.697414+00	e7d8aca1
e219bff101108f1ae0dfddda80da30e3b0616ad6691fa406ee19efc45162664bd7e246daf91aed868cc02db86fa799a8dff1e143ee1c940e17ede9b5a415b670	e27f382f677d7d42	2022-03-20 04:56:52.669612+00	160	2022-03-20 14:56:52.665188+00	16753410
89c0e72cff5276560363c7d2f746a7720662be85cfb8e338ac98b3f0745f116e743d6524155ce0bc0758c0e3e77b2baf9692b524815f6d7eda79e89559375d98	d191fd9037d3053c	2021-05-13 21:51:30.959822+00	102	2021-05-14 07:51:30.959486+00	8b61e2f5
e34af3602018daef27c654ccf20d361c01c02f2973f80cacbca8eef5ce6f4fd412cf0c7e88b9e84633f5ba95d644e6b88da0fd05e50f169b7a2b47e0657a20a0	776f5b3a4637557e	2022-08-09 22:13:10.199661+00	6	2022-08-10 08:13:10.198838+00	1530384c
cb680a87e837d6f6861f8f9c628e656905546183a1a91e1f26ce728f3f52e483adf550b24ad4e660295918041d97b30c27bdda971fe82845dcaf7de48fd4cb40	0ffe0af1ada61cf3	2021-12-05 01:32:35.315398+00	140	2021-12-05 11:32:35.314774+00	2b7c8369
795fb74d7a49ee6595a57ccdcfb17a64e45e588f9964b69d2f0f8c8c999502135c49fc332beead5f5f92eaea9494492b1d879ffc650256d1110efcdb81762d6b	29f9eb39661e6068	2021-04-29 18:00:19.703039+00	31	2021-04-30 04:00:19.702454+00	a460b1ad
176cf637b6c9a76993ecf1f80e60b7f9ad1eadc3110ef0b71b2b786f394e4af66c3ad9a028fb6b16caf8fd3a7301981f5d8087cec4334d212a5361e6e65a3c23	c78aacd9ba044a8a	2022-09-16 23:27:27.287875+00	202	2022-09-17 09:27:27.287265+00	ecd00fba
5852cf55cb1a41fdb2d66aabed9d1579081b1162831cd088999ae761c1b4375ab3175569d7fc5063d7601f2f82a55c47fbc603e3ef43abb7190760b940865a1c	8dc3b89bea533f93	2021-09-09 04:43:35.733587+00	118	2021-09-09 14:43:35.732882+00	5511a7e3
d1292bcc2e1475bcab00e66a58fe587a6b3d86db45537b5988e8255e1f962aaddc1fa736c30e7fb8e0b0964e9cc40fc4ca7572b4b2fec65ba381601a878b647e	3dd53349bd15adc5	2021-09-09 04:43:52.426989+00	118	2021-09-09 14:43:52.426182+00	f6adec6a
f1e3cd32f0537f7b49575e5a98e44648f2b75860969cbf83063d3d6408291c7a05579f5598a6862f4239110ce1eed4263d4df8b7582f448ec253cc3338ed92cf	5dc527f3976331a8	2021-09-09 04:44:02.25632+00	118	2021-09-09 14:44:02.251259+00	80713117
3b8d841eb0d1fa127c4ef982207361786591ef6d214733e028efbdf2623406033670636ef6aaacec9aed6a546d0a7499a39c88cc1edc5c430d9f50dd2e8d4856	f0e1c67cafa49837	2021-09-09 04:44:12.463098+00	118	2021-09-09 14:44:12.462363+00	9caaf371
7a59a263bf75d9b4be8b938185b580f5155a4f722453e5281598480ea5c5376ac2691c29b253867697d7bec1427ddc1a33d8ba1d3c9a4c813ff7a0473142bd57	5d193250ad22a6fe	2021-10-04 07:00:58.835259+00	136	2021-10-04 17:00:58.83362+00	03370864
3ce5737056cb17a9224725baf0df3e6f9442f6a8df8e43e8e44828909127c899288f0d19ccccc68c8bd8f8fcbc7c08d88549149ad89173bdff97f05dd67f5122	490325cd8257174e	2022-03-14 16:26:45.963044+00	148	2022-03-15 02:26:45.962567+00	075940b5
2c6d9eefa1c2adce7c7e8022808abfb3bdb3caa80aa9a68b08f2748cc0f00a6ca79442e403904dbf89a53f3f7a3d9c52f66ac3cd8253bd469cf092cccc5431ba	c9b79fc2201bf56a	2022-03-16 23:13:19.198373+00	154	2022-03-17 09:13:19.197527+00	b335f33d
0089a2cf06afc7f54f4495e817d2aed5296763134a6d94602db14c3c464cbb3c2c89cc741ffb65a03d48d8dd8a3be9bfe03bbd44cf9b99ae4867a0d2d4d6eed5	d02e7776908d6610	2022-03-21 01:14:04.551611+00	161	2022-03-21 11:14:04.546114+00	1de63d7d
81528ae76dcd17b47a3c5e0f42ceb3269fb0fb1d8037ac2a502943d70f62fac44f503c4a68e387635be5b8b05f80d8ab4748798c52e17b3dc62d2d6163709934	0eff4cc8eba94404	2022-04-29 17:33:09.950977+00	125	2022-04-30 03:33:09.950257+00	3136cee6
4bb89578bd909a1fd1bfea7c274be4fdee14839e5b8a37d6f0db37e042b8120cf052c454ae9e5a99725b1add7e5501c5eefdfcfa669bae4e655ab442fe2cbccc	af1c7bbc09bb2015	2022-03-24 14:18:11.116215+00	163	2022-03-25 00:18:11.115139+00	db8d1364
b7dad3a0377a2bdbfa929f9a8554c7debef35fdf4415afa09c35de52c1a5072d4fc71bea96a3886064c6eba6a564e2056f63be74ec70a84b6db010f95eb129da	cab5f75feab85a85	2022-05-25 18:20:25.595552+00	175	2022-05-26 04:20:25.595021+00	6c8c251e
cbbbcd5f650261de830f221ee88b907aabc314b9aeeb482a63fc93aed25efe8e687ba3711a137d9091d4d97766a915b45d31bc9d6f1eb9f63c2aa0126aed6622	1b071de56d7a574d	2022-07-07 01:48:20.329412+00	187	2022-07-07 11:48:20.32848+00	03c78341
864da9d66a0acc73a7018c69dbdb6eb4560e364b90b5483b00b8c89b587e6bf4174b0e1d5c19e2d4c6f299b8f38d1448abc418b0a78a33b7d6dfc30f81db15b0	4cd1f7dbe581f8cd	2022-08-14 19:59:38.09147+00	192	2022-08-15 05:59:38.090676+00	961cce4e
11589dd26a62a0130508e1c80d3156d5e2febb2e31d2cfe2bd42e8de76d97abf3ffbea182254a9925b1bba563c13e8242f69135544678ee605b86ddbb0fae612	a1fdfce8bd32267e	2022-01-20 01:03:52.584356+00	142	2022-01-20 11:03:52.583463+00	da830019
5f8ac4543f7d352b6d3d2c06be89247e398847ca1a0b3c99b45444dd7ee0ff655753715287e4970009d1570fd146d204ccb1e7474fae3d9727770c7236269820	f76005c6bd1b8055	2022-01-20 01:05:27.989492+00	143	2022-01-20 11:05:27.986572+00	413d72fb
027253dece1c65fbb5b12534d4edbc7bc4102aac3c32ca4184700162d6ee0ad3cd105eff305122692df0a08435daf8a1a31ca3d0619ab9c2f6ac5e3e3ae1e2ef	b636b155e38fc9cd	2022-01-24 01:22:13.628687+00	144	2022-01-24 11:22:13.627817+00	9edce7c7
84d7ed8d6dde017acdd7bdcdca7aaa47722221b87082a5f08bbce015ae300e344004c16d28f99fdacc3e5f831615f4e58db38f2e07fbf5e44d98b908399e3e30	e30cbea2991d7c9d	2022-03-31 04:33:20.611516+00	167	2022-03-31 14:33:20.605976+00	71230416
79dde4634280a49832b80d2b4951f32edf90f2f8e7c2d6312e4dd94bfa41ec2eba923b9199828bc6b236667336ad3d740a29c5af3b9000479a7194ce96cf5c47	c1168ed745d114b0	2022-09-20 05:14:41.351294+00	203	2022-09-20 15:14:41.350517+00	8c84b09c
e68e2ca8227cc63bff126f546f537863b9e7f6042b818429130eb2543ad943b23737dbcd5eeb52db53aedec9222574c5625e3100c420ebf1e5432dea1cb4e35f	5753c3c8c95e09af	2022-01-27 14:44:25.342182+00	145	2022-01-28 00:44:25.338254+00	e364469d
fe2bc1852f5bfa4248d54fb282f64f8c06ec32204360b5b461e320779fabe6ad381c009422bc51769adf12e9cb8ef3b004dea92ed57ce634deddecbbd0f581fb	2c55402322262235	2022-03-17 01:59:18.876727+00	154	2022-03-17 11:59:18.874042+00	ef94a14f
9614995177083d9b51f6eec3b6d052a04305a58ae67eed47b5f37f09c24bda209e9cd0891bbe2e4b7348c0ec7b885f4feccfd201c496326d45cf60d12f938d5e	e13e4a1a9f36ea34	2022-05-27 00:06:27.401224+00	176	2022-05-27 10:06:27.400538+00	08daea63
fc5d66beff019bce129b6596af7eb9b4e823c56dcd7f3fe57c414a6cb2b899972f2612070684cb71fef72dd7cfc3a8276db17b545fedb27225f9a158851523f6	d3410b5dcfb30561	2022-07-12 23:19:32.651849+00	188	2022-07-13 09:19:32.650975+00	256401c0
6ecaa5ad03a9ef4365b228e1c3b5f365962b08638bddc5633d20fbb2ba65bf32c3c45d6136a0bf2b5300433952a7c261563f0ae57938d066bedf11631a99486d	ba155b734399c18d	2022-08-19 03:30:07.263561+00	194	2022-08-19 13:30:07.262725+00	e5102499
c56b856a25ed88fee56a86560df8a9ce0e06d8102ab503e4c333433d77e3f8635eeb4eec69f5ea92d4cf79a12a94a0797b5848c02458bcfc9c3cd4fd95d29225	6367d3fa24e0aa57	2022-03-29 05:00:03.950177+00	165	2022-03-29 15:00:03.949356+00	5f396a1e
ffc523b8886f055b730407054e57505b56b4378ed9965beb8ef0828bd8ca7b0e2f83f8454339703b25e9b866be758cbbafb415f94e86b4f2e5b63c201d17cc5d	a615d1e8cd321336	2022-03-15 00:55:52.406497+00	149	2022-03-15 10:55:52.405516+00	5a1278cd
4cf7c8ff9bad1c4ab888ef2aba9ca4aa48f22ad6790b078c2e57e4122d7ff653ba4af41c0b738914b97f7318e8eb5187ae81ffbb094ee49fb550e706cb609bf7	7f05548eac34f674	2022-03-17 02:00:35.029746+00	154	2022-03-17 12:00:35.029084+00	8445b874
b2ecc6f74b820885e047494e05260ab0bfcce06f00708e3a81b18b82acca0e5022b8614482e9613a4f07dff79a746649b9d86040683aa0f1e5435b7765e29913	5c8414b7a66f76b4	2022-05-29 08:11:30.539653+00	177	2022-05-29 18:11:30.538752+00	e69ac049
e2169218012ef059926ecba527b96ab3c2ea117f1e473fb61b6d67ed427aede70c8424f1b617f928371586b52da0a7374aae87cd975cc5ea3bcea88d4836ccdc	5c50a2881de11754	2022-03-19 07:12:11.910641+00	158	2022-03-19 17:12:11.909775+00	5c393bcb
74f0402e4c375bac8d2da058e3c9180d7dd58821ebbfda939c603671c04f55168a95e6504df738ab32aa8bba64b65c9b9d9fb6fad92cfebf339b01970c3da7d4	b60b1c80eb365e8d	2022-08-24 03:55:50.485603+00	195	2022-08-24 13:55:50.484918+00	7e7d7e40
1c1144e86fac033d3ad02936e040dc8a026461c6165828704464d9c4eea5211c5fd85347650949aa55bc69c3346f6063e939a874648d789834d1430a6c79ec5c	7b2d1f88f4ae596f	2022-09-14 18:55:06.255801+00	115	2022-09-15 04:55:06.255082+00	707688a7
\.


--
-- Data for Name: passwordReset_resetpasswordtoken; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public."passwordReset_resetpasswordtoken" (id, created_at, key, ip_address, user_agent, user_id) FROM stdin;
73	2022-09-13 19:18:43.954629+00	ed4a0d5ed785	130.182.24.6	Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:99.0) Gecko/20100101 Firefox/99.0	196
\.


--
-- Data for Name: pins_aboutus; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.pins_aboutus (id, "aboutDesc") FROM stdin;
\.


--
-- Data for Name: pins_categorytype; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.pins_categorytype (id, "categoryName", image_url) FROM stdin;
1	Personal	
2	Resources	
3	Historical	
\.


--
-- Data for Name: pins_commentstory; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.pins_commentstory (id, is_anonymous_comment, description, commenter_id, pin_id) FROM stdin;
1	f	So happy for you! It's definitely a worthwhile journey. <3	6	90
2	f	The Center Long Beach is the perfect place to find a home around others who share similar experiences! I've come to learn that it's a place where people feel connected, and can become knowledgable on topics that may affect them. Not only is this a place for the LGBTQ community, but also for allies who want to better understand and bring positivity for those around them!!	14	51
3	f	I’m always around this area and recently visited the center with a couple friends and found it to be a super welcoming environment.	20	51
4	t	You are awesome! <3	6	106
8	f	I hope you’re okay	23	4
56	f	I hope ur alright	\N	4
57	f	Love this story!	6	340
59	t	We all been there! Welcome!	45	90
60	f	Amazing org!	6	38
62	f	Cool!	\N	57
63	f	Cool!	\N	136
\.


--
-- Data for Name: pins_faq; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.pins_faq (id, "faqQuestionDesc", "faqAnswerDesc") FROM stdin;
33	What is <i>The arqive</i>?	<i>The arqive</i> is a place to learn more about queer experiences and serves as a resource for members of the queer community. Check out our About Us page for more info!
34	What does each icon stand for?	<div style="margin-top:40px"><img style="height: 150px; width: 150px; margin-left: -40px; margin-right: 10px; float: left;" src="/static/media/personal.aaafb1e3.png" alt="personal stories icon"><p>These are personal stories. Maybe this is where someone had their first kiss or that time when someone went to their first pride march. You can also use this to share your personal stories. Anything you’d like to share, we’d love to hear.</p></div> <br><div><img style="width: 150px; height: 150px; margin-left: -40px; margin-right: 10px; float:left" src="/static/media/historical.d68b520f.png" alt="historical post icon" /> <p>These are where significant LGBTQ+ community histories or events happened, like the Stonewall Riots in 1969 or the location of the oldest bathhouse in Los Angeles. If you know of any important events we are missing, add it!</p></div><div style="margin-bottom: 40px"><img style="width: 150px; height: 150px; margin-left: -40px; margin-right: 10px; float:left" src="/static/media/community.700a7fe0.png" alt="resources post icon"/><p style="padding-top: 30px">These are the current locations of active organizations and resources for LGBTQ individuals, such as LGBTQ centers and other community organizations.</p></div>
35	Can we change our passwords?	Of course! When logging in, there is a “reset password” option. All you have to do is insert the email used for the website, then check your email for instructions on how to change your password.
36	Is there an app for <i>The arqive</i>?	Not at the moment, but we’re currently working on one!
37	How can I access <i>The arqive</i>?	On any browser, either on a desktop or laptop, or on your phone.
38	Is this website free?	Totally. There is no cost to posting or participating whatsoever.
41	Is there a “change language” option?	Not yet, but we are working on offering different languages in the future.
42	Is there an age requirement for this website?	You must be 13 or older to register.
43	If I don’t know the exact address, can the website pinpoint my location?	Yes it can! The site automatically pinpoints your location when you first access it. If you have moved, refresh the site. It should pin a story to your current location, and you’re good to go.
44	Are the posts on <i>The arqive</i> moderated?	Currently, creators on the platform are able to report posts for things like spam, trolling, and false/inappropriate information. We hope to have community moderators in the future as well.
40	Can this website be used anywhere in the world?	Yep. As long as you have internet access, you can reach us.  Depending on your location and personal situation,  it may be a very good idea to protect your privacy by using TOR.  See https://en.wikipedia.org/wiki/Tor_(anonymity_network).
45	What are some things I should NOT post?	Trolling posts, racist, sexist, or homophobic language, solicitations for sex (there are other apps for that).
46	Where are the Terms of Services?	<a href="/Terms">Click here.</a>
\.


--
-- Data for Name: pins_flagcomment; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.pins_flagcomment (id, flagged, "reportType", reason, created_at, comment_id, flagger_id) FROM stdin;
\.


--
-- Data for Name: pins_flagstory; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.pins_flagstory (id, flagged, "reportType", reason, flagger_id, "pinId_id") FROM stdin;
1	t	1	testt	40	48
4	t	3	test	52	55
5	t	3	Test	52	106
13	t	2	Test	52	136
17	t	3	test	134	1
\.


--
-- Data for Name: pins_photo; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.pins_photo (id, title, image_url, uploader_id) FROM stdin;
\.


--
-- Data for Name: pins_pin; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.pins_pin (id, title, description, latitude, longitude, "upVotes", "startDate", "endDate", is_anonymous_pin, "postDate", "lastEditDate", "postCode", locality, region, country, address, category_id, "lastPersonEdit_id", owner_id) FROM stdin;
2	Truckstop	<p>The only Friday Night weekly event for women at HERE Lounge, cancelled on November 7, 2014.</p>	34.083664	-118.385323	0	\N	2014-11-07	t	\N	\N		Los Angeles	CA	United States		2	\N	\N
3	LesbiActive 	<p>Come get your sports on, meet new friends, and play flag football with other Queer API Women!</p>\n	34.021267	-118.466896	0	2014-07-20	2014-07-20	t	\N	\N						3	\N	\N
5	A fateful meeting	<p>I was in a faltering relationship with my ex, when I decided to get out of town and visit my friends up in San Francisco. My friend (we call her the Other Cynthia) told me that she couldn&#39;t join me for dinner, since she is going to a going-away dinner with her friend Jenny, who had just graduated from UCSF&#39;s medical school and was starting her residency in LA. She wanted to introduce us because, according to her, &quot;Jenny has been single for two years, and I&#39;m getting worried.&quot; Much in the style of a mother hen. We decided to meet at Dog Earred Books, here.</p>\n\n<p>After dinner, we all converged at this awesome used bookstore. Then, this is how Jenny tells it. She sees me in the bookstore and thought I was cute. Plus, I was carrying a stack of books. Even better. And then, I say in a snobby-ish way, &quot;Ugh, I want to get all these books, but I&#39;m soooooooo busy, I don&#39;t have time to read them.&quot; Apparently that&#39;s when she fell head over heels. Or something. I proceeded to not speak to her the entire night because I was busy talking to the other.</p>\n\n<p>Anyway, a few months later, after the ex and I officially broke up, and after she moved down to LA,&nbsp;we had a date, and the rest, well. That&#39;s the story.</p>\n	37.758366	-122.421494	0	2012-05-26	\N	t	2014-07-21	\N		San Francisco			900 Valencia St	1	\N	\N
6	LA Gay and Lesbian Center: The Village at Ed Gould Plaza	<p>LA Gay and Lesbian Center. There&#39;s a gallery here, an auditorium, a courtyard, and a bunch of other resources. Events held here all the time.</p>\n	34.091896	-118.337692	0	\N	\N	t	2014-07-21	\N		Los Angeles	CA		1125 N. McCadden Place	2	\N	\N
7	A chance meeting	<p>Met Jenny here. I was holding 4 books and acting snobby. she liked that, for some reason.</p>\n	37.774929	-122.419418	0	2012-05-20	\N	t	2014-08-06	\N		San Francisco	CA		Dog Earred books	1	\N	\N
8	ONE Archives	<p>Affiliated with USC, the ONE Archives is the largest collection of LGBT materials in the world.</p>\n	34.031078	-118.281570	0	\N	\N	t	2015-02-23	\N					909 Adams Los Angeles	2	\N	\N
9	Vintage Photos from Flea Markets	<p>Reposted from Distractify (http://distractify.com/rachel-oakley/lifshitz-vintage-lgbt-photos/):</p>\n\n<div>\n<div>&nbsp;</div>\n\n<div><span style="line-height:1.2em">Rare Photos Of Gay Couples At A Time When They Were Repressed</span></div>\n</div>\n\n<div style="margin-left:auto !important; margin-right:auto !important">\n<div>\n<div>\n<div>\n<div><img alt="avatar" class="ggnoads" src="http://toco.distractify.com/avatar/201409/1/5f7ef74033d0b61b3616536cda7f8263_avatarSmall.png" style="border-radius:58px; border:0px; float:left; height:55px; margin:0px 12px 0px 0px; overflow:hidden; width:55px" /></div>\n<span style="font-size:14px">Rachel Oakley</span></div>\n\n<div style="text-align:center">\n<div>\n<div style="text-align:right">\n<div style="margin-left:115px">&nbsp;</div>\n</div>\nShare&nbsp;this story on Facebook\n\n<div>\n<div style="margin-left:7px">71073</div>\n</div>\n</div>\n</div>\n</div>\n\n<p>A rare glimpse into the life of gay couples decades ago.</p>\n\n<div>&nbsp;</div>\n\n<div>\n<h1 style="text-align:left">Over the past 30 years, Parisian photographer Sebastien Lifshitz has been obsessed with vintage photographs, collecting anonymous albums from flea markets all around the world.</h1>\n\n<div>\n<div>\n<p><img alt="" class="ggnoads" src="http://toco.distractify.com/postimage/201409/18/584a0e7d9499ebdba451236e03b87c5f_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<h1 style="text-align:left">It was during one of his searches that he happened upon a photo album belonging to a gay couple in the 1950s.</h1>\n\n<div>\n<div>\n<p><img alt="" class="ggnoads" src="http://toco.distractify.com/postimage/201409/18/3b6039a2f004ead7b1fac3332376703c_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<h1 style="text-align:left">&nbsp;</h1>\n\n<div>\n<div>\n<p><img alt="" class="ggnoads" src="http://toco.distractify.com/postimage/201409/18/4b8d2ca72344a794b0ef77bb0faf74b3_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<h1 style="text-align:left">&ldquo;It was quite unusual to have intimate photographs of gay people because most of the time they had to be very discreet,&rdquo; he tells The Daily Beast.</h1>\n\n<div>\n<div>\n<p><img alt="" class="ggnoads" src="http://toco.distractify.com/postimage/201409/18/5205c6f4054dd7ee0c92f8c3dc05c545_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<h1 style="text-align:left">&nbsp;</h1>\n\n<div>\n<div>\n<p><img alt="" class="ggnoads" src="http://toco.distractify.com/postimage/201409/18/9985496ff9e7b34ea466ec8f6fedd28e_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<div>\n<div>\n<div>&nbsp;</div>\n</div>\n\n<div>&nbsp;</div>\n</div>\n\n<h1 style="text-align:left">Decades ago, same-sex partnerships were much more taboo, so these gay couples risked a lot by developing their film.</h1>\n\n<div>\n<div>\n<p><img alt="" src="http://toco.distractify.com/postimage/201409/18/ef4050da2551dbfdcaa2f5531f8b0e89_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<h1 style="text-align:left">&nbsp;</h1>\n\n<div>\n<div>\n<p><img alt="" class="ggnoads" src="http://toco.distractify.com/postimage/201409/18/1031d5c9290b103a07e0467291827aaa_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<h1 style="text-align:left">These photos, however, show a different story.</h1>\n\n<div>\n<div>\n<p><img alt="" class="ggnoads" src="http://toco.distractify.com/postimage/201409/18/feb7663ca22ad6a70774e730cabf89f9_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<h1 style="text-align:left">&nbsp;</h1>\n\n<div>\n<div>\n<p><img alt="" class="ggnoads" src="http://toco.distractify.com/postimage/201409/18/989171a6219f3481268c2c924d0f7b73_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<h1 style="text-align:left">Each picture shows homosexuality without inhibitions&hellip;</h1>\n\n<div>\n<div>\n<p><img alt="" class="ggnoads" src="http://toco.distractify.com/postimage/201409/18/12ddb28ee44b1add145c3fe592860bbb_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<div>\n<div>\n<div>&nbsp;</div>\n</div>\n\n<div>&nbsp;</div>\n</div>\n\n<h1 style="text-align:left">With gender norms being cut down&hellip;</h1>\n\n<div>\n<div>\n<p><img alt="" class="ggnoads" src="http://toco.distractify.com/postimage/201409/18/2b108f3b179aaabae7bb2ddea18faa93_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<h1 style="text-align:left">&nbsp;</h1>\n\n<div>\n<div>\n<p><img alt="" class="ggnoads" src="http://toco.distractify.com/postimage/201409/18/1d75bdeaaa345dc2992fa50a8ce2e9f1_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<h1 style="text-align:left">And a general freedom, where love and happiness are presented without fear.</h1>\n\n<div>\n<div>\n<p><img alt="" src="http://toco.distractify.com/postimage/201409/18/f68703c0c82a65f778743f58cc2d4d45_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<h1 style="text-align:left">&nbsp;</h1>\n\n<div>\n<div>\n<p><img alt="" class="ggnoads" src="http://toco.distractify.com/postimage/201409/18/9784b43709644f1df3bd2436b3812700_650x.jpg" style="border:0px; height:auto; vertical-align:top; width:650px" /></p>\n\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n\n<h1 style="text-align:left">S&eacute;bastien went on to produce a dignified documentary about homosexuality in France decades ago. Here&#39;s the trailer:</h1>\n\n<div>\n<div>\n<div>Share</div>\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n\n<div style="text-align:left">&nbsp;</div>\n</div>\n\n<div style="text-align:center">\n<p style="text-align:left">&nbsp;</p>\n\n<p style="text-align:left">Sebastien&#39;s new book,&nbsp;<em>The Invisibles: Vintage Portraits of Love and Pride,&nbsp;</em>captures all these stunning images and more.</p>\n\n<p style="text-align:left">H/t:&nbsp;Beautiful Decay</p>\n\n<p style="text-align:left">&nbsp;</p>\n</div>\n\n<div>&nbsp;</div>\n\n<div style="text-align:center">\n<div>\n<div style="text-align:right">\n<div style="margin-left:105px">&nbsp;</div>\n</div>\nShare\n\n<div>\n<div style="margin-left:7px">71073</div>\n</div>\n</div>\n&nbsp;\n\n<div>twitter</div>\n\n<div>&nbsp;</div>\n</div>\n</div>\n</div>\n	48.856613	2.352222	0	1930-01-01	1960-01-01	t	2015-03-29	\N		Paris		France		3	\N	\N
340	marrying my wife, moving to a new house	<p>my wife and I were married at this house in a small ceremony at home; we're in the process of moving and I'm feeling quite sentimental.</p>\n<p>this was the first house we lived in together that we planned from the start (we separately had our own places before she moved into my old place).</p>\n<p>it will be bittersweet to leave this place and move in with relatives, but it will save us a lot of money and allow us to travel more.</p>\n<p>thank you to this house for letting us make this our home, we will miss you dearly and hope to visit in the future.</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>	37.529659	-122.040239	0	2021-05-25	2021-05-25	t	2021-05-25	2021-05-25	94560	Newark	California	United States		1	\N	\N
11	Gay homophobes marry each other	<p>Two men who are in prison here for homophobic murders married each other. See more here:</p>\n\n<p>http://www.buzzfeed.com/emaoconnor/first-in-prison-same-sex-marriage?bffb&amp;utm_term=4ldqpho#.ftPO3nyoo</p>\n	53.986420	-0.869360	0	2015-03-28	\N	t	2015-03-31	\N		Yorkshire			Full Sutton Prison	3	\N	\N
12	Gay Atheist Doctor refuses service to bigoted Christians	<p>After Indiana Governor Mike Pence signed the Religious Freedom Law, a doctor from this small town in Indiana wrote him a letter to ask him a question.&nbsp;</p>\n\n<p>Story here:</p>\n\n<p>http://www.politicalgarbagechute.com/gay-atheist-indiana-doctor-does-new-law-give-me-the-right-to-refuse-treatment-on-ahole-christians/</p>\n	40.267193	-86.134903	0	2015-03-31	\N	t	2015-04-03	\N		Fort Schritt	Indiana			3	\N	\N
14	Les Mouches Fantastiques (Fantastic Files)	<p>Written by Elsa Gidlow and Roswell George Mills, this is perhaps the first LGBT periodical. Its features included poetry, one-act plays, and short stories. Along with LGBT themes, both explict and implicit, les Mouches Fantastiques was also recognized as a bohemiam critique of the Canadian middle class.&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><a href="http://en.wikipedia.org/wiki/File:Elsa_Gidlow_1974_by_Lynda_Koolish.jpg">Picture of Elsa Gidlow</a></p>\n\n<p><a href="http://thedrummersrevenge.wordpress.com/2009/11/30/elsa-gidlow/">Source</a></p>\n\n<p>&nbsp;</p>\n	45.501690	-73.567253	0	1918-01-01	\N	t	2015-04-10	\N		Montreal		Canada		3	\N	\N
13	GlobaltraQs staff meeting	<p>Fun place to have a meeting. Free Wifi, good food, fantastic drinks. Seems to be gay friendly, but we&#39;re not being very flamboyant.</p>	34.094019	-118.128944	0	2015-04-04	2015-04-03	t	2015-04-04	2015-04-12		Alhambra	California (CA)		7 S 2nd St	2	\N	\N
10	The ONE Arvhices at USC	<p>The largest LGBTQ archive in the US (and probably the world).</p>	34.030749	-118.281624	0	1970-01-01	\N	t	2015-03-30	2015-04-12	90007	Los Angeles	CA		909 W Adams Blvd	2	\N	\N
4	Scary experience...	<p>I had a scary experience here, and I haven&#39;t spoken with anyone about it...</p>	40.777786	-73.973083	0	2014-07-01	1970-01-01	t	\N	\N						1	\N	\N
562	The Cubbyhole	<p>An LGBTQ bar that's been in the gayborhood since 1994.</p>	40.737642	-74.003747	0	1994-01-01	\N	t	2022-07-26	2022-07-26		New York	NY		281 W. 12th Street	3	6	6
353	New wine bar!	Opened today!	33.758813	-118.131235	0	2021-12-04	2021-12-05	f	2021-12-05	2021-12-05	90803	Long Beach	California		5351 east 2nd	1	\N	6
383	Lesbian Relationship	Not sure how to use this app. I just wanted to say that I had a lot of lesbian sex in different parts of this house	42.271250	-83.729199	0	2020-07-23	2021-04-30	t	2022-01-21	2022-01-21	48109	Ann Arbor	MI	United States	907 Lincoln Avenue	1	\N	\N
389	Test	Test	61.066692	-107.991707	0	2022-02-05	2022-02-05	t	2022-02-05	2022-02-05				Canada		1	\N	\N
393	text	text	34.085781	-118.169620	0	2022-03-14	2022-03-02	t	2022-03-02	2022-03-02						2	\N	\N
413	Hello From Anaheim!	Hello there! Fellow Bisexual here! Glad to be here. Love ya!	33.863727	-117.733257	0	2022-03-19	2025-08-28	t	2022-03-19	2022-03-19	92808			United States	8500 E Canyon Vista Dr	1	\N	\N
15	The Bohemian World of Towertown	<p>This district in Chicago was known for its vibrant gay and lesbian community in the 1920s. With its bohemian and artistic culture, gays and lesbians not only lived there, but were also widely accepted.</p>\n\n<p><a href="http://www.chicagohistoryfair.org/history-fair/history-fair-a-nhd-theme/subject-essays/chicago-lesbian-a-gay-history.html">Source</a></p>\n	41.896423	-87.630608	0	1920-01-01	1930-01-01	t	2015-04-10	\N		Towertown	IL			3	\N	\N
16	Society for Human Rights is founded.	<p>Henry Gerber founds the first recognized gay organization in the United States. It is accompanied by the publication /Friendship and Freedom/. They only accept gay males (excluding all else), unbeknownst to them, the vice president Al Weininger is married with two children. Only a few months after its inception, the police raid Gerber&#39;s home and confiscate several items and personal documents. The organization is shut down, being labeled a &quot;sex cult,&quot; and its members arrested for obscenity.</p>\n\n<p><a href="http://en.wikipedia.org/wiki/Society_for_Human_Rights"><span style="font-family:arial,sans,sans-serif">Source</span></a></p>\n\n<p><a href="http://outhistory.org/oldwiki/Chicago_Society_for_Human_Rights:_December_10,_1924"><font face="arial, sans, sans-serif">Source (Chicago Society for Human Rights)</font></a></p>\n	41.878113	-87.629799	0	1924-12-10	\N	t	2015-04-10	\N		Chicago	IL			3	\N	\N
17	Gay and Lesbian Coalition of Kenya is formed.	<p>The Gay and Lesbian Coalition of Kenya (GALCK) brings together six different groups. It continues to provide medical assistance, education, and social programming.</p>\n\n<p>Video:<br /><iframe width="560" height="315" src="https://www.youtube.com/embed/e2202n0QjDg" frameborder="0" allowfullscreen></iframe></p>\n\n<p>More information: http://galck.org/</p>\n	-0.023559	37.906193	0	2006-01-01	\N	t	2015-04-10	2015-04-10				Kenya		2	\N	\N
18	â€œSamuel Moore and Patrick Kelly, [convicted of] Sodomy, to be executed..."	<p>The Western Herald publishes: &ldquo;Samuel Moore and Patrick Kelly, [convicted of] Sodomy, to be executed on the 15th day of July next.&rdquo;</p>\n\n<p>Possibly the first men to be convicted of sodomy. They were sent to Kingston Penetentiary, known for its cruel treatment of prisoners. Kelly was a probable victim to the staff, reporting a broken leg. Ultimately neither were executed, though theirs began the incarceration of gay men at the maximum security prison.</p>\n\n<p>Story here:&nbsp;http://thedrummersrevenge.wordpress.com/2007/08/26/life-in-the-provincial-penitentiary-at-kingston-1841-1867/</p>\n\n<p><img alt="" src="http://upload.wikimedia.org/wikipedia/commons/f/f9/Kingston_Pen_1.JPG" style="height:825px; width:825px" /></p>\n	44.221062	-76.513878	0	1842-06-16	\N	t	2015-04-11	\N	K7L 4V7	Kingston	ON	Canada	560 King Street West	3	\N	\N
19	"Two-Spirit" as a category of gender is born.	<p>The Third Annual Inter-tribal Native American, First Nations, Gay and Lesbian American Conference officially changes the term for &quot;third gender&quot; (androgynous) from the French-inspired Berdache (signifying male prostitute or catamite [receiver of anal sex]). Despite the honor that had previously been bestowed to third gender individuals, native american cultures had, at this point, been influenced by Western homophobia. To reclaim the role, they adopted the term &quot;two-spirit.&quot;</p>\n\n<p>Learn more:<br />\n<a href="http://www.pbs.org/independentlens/two-spirits/" target="_blank">http://www.pbs.org/independentlens/two-spirits/</a>\n<br />\n<a href="http://www.socqrl.niu.edu/forest/SOCI454/Berdache.html" target="_blank">http://www.socqrl.niu.edu/forest/SOCI454/Berdache.html</a></p>\n	49.899754	-97.137497	0	1990-01-01	\N	t	2015-04-11	\N		Winnipeg	Manitoba	Canada		3	\N	\N
341	SF LGBT Center	<p><span style="color: #4d5156; font-family: Roboto, arial, sans-serif;">The SF LGBT Center is a nonprofit organization serving the lesbian, gay, bisexual, transgender, and queer community of San Francisco, California, and nearby communities, located at 1800 Market Street in San Francisco.<br /><br /></span>https://www.sfcenter.org/</p>	37.771650	-122.424115	0	2021-05-25	2021-05-25	t	2021-05-25	2021-05-25					1800 Market St, San Francisco, CA 94102	2	\N	\N
101	Castro Camera	<p>The location of Castro Camera, which was owned by Harvey Milk. The shop also served as his campaign headquarters. Currently a Human Rights Campaign shop.</p>\n<p>&nbsp;</p>\n<p><a href="https://twitter.com/thearqive/status/1257398397486628864">https://twitter.com/thearqive/status/1257398397486628864</a></p>\n<p><a href="https://en.wikipedia.org/wiki/Castro_Camera">https://en.wikipedia.org/wiki/Castro_Camera</a></p>\n<p><a style="font-family: -webkit-standard; text-size-adjust: auto; color: #000064;" title="Original URL:\nhttps://noehill.com/sf/landmarks/sf227.asp\n\nClick to follow link." href="https://nam01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fnoehill.com%2Fsf%2Flandmarks%2Fsf227.asp&amp;data=02%7C01%7Ccwang68%40calstatela.edu%7Cffbf67d3926449ffab5d08d7f39bbbdd%7Cce8a2002448f4f5882b1d86f73e3afdd%7C0%7C0%7C637245722500737391&amp;sdata=zBSWgYdqT8zPAKuRoVTYOYW8xtQ6qUPELQOKC8khD44%3D&amp;reserved=0" data-ogsc="">https://noehill.com/sf/landmarks/sf227.asp</a></p>	36.019498	14.238551	0	1972-01-01	\N	f	2020-05-08	2020-05-08		San Francisco	CA		575 Castro Street	3	6	6
349	Lily	<p>Please don't wait for me darling.</p>	34.037543	-118.131469	0	2021-11-11	2021-11-11	t	2021-11-11	2021-11-11	91754	Monterey Park	CA	USA	1374 S. Isabella Ave.	1	132	132
354	blah	<p>blah</p>	34.081788	-118.179975	0	2021-12-07	2021-12-07	t	2021-12-07	2021-12-07	90032	Los Angeles	CA		4750 Templeton St.	1	\N	\N
390	Test	Test	32.501018	-116.964662	0	2022-02-05	2022-02-05	t	2022-02-05	2022-02-05			Tijuana	Mexico		1	\N	\N
398	my story	when i was nine years old i was outed. where i live is extremely christian and if you arent christian you are outcasted, i was homeschooled for my whole life and went to something called co-op, its where a bunch of homeschooled kids come and meet up on a specific day of the week and do classes together similar to a public or private school. in my co-op we had maybe less than 200 people and it was an extremely christian place, full of religious abuse. i was starting to really question my identity as i was getting older and noticing maturity change, i felt different from people but still didnt know what i was feeling.	34.835184	-87.667299	0	2022-03-14	2022-03-14	t	2022-03-15	2022-03-15	35630	florence	Alabama	united states of america		1	\N	\N
503	Crush Day Party	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Queer Day Party for women, no men. Serves to cater to queer women, as most spaces in the queer community practice male dominated lenses</p>	34.101045	-118.329289	0	2022-02-27	2022-03-27	f	2022-04-23	2022-04-23	90028	Los Angeles	CA	United States	1640 N Cahuenga Blvd	1	\N	157
414	Hillcrest district	Nice big flag here.	32.748515	-117.149695	0	2022-03-20	2022-03-20	f	2022-03-21	2022-03-21	92103	San diego	Ca		1500 university ave	1	\N	6
20	Alfred Kinsey (et al) publishes /Sexual Behavior in the Human Male/	<p>Besides it being among the first studies to explicitly consider sexuality, Kinsey&#39;s research is known for his eponymous scale, which posited fluid sexuality.</p>\n\n<p><img alt="" src="http://upload.wikimedia.org/wikipedia/en/7/72/Kinsey-Male.jpg" style="height:407px; width:268px" /></p>\n\n<p>Learn more:<br />\n<a href="http://en.wikipedia.org/wiki/Kinsey_Reports">http://en.wikipedia.org/wiki/Kinsey_Reports</a></p>\n	40.484203	-88.993690	0	1948-01-01	\N	t	2015-04-11	\N		Bloomington	IL	United States		3	\N	\N
21	Society of Fools (better known as the Mattachine Society) is founded	<p>Likely the second gay (male) organization in the US, after the Society for Human Rights&#39; short-lived span. The primary goals of the society were to&nbsp; Unify homosexuals isolated from their own kind;&nbsp;Educate homosexuals and heterosexuals toward an ethical homosexual culture paralleling the cultures of the Negro, Mexican and Jewish peoples;&nbsp;Lead the more socially conscious homosexual to provide leadership to the whole mass of social variants; and&nbsp;Assist gays who are victimized daily as a result of oppression.</p>\n\n<p>The Mattachine Society did not &quot;die out,&quot; rather splintered into several special interest sub-groups during the 1960s and 70s.</p>\n\n<p><img alt="" src="http://s3.amazonaws.com/dk-production/images/7694/large/MattachineReview(1958issue)cover.jpg?1349395075" style="height:837px; width:550px" /></p>\n\n<p>Learn more:<br />\n<a href="http://en.wikipedia.org/wiki/Mattachine_Society">http://en.wikipedia.org/wiki/Mattachine_Society</a><br />\n&nbsp;</p>\n	34.053070	-118.247772	0	1950-01-01	\N	t	2015-04-11	\N		Los Angeles	CA	United States	232 S. Hill St.	3	\N	\N
22	Lima, Peru's first pride parade	<p>MHOL (Movimiento Homosexual de Lima), the local LGBT organization, was denied permission to hold the pride parade on their requested date in June. After this denial, the organization requested to hold the parade elsewhere. The first parade was held on July 6th, with a few hundred people marching in masks, to hide their identity.</p>\n\n<p><img alt="" src="http://www.suprmchaos.com/lima-peru1_070211.jpg" style="height:298px; width:430px" /><br />\n(july 2nd, 2011 parade)</p>\n\n<p>Source:&nbsp;<a href="http://iglhrc.org/content/per%C3%BA-pride-parade-take-place-different-venue">http://iglhrc.org/content/per%C3%BA-pride-parade-take-place-different-venue</a></p>\n	-12.046374	-77.042793	0	2002-07-06	\N	t	2015-04-11	\N		Lima		Peru	Garcisalo de la Vega Avenue (parade)	3	\N	\N
23	American Psychiatric Association removes homosexuality from the list...	<p>American Psychiatric Association removes homosexuality from the list of mental disorders</p>\n\n<p>Protesters successfully called for its removal from the DSM. The next year, a &quot;sexual orientation disturbance&quot; category arose in its place, which was then replaced by &quot;Ego-dystonic sexual orientation&quot; in 1980 until its removal in 1987.</p>\n\n<p>Learn more:<br />\n<a href="http://en.wikipedia.org/wiki/American_Psychiatric_Association">http://en.wikipedia.org/wiki/American_Psychiatric_Association</a></p>\n	38.879971	-77.106773	0	1973-01-01	\N	t	2015-04-11	\N		Arlington	VA	United States		3	\N	\N
24	/Harry Benjamin Standards of Care/ first published	<p>Published by the Harry Benjamin International Gender Dysphoria Association in its founding year, which is now known as the World Professional Association for Transgender Health. Previously known as &quot;The Standards of Care for Gender Identity Disorders,&quot; it&#39;s 7th edition is called &quot;The Standards of Care for the Health of Transsexual, Transgender, and Gender- Nonconforming People.&quot; Criticisms still include adoption of a pathological language.</p>\n\n<p>Learn more:<br />\n<a href="http://en.wikipedia.org/wiki/Standards_of_Care_for_the_Health_of_Transsexual,_Transgender,_and_Gender_Nonconforming_People">http://en.wikipedia.org/wiki/Standards_of_Care_for_the_Health_of_Transsexual,_Transgender,_and_Gender_Nonconforming_People</a></p>\n	44.973991	-93.227730	0	1979-01-01	\N	t	2015-04-11	\N		Twin Cities		United States	University of Minnesota	3	\N	\N
25	Mei Lanfang is born	<p>Mei Lanfang would become the most popular /dan/, female impersonator, in Beijing Opera. His performances of gender were transcontinentally renown, and continue to hold great resonances with gender, theater, and performance studies.</p>\n\n<p><img alt="" src="http://upload.wikimedia.org/wikipedia/en/6/6a/Mei_Lanfang.jpg" style="height:321px; width:220px" /></p>\n\n<p>Learn more:<br />\n<a href="http://en.wikipedia.org/wiki/Mei_Lanfang">http://en.wikipedia.org/wiki/Mei_Lanfang</a></p>\n	32.455776	119.923119	0	1894-10-22	\N	t	2015-04-11	\N		Taizhou	Jiangsu	China		3	\N	\N
26	Francis Wilkinson is formally accused of buggery (sodomy)	<p>Though later acquitted, Wilkinson was the first to be charged with sodomy in Australia.</p>\n\n<p><img alt="" src="http://bks0.books.google.com/books?id=nKVlKHn29xcC&amp;printsec=frontcover&amp;img=1&amp;zoom=1&amp;imgtk=AFLRE71CRol5KfvooHw6uiAHZ1wYOxukrvw142McXj_zfN77oAXgeYTh1jdX_TQMtP7w3xrYP_46LMxNq8X0OcPIW8uS33D6dONyR4vUMLQ3DQxuleX5JBIXjeeNX5ryHWo1yTjicJfa" style="height:199px; width:128px" /></p>\n\n<p>Source:&nbsp;/the fatal shore/ p 265</p>\n	-25.274399	133.775131	0	1796-01-01	\N	t	2015-04-11	\N				Australia		3	\N	\N
27	Les Peches	<p>Event for Lesbian and Queer women happening once a month</p>\n	34.047863	100.619652	0	\N	\N	t	2015-04-11	\N				Asia		2	\N	\N
28	Johann Valentin MÃ¼ller publishes "Outline of Forensic Medicine."	<p>Johann Valentin M&uuml;ller connects sexuality with the health of the state. He critiques the idea that God punishes through disease (syphilus), stating that several innocents had contracted the disease while those known to have committed &quot;worse&quot; sins, excessive masturbation and sodomy, were unharmed.</p>\n\n<p><img alt="" src="http://ecx.images-amazon.com/images/I/71v0-XHXKkL.jpg" style="height:1360px; width:1044px" /></p>\n\n<p>Source:<br />\n<a href="http://www2.warwick.ac.uk/fac/cross_fac/iatl/reinvention/issues/volume1issue2/brooks/">http://www2.warwick.ac.uk/fac/cross_fac/iatl/reinvention/issues/volume1issue2/brooks/</a></p>\n	51.165691	10.451526	0	1796-01-01	\N	t	2015-04-11	\N				Germany		3	\N	\N
39	The Asian and Pacific Island (API) Equality-LA was founded	<p>Founded in 2005, API Equality-LA has been a tireless advocate in the Greater Los Angeles Asian and Pacific Islander (API) communities for fair treatment of lesbian, gay, bisexual, and transgender (LGBT) people and marriage equality for same-sex couples.</p>\n\n<p><img alt="" src="http://apiequalityla.org/wp-content/uploads/2011/03/4381596722_931eeb15c7.jpg" /></p>\n\n<p>Source:&nbsp;<a href="http://apiequalityla.org/">http://apiequalityla.org/</a></p>\n	34.053139	-118.264359	0	2005-01-01	\N	t	2015-04-11	\N		Los Angeles	CA	United States	API Equality-LA	3	\N	\N
355	Lily	<p>Please don't wait for me darling.</p>	34.037543	-118.131469	0	2021-12-07	2021-12-07	t	2021-12-07	2021-12-07	91754	Monterey Park	CA	United States	1374 S. Isabella Ave.	1	\N	\N
385	Test post with just region no country	Test body	61.066692	-107.991707	0	2022-02-04	2022-02-04	t	2022-02-04	2022-02-04			CA			1	\N	\N
29	First illustrations of sex-change procedures	<p>Norman Haire (ed), A. Costler (ed) and A. Willy publish /Encyclopedia of Sexual Knowledge/, first illustrations of sex-change prodcedures.</p>\n\n<p>The /encyclopedia/, first of a trilogy, sold approximately 80,000 copies across Europe and considered topics such as sexuality, &quot;the technic of intercourse,&quot; as well as social and economic issues tied to sexuality, such as sex trafficking and prostitution.</p>\n\n<p>Source: <a href="http://jama.jamanetwork.com/article.aspx?articleid=257871">http://jama.jamanetwork.com/article.aspx?articleid=257871</a></p>\n	54.525963	15.255119	0	1934-01-01	\N	t	2015-04-11	\N				Europe		3	\N	\N
30	Ayatollah Ruhollah Khomeini issues fatwa allowing sex reassignment surgery	<p>Ayatollah Ruhollah Khomeini issues fatwa &quot;declaring sex reassignment surgery permissible.&quot;</p>\n\n<p>Iran ranks second in the world for the number of sex reassignment surgeries performed each year. It is reported that Islamic culture in Iran is more open to sex change operations than the acceptance of gay identification. Currently, the Iranian government subsidizes up to half of each surgery, and subsequent treatment, each year (~300).</p>\n\n<p>Video:<br />\n<a href="http://www.dailymotion.com/video/x85uj0_documentary-transsexuals-in-iran-pa_gaylesbian">http://www.dailymotion.com/video/x85uj0_documentary-transsexuals-in-iran-pa_gaylesbian</a></p>\n\n<p>Source:<br />\n<a href="http://en.wikipedia.org/wiki/Transsexuality_in_Iran">http://en.wikipedia.org/wiki/Transsexuality_in_Iran</a></p>\n	35.696110	51.423058	0	1987-01-01	\N	t	2015-04-11	\N		Tehran		Iran		3	\N	\N
31	/Vice Versa/ originally published	<p>Edith Eyde&#39;s (pen name Lisa Ben, an anagram of &quot;lesbian&quot;) /Vice Versa/ was the first known lesbian publication in the world. She wrote that she originally began the publication to broaden her social circle. /Vice Versa/ had a total of 9 issues. In the 1950s, Ben began writing for /The Ladder,/ the first nationally-distributed lesbian magazine in the world. The complete set of Vice Versa issues is available to view at Los Angeles&#39; ONE National Gay and Lesbian Archives.</p>\n\n<p><img alt="" src="http://blogs.presstelegram.com/outinthe562/files/2013/12/Lisa-Ben2.jpg" style="height:600px; width:444px" /></p>\n\n<p>Source:<br />\n<a href="http://blogs.presstelegram.com/outinthe562/2013/12/26/gay-history-vice-versa-nations-first-lesbian-magazine-started-in-1947-by-lisa-ben/">http://blogs.presstelegram.com/outinthe562/2013/12/26/gay-history-vice-versa-nations-first-lesbian-magazine-started-in-1947-by-lisa-ben/</a></p>\n	34.031078	-118.281570	0	1947-01-01	\N	t	2015-04-11	\N		Los Angeles	CA	United States	909 W. Adams Blvd.	3	\N	\N
32	Hyegong of Silla (758â€“780) (r. 765â€“780) was killed	<p>Occurred at Banwolseong (literally &ldquo;Half Moon Fortress&rdquo;)</p>\n\n<p>The earliest account of homosexuality on Korea&#39;s southern peninsula was the overthrowing and murder of King Hyegong of Silla in 780. Documentation suggests his subordinates could not accept his &quot;femininity.&quot; Historians have said that Hyegong was a man &quot;by appearance,&quot; but a &quot;woman by nature.&quot;</p>\n\n<p><img alt="" src="http://cfile25.uf.tistory.com/image/1460C9335177389B31B624" style="height:234px; width:215px" /></p>\n\n<p>Source: <a href="http://www.utopia-asia.com/korlife2.htm">http://www.utopia-asia.com/korlife2.htm</a></p>\n	35.907757	127.766922	0	0780-01-01	\N	t	2015-04-11	\N				South Korea		3	\N	\N
33	First AsiaPacific Outgames	<p>First AsiaPacific Outgames are held. Sports include tenpin bowling, dragon boat, roller derby, dancesport, and touch football. The sporting events are accompanied by a human rights conference.</p>\n\n<p>Video:<br /><iframe width="420" height="315" src="https://www.youtube.com/embed/gp_-dD7apNc" frameborder="0" allowfullscreen></iframe></p>\n	-37.814106	144.963287	0	2008-01-30	2008-02-03	t	2015-04-11	\N		Melbourne	Victoria	Australia		3	\N	\N
34	Second AsiaPacific Outgames	<p>Second AsiaPacific Outgames, accompanied by a human rights conference, are held.</p>\n\n<p>Video:<br /><iframe width="420" height="315" src="https://www.youtube.com/embed/dobAqeYswDE" frameborder="0" allowfullscreen></iframe></p>	-41.286461	174.776230	0	2011-03-12	2011-03-19	t	2015-04-11	\N		Wellington		New Zealand		3	\N	\N
35	Third AsiaPacific Outgames	<p>Third AsiaPacific Outgames, accompanied by a human rights conference, are held.</p>\n	-12.462827	130.841782	0	2014-05-10	2014-05-16	t	2015-04-11	\N		Darwin	Northern Territory	Australia		3	\N	\N
36	Action for Aids Singapore becomes a registered charity.	<p>Action for Aids Singapore&#39;s objectives include to provide support and assistance to persons living with HIV and AIDS (PWAs); to increase awareness, education and understanding of AIDS and HIV infection; to combat discrimination and stigmatisation of (PWAs) and their loved ones; and to encourage AIDS-related research activities in Singapore. They were the first to operate a HIV-testing facility in the Singapore</p>\n\n<p>Video:<br /><iframe width="420" height="315" src="https://www.youtube.com/embed/vbIsSbnlCYs" frameborder="0" allowfullscreen></iframe></p>\n\n<p>Source: http://www.afa.org.sg/</p>	1.352083	103.819839	0	1994-10-07	\N	t	2015-04-11	\N				Singapore		3	\N	\N
37	The VietROC and the 2013 Tet Parade of Little Saigon	<p>The VietROC&#39;s request to march&nbsp;in the 2013 Tet Parade of Little Saigon&nbsp;was unfairly rejected.&nbsp;Being sidelined did not dampen their Vietnamese-American LGBT pride. Since then, they have been activists for Vietnamese LGBT peoples of Orange County.</p>\n\n<p><img alt="" src="http://www.vietroc.org/vr/wp-content/uploads/2013/12/VROC-Tet-Parade-Sideline.jpg" /></p>\n\n<p>Source:&nbsp;<a href="http://www.vietroc.org/">http://www.vietroc.org/</a></p>\n	33.773907	-117.941444	0	2013-02-10	\N	t	2015-04-11	\N		Garden Grove	CA	United States		3	\N	\N
38	Barangay LA	<p>Barangay LA is a not-for-profit community organization serving the LGBTQ Filipino &amp; Filipino-American community in Los Angeles. Barangay LA was founded in 1990.</p>\n\n<p>Source:&nbsp;<a href="http://barangayla.org/">http://barangayla.org/</a></p>\n	34.052235	-118.243683	0	1990-01-01	\N	t	2015-04-11	\N		Los Angeles	CA	United States		2	\N	\N
52	Fresno LGBT Community Center	<p>Started in 2011, this is&nbsp;first community center to serve the LGBT community in Fresno in 20 years.</p>\n\n<p>Learn more:</p>\n\n<p><a href="http://www.fresnolgbtcenter.org/">http://www.fresnolgbtcenter.org/</a></p>\n	36.756027	-119.800308	0	2011-01-01	\N	t	2015-04-12	\N					1067 N Fulton Street, Fresno, CA  93728	2	\N	\N
53	Taiwan's First Gay Pride Festival	<p>Taiwan&#39;s first gay pride festival was held here on June 29th, 1997. This park is also a popular cruise spot at night.</p>\n\n<p>Learn more:</p>\n\n<p><a href="http://www.utopia-asia.com/tipstaiw.htm">http://www.utopia-asia.com/tipstaiw.htm</a></p>\n	25.041824	121.514984	0	1997-06-29	1997-06-29	t	2015-04-12	\N		Taipei	Taiwan		2/28 Peace Park	3	\N	\N
54	A Small Maharashtrian Wedding 	<p>Two gay men get married in a small Maharashtrian wedding, then attend Mumbai&#39;s gay pride parade.</p>\n\n<p>Learn more here (with pictures!):</p>\n\n<p><a href="http://www.buzzfeed.com/andreborges/mujhse-shaadi-karo-gay">http://www.buzzfeed.com/andreborges/mujhse-shaadi-karo-gay</a></p>\n	19.075983	72.877655	0	2015-01-31	\N	t	2015-04-12	\N		Mumbai		India		3	\N	\N
356	Test	<p>Check to see if postcode has any issues.</p>	34.059944	-118.140965	0	2022-01-03	2022-01-03	t	2022-01-03	2022-01-03		Monterey Park	CA	USA	1168 W Mabel Ave	1	\N	\N
40	The Coalition of African Lesbians is founded	<p>The Coalition of African Lesbians is founded at the &quot;Sex and Secrecy&quot; Conference (International Association for the Study of Sexuality, Culture and Society), held at WISER.</p>\n\n<p>The Coalition of African Lesbians [CAL] is a formation of more than 30 organisations in 19 countries in Africa committed to advancing justice for lesbian and bisexual women and transdiverse people.</p>\n\n<p><img alt="" src="http://www.cal.org.za/new/wp-content/uploads/wppa/75.jpg" style="height:341px; width:640px" /></p>\n\n<p>Source:&nbsp;<a href="http://www.cal.org.za/new/">http://www.cal.org.za/new/</a></p>\n	-26.190407	28.025305	0	2003-06-22	2003-06-25	t	2015-04-11	\N				South Africa	Wits Institute for Social & Economic Research (WISER)	3	\N	\N
41	The Gay and Lesbian Archives (GALA) is founded	<p>In 2007 they changed their name to &quot;Gay and Lesbian Memory in Action,&quot; but retained the previous acronym.</p>\n\n<p>&quot;GALA uses a human rights framework to work towards building a society which is democratic, just and peaceful. As such we strive to be progressive, transformative, democratic, inclusive, respectful of diversity, non-racist, non-sexist, non-xenophobic, empowering, and to provide equal opportunities. We believe in the transformation of oppressive gender relations in order to achieve true gender equality.&quot;</p>\n\n<p><img alt="" src="http://www.gala.co.za/modules/CMPhotoGallery/galleries/346/346_kldbGjlW.jpg" style="height:307px; width:460px" /></p>\n\n<p>Source:&nbsp;<a href="http://www.gala.co.za/">http://www.gala.co.za/</a></p>\n	-26.192841	28.032944	0	1997-01-01	\N	t	2015-04-11	\N		Johannesburg		South Africa	University Corner (Wits Art Museum building)	3	\N	\N
42	"The Princess" and "The Duchess"	<p>Two drag queens known as &quot;The Princess&quot; and &quot;The Duchess&quot; held a St. Patrick&#39;s Day party at Griffith Park, a popular cruising spot and a frequent target of police activity. More than 200 gay men socialized through the day.</p>\n\n<p>Originally a place to protest police entrapment, this event led to a &quot;gay-in&quot; which took place on May 30, 1968.</p>\n\n<p><img alt="" src="http://www.onearchives.org/wp-content/uploads/2012/07/Crowd-gathers-at-the-Gay-In-at-Griffith-Park-Los-Angeles.-1970.jpg" style="height:498px; width:792px" /></p>\n\n<p>Source:&nbsp;<span style="color:rgb(0, 0, 0); font-family:arial,sans,sans-serif">Witt, Lynn, Sherry Thomas and Eric Marcus (eds.) (1995). Out in All Directions: The Almanac of Gay and Lesbian America. New York, Warner Books. ISBN 0-446-67237-8. p 210.</span></p>\n	34.136555	-118.294197	0	1968-03-17	\N	t	2015-04-11	\N		Los Angeles	CA		Griffith Park	3	\N	\N
43	Gathering of the Radical Faeries	<p>The Gathering of the Radical Faeries was conceptualized by Harry Hay to &quot;connect to the ancient spirit of gay people throughout history. Seen more as a way of life than a movement, the Radical Faeries started in 1978 and had their first &quot;spiritual conference&quot; at this location over Labor Day weekend in 1979.</p>\n\n<p>Source:&nbsp;<a href="http://www.radfae.org/firstgathering.htm">http://www.radfae.org/firstgathering.htm</a></p>\n	31.967861	-110.294518	0	1979-08-31	1979-09-02	t	2015-04-11	\N		Benson	AZ	United States	Sri Ram Ashram	3	\N	\N
44	Randy Wicker led a protest of the violation of gay men's draft records	<p>Considered the first organized gay rights demonstration in the United States.</p>\n\n<p><img alt="" src="http://graphics8.nytimes.com/images/2009/05/07/realestate/10scapes3_190.jpg" style="height:240px; width:190px" /><br />\nNew York Historical Society U.S. Army Building, 39 Whitehall Street, ca. 1887.</p>\n\n<p>Source:&nbsp;Campbell, J. Louis (2007). Jack Nichols, Gay Pioneer: &quot;Have You Heard My Message?&quot;. Haworth Press. ISBN 1-56023-653-1.</p>\n	40.702938	-74.012688	0	1964-09-19	\N	t	2015-04-11	\N		New York	NY	United States	39 Whitehall St.	3	\N	\N
55	TravelersCon 2015	<p>There&#39;s no one here, so we&#39;re having some fun.</p>\n	34.019909	-118.286209	0	2015-04-12	2015-04-12	t	2015-04-12	\N						1	\N	\N
56	Tamiment Library at NYU	<p>NYU&#39;s library of radicalism and anarchism and labor. Also has a lot of LGBTQ stuff, but the LGBTQ stuff has to be radical for it to be considered for part of the collection.</p>\n\n<p>Learn more:</p>\n\n<p><a href="https://www.flickr.com/photos/tamiment/with/16794055068/">https://www.flickr.com/photos/tamiment/with/16794055068/</a></p>\n	40.729691	-73.997200	0	\N	\N	t	2015-04-12	\N						2	\N	\N
57	Andy's collection	<p>Andy Rutkowski working on the <a href="https://www.flickr.com/photos/124522057@N02/">Damron project</a> from here!</p>\n\n<p><img alt="" src="https://farm9.staticflickr.com/8629/16619621059_051e1ac64f_b_d.jpg" style="height:818px; width:1024px" /></p>\n	34.021290	-118.283768	0	2015-01-01	\N	t	2015-04-12	2015-04-12						1	\N	\N
58	Awesome media class	<p>linzi has an awesome class who is all going to sign up for this site. :D</p>\n	34.074146	-118.440102	0	2015-04-22	2015-04-22	t	2015-04-22	\N						1	\N	\N
59	Taiwanese not-so-straight dinner	<p>Great Hawaiian place here where me and a few friends got together for dinner!</p>\n	34.021122	-118.396469	0	2015-04-24	2015-04-24	t	2015-04-25	2015-04-25		culver city			rutt's hawaiian	1	\N	\N
60	City of West Hollywood Founded 1984	<p>In 1984, the City of West Hollywood was founded and became the first municipality with a majority openly LGBT City Council and the first with an openly lesbian mayor, Valerie Terrigno. The City continues to support LGBTQ causes and runs an LGBTQ Arts Festival called One City One Pride, was the location of hundreds of same-sex marriage ceremonies in the days after Prop 8 was overturned, has a Lesbian and Gay Advisory Board and Transgender Advisory Board, and is currently about 40% LGBTQ in population. <a href="http://www.weho.org/pride">www.weho.org/pride</a></p>\n	34.090500	-118.370712	0	1984-11-27	\N	t	2015-09-14	\N	90069	West Hollywood	CA	USA	8300 Santa Monica Blvd	3	\N	\N
61	Elysian Park	<p>Historic (analog) gay cruising territory, operating side by side the balls and bats of Dodger Stadium and the firing of pistols at the LAPD training academy.</p>\n\n<p>&nbsp;</p>\n\n<p><a href="http://adelantemagazine.com/2010/05/l-a-p-d-targets-latinos/">http://adelantemagazine.com/2010/05/l-a-p-d-targets-latinos/</a></p>\n	34.084991	-118.237267	0	\N	\N	t	2015-09-28	2015-09-30	90031	Los Angeles	CA	USA		3	\N	\N
62	Mapping Queer Terrains Eveng	<p>Panel discussion on LGBTQ mapping.</p>\n	34.030895	-118.281471	0	2015-09-30	\N	t	2015-09-30	\N						3	\N	\N
63	Exploring LGBTQ Histories at the British Museum	<p>British Museum&#39;s exhibit on LGBTQ history, Summer 2017 - October 2017</p>\n\n<p>&nbsp;</p>\n\n<p>http://www.britishmuseum.org/whats_on/exhibitions/desire,_love,_identity.aspx</p>\n	51.519413	-0.126957	0	2017-05-11	2017-10-15	t	2017-07-02	\N				United Kingdom	British Museum	3	\N	\N
64	Console-ing Passions participants party rooms	<p>For the 2017 Console-ing Passions conference, participants were housed here.</p>\n	35.599789	-77.364342	0	2017-07-27	2017-07-29	t	2017-07-29	\N		Greenville	North Carolina		Gateway Resident Hall	3	\N	\N
65	Location of Console-ing Passions Conference 2017	<p>an awesome conference focusing on feminist media scholarhip.</p>\n	35.606159	-77.365295	0	2017-07-27	2017-07-29	t	2017-07-29	\N						3	\N	\N
45	The first gay uprising in modern history	<p>The first gay uprising in modern history occurs at Cooper&#39;s Donuts in Los Angeles.</p>\n\n<p>&quot;Two cops entered the donut shop that night, ostensibly checking ID, and arbitrarily picked up two hustlers, two queens, and a young man just cruising and led them out. As the cops packed the back of the squad car, one of the men objected, shouting that the car was illegally crowded. While the two cops switched around to force him in, the others scattered out of the car.</p>\n\n<p>From the donut shop, everyone poured out. The crowd was fed up with the police harassment and on this night they fought back, hurling donuts, coffee cups and trash at the police. The police, facing this barrage of [pastries] and porcelain, fled into their car calling for backup.</p>\n\n<p>Soon, the street was bustling with disobedience. People spilled out in to the streets, dancing on cars, lighting fires, and generally reeking havoc. The police return with backup and a number of rioters are beaten and arrested. They also closed the street off for a day.</p>\n\n<p>Full story here: http://www.queerty.com/before-stonewall-there-was-the-coopers-donuts-and-comptons-cafeteria-riots-20111007/#ixzz2yLP6JTra</p>\n\n<p><img alt="" src="http://www.amoeba.com/admin/uploads/blog/Eric_B/CooperDo-nuts.png" style="height:405px; width:545px" /><br />\nStephen Seemayer and Pamela Wilson&#39;s film, Young Turks (1982)<br />\n<span style="line-height:1.6em">Source:&nbsp;</span><a href="http://www.amoeba.com/blog/2013/06/eric-s-blog/the-cooper-do-nuts-uprising-lgbt-heritage-month.html" style="line-height: 1.6em;">http://www.amoeba.com/blog/2013/06/eric-s-blog/the-cooper-do-nuts-uprising-lgbt-heritage-month.html</a></p>\n	34.052235	-118.243683	0	1959-05-01	\N	t	2015-04-11	\N		Los Angeles	CA		Near Pershing Square	3	\N	\N
46	AA group for gay alcoholics in Los Angeles met for the first time	<p>The Alcoholics Together (AT) groups in Southern California used a unique meeting format that included what was known as the &ldquo;double anonymity clause,&rdquo; which protected group members from being outed as either an alcoholic or homosexual. Later, subgroups, including lesbian-centric ones, emerged. In 1982, the LA central office agreed to recognize AT groups, but only if they registered as otherwise unmarked Alocholic Anonymous (AA). Some registered, others stayed. AT still functions.</p>\n\n<p><span style="line-height:1.6em">Learn more:&nbsp;</span><a href="http://atcenterla.org/history-of-gay-aa/" style="line-height: 1.6em;">http://atcenterla.org/history-of-gay-aa/</a></p>\n	34.095417	-118.276634	0	1969-01-01	\N	t	2015-04-11	\N		Los Angeles	CA	United States	1773 Griffith Park Blvd.	3	\N	\N
47	The LAPD raided the New Year's Eve parties at two gay bars	<p>The LAPD raided the New Year&#39;s Eve parties at two gay bars, the Black Cat Tavern and New Faces. Several patrons were injured and a bartender was hospitalized with a fractured skull. Several hundred people spontaneously demonstrated on Sunset Boulevard and picketed outside the Black Cat.</p>\n\n<p>Several days later, this police action incited a civil demonstration of over 200 attendees to protest the raids. The demonstration was organized by a group called PRIDE (Personal Rights in Defense and Education).&nbsp;The protest was met by squadrons of armed policemen.&nbsp;Two of the men arrested for kissing were later convicted under state law and registered as sex offenders. The men appealed, asserting their right of equal protection under the law, but the U.S. Supreme Court did not accept their case.</p>\n\n<p>It was from this event that the publication The Advocate began as a newspaper for PRIDE (Personal Rights in Defense and Education).&nbsp;Together the raid on the Black Cat Tavern and later the raid on The Patch in August 1968 inspired the formation of the Metropolitan Community Church (led by Pastor Troy Perry).</p>\n\n<p>Source:<br />\n<a href="http://en.wikipedia.org/wiki/Black_Cat_Tavern">http://en.wikipedia.org/wiki/Black_Cat_Tavern</a><br />\n<a href="http://blogs.presstelegram.com/outinthe562/2012/03/13/revisting-silver-lakes-the-black-cat-tavern/">http://blogs.presstelegram.com/outinthe562/2012/03/13/revisting-silver-lakes-the-black-cat-tavern/</a></p>\n	34.092194	-118.279724	0	1967-01-01	\N	t	2015-04-11	\N		Los Angeles	CA	United States	3909 W. Sunset Blvd.	3	\N	\N
48	The Palms closes.	<p><span style="font-family:arial,sans,sans-serif">The Palms opened in 1957 as a local hangout and changed to a lesbian bar in the 1970s. By the time it closed in 2013, it was the only lesbian bar in Los Angeles.</span></p>\n\n<p>Read more here:</p>\n\n<p><a href="http://www.huffingtonpost.com/2013/06/05/the-palms-closing-lesbian-bar_n_3392667.html?">http://www.huffingtonpost.com/2013/06/05/the-palms-closing-lesbian-bar_n_3392667.html?</a></p>\n\n<p><u><a class="in-cell-link" href="http://www.latimes.com/features/food/dailydish/la-dd-historic-lesbian-bar-the-palms-set-to-close-in-west-hollywood-20130507,0,1676563.story#axzz2yLGfeu4u" target="_blank">http://www.latimes.com/features/food/dailydish/la-dd-historic-lesbian-bar-the-palms-set-to-close-in-west-hollywood-20130507,0,1676563.story#axzz2yLGfeu4u</a></u></p>\n\n<p><u><img alt="" src="http://s3-media2.ak.yelpcdn.com/bphoto/T2_5DQEnlgcrRwnJu_ZTgA/l.jpg" style="height:400px; width:535px" /></u></p>\n	34.088070	-118.378227	0	1957-01-01	2013-06-09	t	2015-04-11	\N		West Hollywood	CA	USA	8572 Santa Monica Blvd	3	\N	\N
49	International Gay and Lesbian Human Rights Commission Headquarters	<p><span style="color:rgb(0, 0, 0); font-family:arial,sans,sans-serif">The <a href="http://iglhrc.org/">International Gay and Lesbian Human Rights Commission (IGLHRC)</a>, with its New York headquarters here,&nbsp;was launched&nbsp;by U.S. activist Julie Dorf in 1990 in the belief that all people, regardless of their sexual orientation, gender identity or HIV status are entitled to human rights.&nbsp;IGLHRC is a leading international organization dedicated to human rights advocacy on behalf of people who experience discrimination or abuse on the basis of their actual or perceived sexual orientation, gender identity or expression.</span></p>\n	40.707138	-74.007614	0	1990-01-01	\N	t	2015-04-11	2015-04-11		New York	NY		80 Maiden Lane	2	\N	\N
50	The Center on Halsted	<p>The Center on Halsted works on advancing LGBTQ community and health in the Chicago area.</p>\n\n<p>Learn more:</p>\n\n<p><a href="http://www.centeronhalsted.org/">http://www.centeronhalsted.org/</a></p>\n	41.948875	-87.649803	0	1973-01-01	\N	t	2015-04-12	2015-04-12		Chicago	IL		3656 N. Halsted Street	2	\N	\N
51	The Center Long Beach	<p>The Center Long Beach serves the LGBTQ community and interests in Long Beach, providing education, addressing physical and mental health, and organizing social and cultural activities. They also have an <a href="http://www.centerlb.org/lgbt-library/">LGBTQ library</a>!&nbsp;</p>\n\n<p>Learn more:</p>\n\n<p><a href="http://www.centerlb.org/">http://www.centerlb.org/</a></p>\n	33.771980	-118.167130	0	1977-01-01	\N	t	2015-04-12	\N					2017 E 4th St, Long Beach, CA 90814	2	\N	\N
106	Ally 🏳️‍🌈	<p>I am an ally and I support gay rights because I believe in the freedom of LOVE.&nbsp;</p>	34.010632	-118.284287	0	2020-05-08	2020-05-29	f	2020-05-08	2020-05-08	90037	Los Angeles	CA	United States	601 w 40th place	1	16	16
147	The Abbey	<p>The Abbey LGBTQ bar in Weho, amazing drinks, hot performers and just a plain ol good time.</p>	34.052200	-118.243700	0	2020-09-28	2020-09-28	f	2020-09-28	2020-09-28	90069	Wes Hollywood	CA		692 N Robertson Blvd	2	43	43
66	Adamant eve re-imagined, pop-up intersectional feminist cafe 	<p>This is an&nbsp;intersectional feminist cafe which meets once every month. The organisers are two working womyn. To get to the cafe, one would need to climb two sets stair cases (we are sorry that there is no elevator), and it is in a private house in South Calcutta neighbourhood. THe organisers try to keep it small-ish (not more than 20 people), so that the discussions, performances and chit-chats are more personal. You can also find us&nbsp;on Facebook.</p>\n	22.481047	88.350533	0	\N	\N	t	2017-07-30	2017-07-30	700040	Tollygaunge	West Bengal	India	9/11 Moore Avenue	2	\N	\N
67	Queer People of Colour meet ups	<p>This is strictly a Queer People of Colour space. We are in deep south and we often feel the need for support from people with similar lived experiences. This is an effort to create an informal group, around food, wine, chats, activism, love and lot more for queer people of colour. So far we are a very small but we are glad we exist. Looking forward to meeting new people and support each other. We do not talk about the closet, in or out as we know for some of us, the closet is the safest place and for some it is not. Look forward to meeting new folks who are queer people of colour.&nbsp;</p>\n	35.612659	-77.366356	0	\N	\N	t	2017-07-30	\N	27834	Greenville	North Carolina			2	\N	\N
68	QTPOC group	<p>Between 2014&nbsp;and 2016, we had a pretty active group of QTPOC folks here in Calgary, making art, performing, making movies, having potlucks etc. We also used to host potlucks when QTPOC individuals travelling from different parts of Canada were passing through Calgary. As we were also members/organisers for Beyond Borders(2014-2015), a program dedicated to immigrants/ non-immigrant workers or refugee claimants, queer folks of colour, we could also write letter of references for immigration court appearances. The group also taught several workshops for Calgary OutLink, and Mount Royal University.This group made a movie for Calgary Gay Film Festival in 2015, which was screened at the festival. It was an amazing experience meeting so many awesome QTPOC artists, performers and friends.&nbsp;Beyond Border was shut down when the facilitators of the group called LGBTQ organization, which was the host of this program, for institutionalized racism. The last public appearance for Beyond Borders (2014-2015) was a community meeting held by Beyond Borders group and their supporters at Community Wise Resource Center in August 2015. Though Beyond Borders was forced to shut down, the QTPOC group continued, several of the group members still live in Calgary, and some are scattered around Canada/USA.Between 2013 and 2016, we had a pretty active group of QTPOC folks here in Calgary, making art, performing, making movies, having potlucks etc. We also used to host potlucks when QTPOC individuals travelling from different parts of Canada were passing through Calgary. As we were also members/organisers for Beyond Borders(2014-2015), a program dedicated to immigrants/ non-immigrant workers or refugee claimants, queer folks of colour, we could also write letter of references for immigration court appearances. The group also taught several workshops for Calgary OutLink, and Mount Royal University.This group made a movie for Calgary Gay Film Festival in 2015, which was screened at the festival. It was an amazing experience meeting so many awesome QTPOC artists, performers and friends.&nbsp;Beyond Border was shut down when the facilitators of the group called LGBTQ organization, which was the host of this program, for institutionalized racism. The last public appearance for Beyond Borders (2014-2015) was a community meeting held by Beyond Borders group and their supporters at Community Wise Resource Center in August 2015. Though Beyond Borders was forced to shut down, the QTPOC group continued, several of the group members still live in Calgary, and some are scattered around Canada/USA.</p>\n\n<p>The dates listed below are not exact, but the months and year are accurate.&nbsp;</p>\n	51.110607	-114.178436	0	2014-05-19	2015-08-28	t	2017-07-30	2017-07-30		Calgary, NW	Alberta	Canada		3	\N	\N
69	Plush Pony	<p>Lesbian bar that used to be here. Closed in 2008-2010</p>\n	34.074974	-118.170982	0	1960-01-01	2010-01-01	t	2017-09-17	\N		Los Angeles	CA		5261 Alhambra 	3	\N	\N
70	First Kiss	<p>After months of swimming in denial, shying away from each other, and employing all sorts of silly evasive manuevers, I kissed my future-wife here for the first time. Took us a while, but we were ready.&nbsp;</p>\n	34.093372	-118.340469	0	2017-01-06	2017-01-06	t	2017-11-06	\N	90039	Los Angeles	CA	USA	1229 N Mansfield Ave	1	\N	\N
71	Lily Gives Pause		27.683529	-142.382812	0	2011-01-01	2011-01-01	t	2017-11-06	2017-11-06		Arcata	CA	USA		1	\N	\N
72	South Bay LGBT Center	<p><span style="color:rgb(0, 0, 0); font-family:helvetica-w01-light,helvetica-w02-light,sans-serif; font-size:16px">Our mission statement:The Lesbian, Gay, Bi &amp; Transgender Community Organization&#39;s mission is to provide a focal point for the members of our community in the South Bay for education, social interaction, personal growth, and political power, and to foster public understanding of our community.</span></p>\n\n<p>&nbsp;</p>\n\n<p><span style="color:rgb(0, 0, 0); font-family:helvetica-w01-light,helvetica-w02-light,sans-serif; font-size:16px">For more information, please visit the <a href="http://southbaycenter.wixsite.com/southbaylgbtcenter">South Bay LGBT Center&#39;s official site</a>.</span></p>\n	33.879890	-118.326370	0	1989-01-01	\N	t	2018-01-18	\N					south bay lgbt center	2	\N	\N
73	9-hour first date	<p>First date, lasted 9 hours.</p>\n	34.060574	-118.122787	0	2018-02-02	\N	t	2018-04-22	\N		monterey park	CA		king bbq	1	\N	\N
74	Lecturing about GlobaltraQs	<p>How meta.</p>\n	34.065983	-118.167915	0	2018-10-18	\N	t	2018-10-18	\N						1	\N	\N
75	Transphobia and homophobia made illegal	<p>In 2018, <a href="https://www.gaystarnews.com/article/switzerland-made-transphobia-and-homophobia-as-illegal-as-racism/?fbclid=IwAR39ibB1urjyzBZNvpEIHjjH3x9L_Po1FJxpgL6389AOxq8r6jfINhaxwHA#gs.dhsos=g">Switzerland made transphobia and homophobia as illegal as racism.</a></p>\n	46.818188	8.227512	0	2018-09-30	\N	t	2018-10-28	\N				Switzerland		3	\N	\N
76	Cafe Savoy	<p><font color="#222222" face="roboto, arial, sans-serif" size="2">On our trip to Vienna in June 2018, we wanted to see what gay life was like, so thanks to Google, we found this little cafe that serves beer and wine. Very gay, lots of older gay men were sitting along the patio outside. We joined them and spent the rest of the evening watching cars and the bustle across the street at the Night Market.</font></p>\n	48.197674	16.360083	0	2018-05-30	\N	t	2018-10-28	\N						1	\N	\N
77	Lavender Library, Archives, and Cultural Exchange (LLACE)		38.571533	-121.480942	0	\N	\N	t	2018-11-29	\N					1414 21st St, Sacramento, United States	2	\N	\N
78	KLYT Bath House	<p>KLYT, which used to be a straight bathhouse called &quot;Palace Turkish Baths&quot; is one of the oldest gay bathhouses in Los Angeles. It was closed sometime at the end of 2018 / beginning of 2019. It was rumored that Rock Hudson used to feature this location.</p>\n\n<p><a href="http://www.cruisinggays.com/los-angeles/bathhouses/5292-klyt/">http://www.cruisinggays.com/los-angeles/bathhouses/5292-klyt/</a></p>\n\n<p><a href="https://www.yelp.com/biz_photos/klyt-bath-house-los-angeles">https://www.yelp.com/biz_photos/klyt-bath-house-los-angeles</a></p>\n	34.047333	-118.246490	0	1922-01-01	2018-01-01	t	2019-01-26	\N		Los Angeles	CA		132 Fourth St.	3	\N	\N
79	Midtowne Spa	<p>Gay bathhouse in downtown with some pretty fun yelp reviews.</p>\n\n<p>https://www.yelp.com/biz/midtowne-spa-los-angeles-2</p>\n	34.039131	-118.241135	0	\N	\N	t	2019-01-27	\N		Los Angeles	CA		615 Kohler St.	2	\N	\N
80	ONE Inc - First Office	<p>One Inc, which started in 1952 from an idea to start a magazine for homosexuals, moved into an office here.</p>\n\n<p>https://www.onearchives.org/about/history/</p>\n	34.052048	-118.248344	0	1953-01-01	1962-01-01	t	2019-01-29	\N		Los Angeles			232 S Hill St	3	\N	\N
81	LGBTQ Synagogue - Beth Chayim Chadashim	<p>Started in 1973 at a different location, this is an LGBTQ synagogue in LA.</p>\n	34.052635	-118.373634	0	\N	\N	t	2019-02-20	2019-02-20		Los Angeles	CA		6090 Pico Blvd	2	\N	\N
336	The Arqive Year 2	Arqive mobile app developed by Computer Science, Graphic Design, and Communications students at Cal State LA	34.066107	-118.166798	0	2021-05-19	2021-05-19	t	2021-05-19	2021-05-19						1	\N	2
159	idk	<p>im just checkeing out the site</p>\n<p>lets have fun</p>	36.019498	14.238551	0	2020-10-21	2020-10-21	f	2020-10-21	2020-10-21	1234	LA	Ca	USA	Vine Street	1	48	48
386	Test post no region just country	Body	39.783730	-100.445882	0	2022-02-04	2022-02-04	t	2022-02-04	2022-02-04				USA		1	\N	\N
82	Headquarters for ONE Inc in the 60s and 70s	<p><span style="color:rgb(34, 34, 34); font-family:roboto,arial,sans-serif">In 1962, ONE Inc moves their headquarters to this location. This was also when Jim Kepner&#39;s archives is named the Western Gay Archives (1975). When this collection moved to its new location on Hudson Ave in 1979, it is </span><span style="font-size:14px"><span style="color:rgb(34, 34, 34); font-family:roboto,arial,sans-serif">renamed the </span>National Gay Archives: Natalie Barney/Edward Carpenter Library.</span></p>\n	34.043446	-118.307961	0	1962-01-01	1979-01-01	t	2019-02-24	\N		Los Angeles	CA		2256 Venice Blvd	2	\N	\N
83	First Conejo Valley Pride Celebration 2018	<p>First ever Conejo Valley Pride Event held in the Civic Arts Plaza.</p>\n\n<p><a href="https://www.conejovalleypride.com/">https://www.conejovalleypride.com/</a></p>\n	34.174644	-118.848442	0	2018-09-22	\N	t	2019-02-24	2019-02-24						3	\N	\N
342	QPOD Queer Journeys Podcast	<p>Q.POD highlights stories around LGBT wellness and life journeys. Recorded by Irene.<br /><br /><br />Listen on Apple Podcasts: https://podcasts.apple.com/us/podcast/qpod-queer-journeys-podcast/id1520493083</p>\n<p>Spotify: https://open.spotify.com/show/6vSHN7natCptvgSMBOZeeB?si=cQxb6sfPQWWEbgSZ26HdSA</p>\n<p>Anchor: https://anchor.fm/qpod</p>	37.668820	-122.080796	0	2020-05-15	2027-05-15	f	2021-05-25	2021-05-25		Hayward	California	United States		2	107	107
86	The arQive Developed: Year 1	<p>Software development for the arQive was begun by five students as a Senior Design project in the department of Computer Science at Cal State LA during the academic year 2019-2020.</p>	34.066494	-118.166220	0	2019-08-13	2020-05-16	f	2020-05-07	2020-05-07						3	2	2
346	Wishing	I really wish that I could meet a woman That I’m interested in or at least is interested in me and not just sex I wanna know who they are know what they like see how they laugh how they wake up in the morning and enjoy but I think I’ll be alone in that regard for ever …	40.712728	-74.006015	0	2021-09-28	2021-09-28	t	2021-09-28	2021-09-28	10025	New York				1	\N	\N
88	What am I	<p>Idk what I'm doing but I'm heckin bored so</p>	38.923258	-119.984704	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08						1	\N	\N
100	Hamburger Mary’s	<p>For my best friend's birthday we went to Hanburger Mary's in WEHO for a drag show. Needless to say it was one of the best experiences I've ever had! The energy and vibe of the queens and the audience was inviting and so positive. It was nothing but a good time!!&nbsp;</p>	34.413819	-118.561037	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	91355	Valencia	Ca	United States		1	13	13
90	Came to love myself and accept my sexuality	<p>It took a while to get to where I am now, but I can say that today I have never been more happy and comfoetable with my sexuality.&nbsp;</p>	37.144106	-121.664061	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	95037	Morgan Hill	CA	United States	18522 Monterey Road	1	\N	\N
89	Equality House	<p><span style="color: #262626; font-family: -apple-system, system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;">Equality House, Topeka Kansas, in late 2012 founder Aaron Jackson bought a house. In 2013, he &amp; a team of volunteers from the non-profit painted it to match the gay pride flag. It has since hosted a same-sex wedding and other events.</span></p>\n<p><a href="https://www.instagram.com/p/B_5YWtVpXYV/">https://www.instagram.com/p/B_5YWtVpXYV/</a></p>	39.045641	-95.720956	0	2012-12-31	\N	f	2020-05-08	2020-05-08	66604	Topeka	KS		1200 SW Orleans St	3	6	6
301	Working w/ The arqive Team	I was lucky enough to work with The arqive team to turn their website application into a mobile app, and I couldn’t be any more prouder of our team! Good job class of 2021!	34.227001	-118.465648	0	2020-08-20	2021-05-21	t	2021-05-17	2021-05-17	90032		CA		5151 State University Dr.	1	\N	\N
476	James Baldwin Born	<p>James Baldwin born at Harlem Hospital, August 2, 1924.</p>	40.814540	-73.939796	0	1924-08-02	1970-01-01	f	2022-03-29	2022-03-29						3	2	2
99	Coming out story!	<p>When I was a senior in highschool about five years ago, I decided to let others know that I am gay and it is time to be myself via social media! It was a bit rocky at first, but soon I grew comfortable in my own skin being a black gay woman. A moment I cannot forget because it all started in my hometown Santa Clarita!</p>	34.417922	-118.492704	0	2020-05-08	\N	f	2020-05-08	2020-05-08	91351	Santa Clarita	CA	United States	26712 Isabella Pkwy	1	12	12
387	Testing	More testing	61.066692	-107.991707	0	2022-02-05	2022-02-05	t	2022-02-05	2022-02-05			CA			1	\N	\N
102	LGBTQ+ Stan! 🏳️‍🌈💗	<p>Forever an ally of the LGBTQ+ community!! Everyone deserves happiness and equal opportunity ❤️</p>	34.391664	-118.542586	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08		Santa Clarita	CA			1	\N	\N
103	Hamburger Marts	<p>When I went to hamburger Mary's it was really fun. My friends and went spontaneously and we had the best night. It was filled with a unforgettable energy. Packed with amazing people and all were super nice. I had a really great time seeing the diversity and everyone having a good time.&nbsp;</p>	34.423329	-118.472028	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	91351	Canyon country	CA	United States		1	\N	\N
104	RAGE night club west wollywood	<p>Honestly its been a long hard journey to find a fun gay club that plays Spanish music. But I finally found the holy grail!! Had one of the best times I've ever had going out at this place and cannot wait to go back as soon as everything opens back!! <img src="https://cdn.tinymce.com/4/plugins/emoticons/img/smiley-tongue-out.gif" alt="tongue-out" /></p>	34.084953	-118.384587	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	90069	West Hollywood	California	United States	8911 Santa Monica Blvd	1	\N	\N
105	RAGE night club west wollywood	<p>Honestly its been a long hard journey to find a fun gay club that plays Spanish music. But I finally found the holy grail!! Had one of the best times I've ever had going out at this place and cannot wait to go back as soon as everything opens back!! <img src="https://cdn.tinymce.com/4/plugins/emoticons/img/smiley-tongue-out.gif" alt="tongue-out" /></p>	34.084953	-118.384587	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	90069	West Hollywood	California	United States	8911 Santa Monica Blvd	1	\N	\N
391	demo for Dr. Kurtin's class	<p>Talking to a bunch of awesome students....remotely. :)</p>	34.071999	-118.209800	0	2022-02-12	2022-02-12	f	2022-02-12	2022-02-12						1	6	6
351	Great Place for history	<p>This place has great food, amazing service. the very inclusive and have alot of history with the amount of people that have left their mark all over!</p>	34.090486	-118.373675	0	2021-11-30	2021-11-30	f	2021-11-30	2021-11-30	90069	west hollywood	California	United States	8447 Santa Monica Blvd.	1	126	126
504	Streaming of Decolonizing Gender (Film)	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Short film documentation of &ldquo;&rdquo;Indigiqueer Brunch&rdquo; in November of 2021 to highlight black and indigenous queer folks who have been marginalized through white patriarchal practices of Thanksgiving.</p>	34.052314	-118.239764	0	2022-04-08	2022-04-08	f	2022-04-23	2022-04-23	90012	Los Angeles	CA	United States	San Pedro St	1	157	157
107	Tip Top	<p>After a defeating long day of work, rather than immediately head to my car- I walked for a few blocks to clear my mind before my drive home. At a red light before crossing, I started to cry to myself. Being alone in the middle of a big city at sunset makes you feel like there's no one in the world to understand how you feel. A stranger who appeared to be around my age; who I would later discover was named Kai, made a empathetic smile/ frown at me and asked if I was okay. I smiled back, and replied that I was fine. Not taking this answer, he asked ,"Are you sure?" To which I said- life is life, what can you do? From this small worded encounter, Kai introduced himself and walked with me across the street. His intentions were as pure as day, and I felt no sense of danger or hesitation to exchange in friendly banter with him. He let me know he was waiting for his boyfriend around the area and wouldn't mind chatting until his partner got there. And that's what we did for 25 minutes. I learned about Kai's struggle in the Los Angeles boxing industry because of his sexual orientation. When he was able to score boxing match deals, his opponents in the ring had a special vendetta with him for being a homosexual man- and the fights were almost always less than honorable for their added aggression. I asked him why after all of these happenings, he still had such a passion for it knowing the sport was dominated by straight, aggressive men who wanted to hurt him. He replied ,"J was born with armor chest." We exchanged numbers and I met his partner who was extremely kind and light hearted. Kai is the blueprint for something larger than he realizes- and I'm happy to know him and cheer him on.&nbsp;</p>	34.053690	-118.242766	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	90034	Los Angeles	California	United States		1	\N	\N
108	first date	<p>the first time i went on a date (in general but) with a girl i was so nervous! We went out for a sushi and then walked to see a movie. We held hands as we walked the few blocks we needed to get there and it felt so amazing! i thought i would feel scared to publicly present myself as a queer woman but it was liberating!&nbsp;</p>	34.423329	-118.472028	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	91387	Canyon Country	California	United States		1	\N	\N
109	Accepted best friend’s coming out with open arms 🥰	<p>Heart to heart talk when best friend disclosed to me she was/is gay! Look at her the same way I did and am happy she's living her best life&nbsp;</p>	34.408462	-118.469238	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	91351	Santa  Clarita	California	USA	Via Princessa	1	\N	\N
110	Drag & Brunch	<p>The best place to stop for Brunch and a drag show is HAMBURGER MARYS!!! I went here for my friend's bday and it was the best brunch experience I ever had! The drinks were amazing! The people and energy is so welcoming and a great vibe!! It's in West Hollywood so after brunch you can head over to the abbey or any other bar in Weho! Weho will always be my go to! It will always be full of memories for me and my friends.&nbsp;</p>	34.090531	-118.370097	0	2020-05-08	2020-05-08	f	2020-05-08	2020-05-08	90046	West Hollywood	CA	United States	8288 Santa Monica Blvd	1	\N	15
113	Hamburger Mary’s	<p>I came here for a friend's birthday. It was my first time at Hamburger Mary's and I had so much fun! The performances and overall entertainment were great! Food was good too!</p>	34.090531	-118.370097	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	90046	West Hollywood	CA	United States	8288 Santa Monica Blvd	1	\N	\N
114	Movie Screens	<p>A little while back, I went and saw "A Portrait of a Woman on Fire" and seeing a lesbian couple on the big screen was something I never had before. It wasn't fetishized or obscured or a Netflix special. It was celebrated and put to display as love and that's all it is: love. Having that cinematic representation was like finding something I didn't know I was looking for.</p>	37.866924	-122.258271	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	94720	Berkeley	CA	USA	2520 channing way	1	\N	\N
115	Movie Screens	<p>A little while back, I went and saw "A Portrait of a Woman on Fire" and seeing a lesbian couple on the big screen was something I never had before. It wasn't fetishized or obscured or a Netflix special. It was celebrated and put to display as love and that's all it is: love. Having that cinematic representation was like finding something I didn't know I was looking for.</p>	37.866924	-122.258271	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	94720	Berkeley	CA	USA	2520 channing way	1	\N	\N
116	Movie Screens	<p>A little while back, I went and saw "A Portrait of a Woman on Fire" and seeing a lesbian couple on the big screen was something I never had before. It wasn't fetishized or obscured or a Netflix special. It was celebrated and put to display as love and that's all it is: love. Having that cinematic representation was like finding something I didn't know I was looking for.</p>	37.866924	-122.258271	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	94720	Berkeley	CA	USA	2520 channing way	1	\N	\N
117	Movie Screens	<p>A little while back, I went and saw "A Portrait of a Woman on Fire" and seeing a lesbian couple on the big screen was something I never had before. It wasn't fetishized or obscured or a Netflix special. It was celebrated and put to display as love and that's all it is: love. Having that cinematic representation was like finding something I didn't know I was looking for.</p>	37.866924	-122.258271	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	94720	Berkeley	CA	USA	2520 channing way	1	\N	\N
118	Movie Screens	<p>A little while back, I went and saw "A Portrait of a Woman on Fire" and seeing a lesbian couple on the big screen was something I never had before. It wasn't fetishized or obscured or a Netflix special. It was celebrated and put to display as love and that's all it is: love. Having that cinematic representation was like finding something I didn't know I was looking for.</p>	37.866924	-122.258271	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	94720	Berkeley	CA	USA	2520 channing way	1	\N	\N
119	Movie Screens	<p>A little while back, I went and saw "A Portrait of a Woman on Fire" and seeing a lesbian couple on the big screen was something I never had before. It wasn't fetishized or obscured or a Netflix special. It was celebrated and put to display as love and that's all it is: love. Having that cinematic representation was like finding something I didn't know I was looking for.</p>	37.866924	-122.258271	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	94720	Berkeley	CA	USA	2520 channing way	1	\N	\N
120	Movie Screens	<p>A little while back, I went and saw "A Portrait of a Woman on Fire" and seeing a lesbian couple on the big screen was something I never had before. It wasn't fetishized or obscured or a Netflix special. It was celebrated and put to display as love and that's all it is: love. Having that cinematic representation was like finding something I didn't know I was looking for.</p>	37.866924	-122.258271	0	2020-05-08	2020-05-08	t	2020-05-08	2020-05-08	94720	Berkeley	CA	USA	2520 channing way	1	\N	\N
302	Working w/ The arqive Team!	It was a pleasure working with The arqive team to create their web application into a mobile app!	34.227005	-118.465667	0	2020-08-20	2021-05-21	t	2021-05-17	2021-05-17	90032		CA		5151 State University Dr.	1	\N	\N
500	The Queer Mercado	<p>The Queer Mercado is a monthly recurring vendor and community market that serves to highlight dispersed Queer Latinx voices. This event started with less than 40 vendors and now hosts over 100 queer and ally identified vendors.</p>	34.061974	-118.158731	0	2022-04-17	2022-04-18	f	2022-04-23	2022-04-23	90222	Los Angeles	CA	United States	319 N. Hunphrey's	3	157	157
487	dd	<p>dd</p>	34.085364	-118.230056	0	2022-04-15	2022-04-15	t	2022-04-15	2022-04-15	ddd	dd	dd	dd	dd	1	132	132
121	West Hollywood LGBTQ bars	<p>On January I had gone to the LGBTQ bars for my twenty-third birthday. It was probably one of the most fun I've ever had. It was my first time going to these bars and the atmosphere was so fun and amazing. Everybody was very welcoming and respectful and experiencing the LGBTQ clubs for the first time was definitely one of a kind experience. I will definitely be coming back to West Hollywood for more amazing nights!</p>	34.053690	-118.242766	0	2020-05-09	2020-05-09	t	2020-05-09	2020-05-09	90069	Los Angeles	CA	United States		1	\N	\N
124	My high school	<p>Specifically, the band room, where I spent most of my time.</p>	34.212253	-118.869099	0	1996-06-01	2020-06-15	f	2020-05-09	2020-05-09						1	\N	6
125	First time coming out	<p>To my best friend from high school. It was scary. I cried, she held my hand and said it was ok.</p>	34.203322	-118.872070	0	2006-01-01	2006-12-31	f	2020-05-09	2020-05-09						1	6	6
122	Circus of Books	<p>Opened in the 1960s as Book Circus, this location was a bookshop with gay pornography in West Hollywood. The Silverlake branch opened up in the 1980s. Since, both locations have shut down given declining sales. Now a documentary on Netflix.</p>\n<p>&nbsp;</p>\n<p><a href="https://en.wikipedia.org/wiki/Circus_of_Books">https://en.wikipedia.org/wiki/Circus_of_Books</a></p>\n<p><a href="https://www.latimes.com/local/lanow/la-me-ln-west-hollywood-porn-shop-circus-of-books-20190208-story.html">https://www.latimes.com/local/lanow/la-me-ln-west-hollywood-porn-shop-circus-of-books-20190208-story.html</a></p>\n<p>&nbsp;</p>	34.090579	-118.368238	0	1960-01-01	2019-02-09	f	2020-05-09	2020-05-09	90046	West Hollywood	CA		8230 Santa Monica Boulevard	3	6	6
133	My boyfriend came out to me as bi	<p>My boyfriend had a conversation with me before class. I could tell he was nervous and unsure if he could or should tell me about it. He came out to me as bisexual. He explained to me that he was nervous to tell me in fears that I would look at him a different way. I hugged him and told him I still loved him and appreciated the fact that he came out to me. We are still together and better than ever, but I can't deny the fact that we've had conversations that if we were to end up with different people, I would be down to go to his and his husband's (potential) wedding, and that I am guranteed to be the maid of honor of course <img src="https://cdn.tinymce.com/4/plugins/emoticons/img/smiley-wink.gif" alt="wink" /></p>	34.067556	-118.165594	0	2017-02-23	2020-05-10	t	2020-05-10	2020-05-10		Los Angeles	CA		5151 State University Dr	1	22	22
137	"I kissed a girl and I liked it"	<p>My first time kissing a female!! it was amazing<img src="https://cdn.tinymce.com/4/plugins/emoticons/img/smiley-kiss.gif" alt="kiss" /></p>	34.241326	-118.432204	0	2020-08-31	2020-08-31	t	2020-08-31	2020-08-31	91331	Arleta				1	37	37
557	Oil Can Harry gets Historic Designation	<p style="font-size: 18px; line-height: 1.6; font-family: Flama-Book, helvetica, sans-serif;">Oil Can Harry&rsquo;s was a well-known LGBTQ bar/nightclub in Studio City from 1968 to 2021. The&nbsp;bar survived a 1960s-1970s city ordinance that banned same-sex dancing, and the HIV-AIDS epidemic, but it began to struggle when the COVID-19 pandemic hit. And in January 2021, the owner John Fagan announced that they would be closing their doors for good.&nbsp;</p>\n<p style="font-size: 18px; line-height: 1.6; font-family: Flama-Book, helvetica, sans-serif;">In April of 2022, the Los Angeles City Council&rsquo;s Planning and Land Use Management Committee designated the site a Historic-Cultural Monument.</p>	34.142115	-118.389545	0	2022-04-13	2022-04-13	f	2022-04-29	2022-04-29	91604	Studio City	CA	United States	11502 Ventura Blvd	3	157	157
135	Police Raid at Lulu Belle	<p>In February 1928, police arrested 30 men wearing drag at Lulu Belle. This was in a neighborhood that was, at the time in Harlem, seemingly accepting (or at least highly tolerant) of drag queens.</p>\n<p>&nbsp;</p>\n<p>Source: George Chauncey's&nbsp;<em>Gay New York</em></p>	40.809374	-73.944819	0	1928-02-01	1928-02-28	f	2020-05-27	2020-05-27		New York	NY	USA	341 Lenox Ave	3	6	6
136	The Bi Loft	<p>Offices of the American Institute of Bisexuality and meeting space for amBi LA and other special events.</p>	34.045730	-118.250987	0	2020-01-01	\N	t	2020-05-28	2020-05-28	90014	Los Angeles	California	USA	600 S Spring Street	2	\N	\N
129	Plato writes "The Symposium" ca 385 BCE	<p>Plato composes "The Symposium," an account of a multi-sided discussion of erotic, mostly male to male,&nbsp; love.&nbsp; Approximately 385 BCE.<br /><br /><a title="The Symposium" href="http://classics.mit.edu/Plato/symposium.html" target="_blank" rel="noopener">http://classics.mit.edu/Plato/symposium.html</a></p>	36.019498	14.238551	0	1970-01-01	1970-01-01	f	2020-05-09	2020-05-09						3	2	2
134	LIttle Richard records "Tutti Frutti"	<p title="Tutti Frutti"><img src="https://i.guim.co.uk/img/media/bef3825def63a1915b216b4de6baa7039f8432ae/6_668_4148_2489/master/4148.jpg?width=620&amp;quality=45&amp;auto=format&amp;fit=max&amp;dpr=2&amp;s=ee574246dccd00160da9c01b28ca75a5" alt="Little Richard" width="1240" height="744" />Little Richard and his band record "Tutti Frutti" at J&amp;M Studio, New Orleans.<br /><br /><a title="Tutti Frutti" href="https://www.youtube.com/watch?v=8SlOj_-_rTI" target="_blank" rel="noopener">https://www.youtube.com/watch?v=8SlOj_-_rTI</a></p>\n<p>&nbsp;</p>	36.019498	14.238551	0	1955-09-14	1955-09-14	f	2020-05-16	2020-05-16						3	2	2
131	Queer SCV	<p>QueerSCV is a community organization that hosts monthly events for LGBTQ+ adults in the Santa Clarita Valley and surrounding areas.&nbsp;</p>\n<p>www.QueerSCV.com</p>	34.391664	-118.542586	0	2019-01-06	\N	t	2020-05-09	2020-05-09	91355	Santa Clarita	CA	USA		2	\N	\N
132	QueerSCV	<p>QueerSCV is a community building organization that hosts monthly inclusive, intersectional events for the LGBTQ+ population of Santa Clarita Valley and the surrounding areas.</p>\n<p>Currently, the majority of our events are queer-centered and for LGBTQIA+ adults, but we do occasionally have all ages events and events where allies of the queer community are welcome to attend.</p>\n<p>For more information follow our accounts on social media <a href="instagram.com/queerscv" target="_blank" rel="noopener">@QueerSCV</a> or visit: <a href="queerscv.com" target="_blank" rel="noopener">www.QueerSCV.com</a>&nbsp;</p>\n<p>QueerSCV is a 501(c)3 non-profit.</p>	34.391664	-118.542586	0	2019-01-06	\N	f	2020-05-09	2020-05-09	91355	Santa Clarita	CA	USA		2	25	25
138	My girlfriend came to her family	<p>During a family birthday and one to many drinks, my girl came out to her family. Thanks to her the wait to come out to my family was over and made it so much easier to do the same to my family after seeing how her family accepted us. After I confirmed my sexuality to my family they said "Oh we already knew, but we are happy you told us".. Yay The Word IS OUT</p>	34.266946	-118.302300	0	2018-04-21	2020-09-10	t	2020-09-10	2020-09-10		Sunland	CA	US		1	39	\N
505	Hot Donna’s Club House	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Story: Hot Donna&rsquo;s Club House is an inclusive queer woman focused club house for fun, exploration, and acceptance. They host Drag King Brunch every 5th Sunday, which highlights Non-Binary/Trans performers while inclusively welcoming all genders and forms of drag expression.</p>\n<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Date: Jan 24th 2022</p>	34.088309	-118.385680	0	2022-01-24	2022-01-24	f	2022-04-23	2022-04-23	90069	West Hollywood	CA	United States	949 N San Vicente Blvd	1	157	157
161	Thousands march for equality in Manila's Pride parade	<p>On June 29, 2019, the Metro Manila Pride March was held in the Marikina Sports Center and attracted a 70,000-strong crowd of participants, outnumbering all previous total participant numbers. The thousands who joined the pride march wielded rainbow flags and umbrellas in a push for equality and legal protections.&nbsp;<span style="color: #101010; font-family: robotoregular, sans-serif; font-size: 16px;">While the Philippines has a reputation of being accepting of LGBTQ+ people, same-sex marriage is outlawed and legal protections are nearly non-existent.</span>&nbsp;</p>	14.634706	121.098452	0	2019-06-28	2019-06-28	t	2020-10-23	2020-10-23	1800	Marikina City	Metro Manila	Philippines	Marikina Sports Center	3	49	49
162	The killing of Jennifer Laude	<p>A crime of hatred - the death of transgender woman Jennifer Laude at the hands of a man who found out about her identity while having sex was gruesome and brutal enough to gain notoriety. On October 11, 2014, Jennifer was found dead in the bathroom of Celzone Lodge, naked with her head submerged in the toilet bowl and her slumped body suffering from bruises and wounds. Her killer, US Marine Lance Corporal Joseph Scott Pemberton who was found guilty on December 1, 2015, was recently pardoned by the current Philippine President, Rodrigo Duterte. More info here - rappler.com/newsbreak/iq/timeline-jennifer-laude-killing-joseph-scott-pemberton-release</p>	14.637403	120.930633	0	2014-10-10	2020-09-17	t	2020-10-23	2020-10-23	2200	Magsaysay Drive, Olongapo City	Subic Bay Freeport Zone	Philippines	Celzone Lodge	3	49	49
163	This is where we agreed to date	<p>Both nervous and unsure, two girls in their 20s agreed to date each other and "see where it goes." They were both drinking beers for some liquid courage. By the end of the date, there was no first kiss, only a chaste holding of hands - both still nervous and unsure about what they started.</p>\n<p>Nine years later, the two girls are now in their 30s. They are living together with their dogs and continuing to build a life and future together. There are no more fears or feelings of uncertainties, just the calmness over a decision made many years ago in a bar to always try to work things out whatever happens, no matter how difficult it gets.</p>\n<p>&nbsp;</p>	14.701836	121.069335	0	2011-04-26	2020-10-23	t	2020-10-23	2020-10-23	1109	Katipunan Avenue, Blueridge Village, Quezon City	Metro Manila	Philippines	Katips Bar and Girll	1	49	49
224	We’ve Come A Long Way	The arqive mobile app has been in the making for less than a year and has had so much progress.	34.227007	-118.465636	0	2021-05-06	2021-05-06	f	2021-05-07	2021-05-07	91325		CA			3	\N	35
563	Club Chico	<p>Established in 1999 as Mr. D's, this night club has become a historical momument for its contributions to the community. Known as the Latino gay bar on the East side, this space holds drag performances and themed nights for everyone.&nbsp;</p>\n<p>During quarentine it was unsure if this space would be lost but Club Chico's has re-opened with an expanded space with renovations.&nbsp;</p>	34.022809	-118.134738	0	1999-06-01	\N	f	2022-08-02	2022-08-02	90640	Montebello	CA	USA	2915 W Beverly Blvd	3	191	191
184	Sit in at Harper Magazine protesting Epstein	<p>After Joseph Epstein published an offensive, homophobic article in Harper's Magazine -- a year after Stonewall no less, gay readers sat in on the Harper's Magazine offices here.</p>\n<p>&nbsp;</p>\n<p>https://www.thenewcivilrightsmovement.com/2016/07/the_sad_case_of_joseph_epstein/</p>	40.769329	-73.226082	0	1970-10-27	1970-10-27	f	2020-12-15	2020-12-15		New York City	New York		666 Broadway	3	6	6
352	New wine bar!	Owned by Jodie and Debbie, newly open today!	36.141764	-97.044766	0	2021-12-04	2021-12-05	t	2021-12-05	2021-12-05	90803				5351 east 2nd	1	\N	\N
502	LA Besties Meet up	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Story: Womxn and Non-binary Queer Latinx meet up in Los Angeles</p>\n<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">&nbsp;</p>	34.071896	-118.259982	0	2022-03-26	2022-03-26	f	2022-04-23	2022-04-23	90026	Los Angeles	CA	United States	751 Echo Park Ave	1	157	157
506	HIV Testing- The Wall Las Memorias	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">The Wall Las Memorias&nbsp;provides client-centered testing services to populations at risk for HIV in Boyle Heights.</p>	34.045232	-118.214704	0	2022-04-23	2022-04-23	f	2022-04-23	2022-04-23	90033	Los Angeles	CA	United States	2020 E 1st Street	2	157	157
382	Lesbian Relationship	Not sure how to use this app. I just wanted to say that I had a lot of lesbian sex in different parts of this house	42.271250	-83.729199	0	2020-07-23	2021-04-30	t	2022-01-21	2022-01-21	48109	Ann Arbor	MI	United States	907 Lincoln Avenue	1	\N	\N
388	test	Test	39.783730	-100.445882	0	2022-02-05	2022-02-05	t	2022-02-05	2022-02-05				USA		1	\N	\N
392	The Sports Bra	Possibly the only women's sports bar in the world. Read more here. https://www.oregonlive.com/dining/2022/02/when-the-sports-bra-opens-in-portland-in-april-it-might-be-the-only-womens-sports-bar-in-the-world.html	45.535030	-122.639795	0	2022-02-28	2022-02-28	t	2022-02-28	2022-02-28	97232	Portland	Or	Usa	2512 NE Broadway	2	\N	\N
350	This website is amazing	<p>Love this site&nbsp;</p>	34.146070	-118.245473	0	2021-11-11	2021-11-11	t	2021-11-11	2021-11-11	91205	glendale	California	United States	108 south Everett	1	\N	\N
183	Gay "Picnic" at the Turtle Pond	"Picnic" was an informal weekly get-together of queer people on the University of Texas campus founded in 2004 and lasting for several years. The group was unofficially linked to a queer student group on campus, HangOut.\nHeld Fridays from around 10am until whenever, with a "come and go as you please" policy, queer people from all over the university were invited to hang out at the Turtle Pond, chat, eat lunch, and share community.	30.286901	-97.739439	0	2004-08-12	2010-12-12	t	2020-12-12	2020-12-12						3	45	45
508	Dragged OUT Competition	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Bohenne Arreaux is named the first Indigenous Dragged Out competition winner for Season 5. Dragged Out is a weekly Drag Performance hosted in Rocco's West Hollywood.</p>\n<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">&nbsp;</p>	34.084547	-118.384139	0	2021-12-18	2021-12-18	f	2022-04-23	2022-04-23	90069	West Hollywood	CA	United States	8900 Santa Monica Blvd	3	\N	157
510	SAGE of the Desert	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Story: The Center is the cornerstone of the LGBTQ community in the Coachella Valley that services more than 65,000 visits yearly offering a variety of health, education, and community services</p>\n<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">&nbsp;</p>	33.840796	-116.546864	0	2022-04-23	2022-04-23	f	2022-04-23	2022-04-23	92262	Palm Springs	CA	United States	1301 North Palm Canyon Dr	2	157	157
187	On Wimmin's Land	<p>Lesbian communes here in the 70s.</p>\n<p>https://placesjournal.org/article/on-wimmins-land-the-heartland-of-lesbian-separatism/</p>	42.263845	-122.801349	0	1970-01-01	\N	f	2021-03-15	2021-03-15			Oregon	US	Cabbage Lane	3	6	6
509	Walela Nehanda Speaks at BLM	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Walela (they/them) is a Black, non binary, lesbian, disability advocate, musician, writer, and leukemia and stem transplant survivor based in Los Angeles. Their work focuses on liberation movements, medical apartheid, transformative justice, and disability justice. They spoke on the intersections of race, ethnicity, gender, and sexuality in relation to BLM protests.</p>	34.053776	-118.242898	0	2020-06-14	2020-06-14	f	2022-04-23	2022-04-23	90012	Los Angeles	CA	United States	200 N Spring St	1	\N	157
511	Diversity Collective- Ventura County	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">&nbsp;</p>\n<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">LGBTQ+ collective located in Ventura County that offers youth and education services, as well as HIV/AIDS testing, as well as creates social and community based events.</p>\n<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">&nbsp;</p>	33.840796	-116.546864	0	2022-04-23	2022-04-23	f	2022-04-23	2022-04-23	93003	Ventura	CA	United States	2471 Portola Road.Suite 100	2	157	157
512	Outspoken Men’s Group	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Outspoken Men's Group is a social &amp; personal growth group for LGBTQ+ men and their allies that meets every Thursday to discuss topics or issues that are prevalent to the Ventura County community.</p>\n<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">&nbsp;</p>	33.840795	-116.546864	0	2022-04-23	2022-04-23	f	2022-04-23	2022-04-23	93003	Ventura	CA	United States	2471 Portola Road.Suite 100	1	157	157
554	Graffix Test	<p>This is a test</p>	34.068049	-118.169197	0	2022-04-29	2022-04-29	f	2022-04-29	2022-04-29						1	117	117
561	First time kissing another girl	<p><span style="font-family: inherit; background-color: #ffffff; color: #050505; font-size: 14px; white-space: pre-wrap;">It was late 1999, and I had a huge crush on one of my closest friends and had zero idea what to do about it. Between a homophobic mother and living in a country that technically outlawed homosexual behaviour (although it absolutely happened on the DL, and if you had enough social status and money the authorities would look the other way), I tried hard to repress how I felt. </span></p>\n<div class="cxmmr5t8 oygrvhab hcukyx3x c1et5uql o9v6fnle ii04i59q" style="overflow-wrap: break-word; margin: 0.5em 0px 0px; white-space: pre-wrap; font-family: 'Segoe UI Historic', 'Segoe UI', Helvetica, Arial, sans-serif; color: #050505; font-size: 14px; background-color: #ffffff;">\n<div dir="auto" style="font-family: inherit;">One evening, when I was 17, hanging out with a large group of friends in front of a restaurant by the waterfront in Kuwait, I kissed that girl I had a crush on. I can't even remember the complete set of circumstances that led to that moment, or what happened after. I have a vague recollection of playing it off as Gals Being Pals, but it meant a lot more to me. It was a moment of affirmation- that kissing another girl was a positive and enjoyable experience for me.</div>\n</div>	29.273396	47.497947	0	1999-09-09	1999-09-09	f	2022-06-06	2022-06-06				Kuwait		1	179	179
1	Stonewall Riots	The Stonewall Riots occur, catalyzing a larger national, if not unified, movement for lesbian and gay equality. These spontaneous, violent demonstrations, sparked off by police oppression, were credited with kicking off the Gay Rights movement in the United States.\n\nOn June 28th of the following year, 1970, the first pride parade was held in New York City to commemorate the riots.\n\nAnd then everyone forgot about the role trans folk played in the riots, which is an elision from popular history that has not been forgotten by the trans community.\n\n\n\nSource: http://en.wikipedia.org/wiki/Stonewall_riots	40.733856	-74.002205	0	1969-06-28	\N	t	2014-06-29	2014-06-29	10014	New York City	New York	USA	53 Christopher Street	3	\N	\N
513	Free 2 be Me Foundation	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Free 2 be Me offers free counseling sessions for LGBTQ adults and youth in the Ventura County, specifically Trans individuals.</p>	33.840795	-116.546864	0	2022-04-23	2022-04-23	f	2022-04-23	2022-04-23	93003	Ventura	CA	United States	2186 Eastman Avenue, Suite 108	2	157	157
514	Families & Friends Living United in Diversity (FFLUID)	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">FFLUID offers monthly support meetings for LGBTQIA+ persons, their families, friends, and allies. The group focuses on serving people who are transgender, transitioning, or gender fluid, and have helped dozens of individuals and families who need friendship and support along their journeys.</p>	34.264344	-118.790385	0	2022-04-23	2022-04-23	f	2022-04-23	2022-04-23	93065	Simi Valley	CA	United States	370 Royal Ave	2	157	157
555	Billie Jean King	<p>Tenis champion, proud member of the LGBTQ+ community, and Cal State LA alumni</p>	34.066529	-118.168194	0	2022-04-29	2022-04-29	t	2022-04-29	2022-04-29						3	\N	117
501	Queer Hike LA	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Queer Hike LA is a group that promotes unity and safety for the LGBTQIA+ community in nature.&nbsp;</p>\n<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue'; min-height: 15px;">&nbsp;</p>\n<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Follow @queerhikela on Instagram for the next hike!</p>\n<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">&nbsp;</p>\n<div class="Uekwlc QzqPSc" style="caret-color: #000000; color: #000000; font-style: normal; font-variant-caps: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoration: none; font-size: 14px; clear: both; padding-top: 1px; display: block; font-weight: lighter !important;">\n<div class="pBr83e" style="margin-top: 15px; caret-color: #202124; color: #202124; font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-caps: normal; font-weight: 100; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: none;">&nbsp;</div>\n</div>	34.249690	-118.194136	0	2021-12-05	2021-12-10	f	2022-04-23	2022-04-23	91042	Los Angeles	CA	United States	701 Angeles Crest Hwy	1	157	157
518	Out of Mind Fest	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Motion Creative is a nonprofit organization that supports programming that encourages community-building and educational opportunities in entertainment for underserved communities. This event is cohosted with creators that help amplify voices LGBTQ+ and BIPOC creators.</p>	34.077707	-118.259737	0	2022-04-24	2022-04-24	f	2022-04-24	2022-04-24	90026	Los Angeles	CA	United States	1822 Sunset Blvd	1	157	157
519	Oracle Tavern	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Oracle Tavern, formerly known as &Ouml;R, is a community creative lounge that celebrates openness. It operates as a coffee shop during the day and hosts indie release parties, live comedy, and film screenings to support local creative and queer communities.</p>	34.069351	-118.228318	0	2022-04-24	2022-04-24	f	2022-04-24	2022-04-24	90012	Los Angeles	CA	United States	1640 N. Spring St.	1	157	157
520	Gay Astrology presents OUTER SPACE	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Gay Astrology is an inclusive LGBTQIA+ dance and nightclub that hosts events for the LGBTQIA+ community. They use Oracle Tavern to host OUTER SPACE, a safe working and socializing space for the queer community between 2-6pm.</p>	34.069351	-118.228318	0	2022-02-15	2022-02-15	f	2022-04-24	2022-04-24	90012	Los Angeles	CA	United States	1640 N. Spring St.	1	157	157
521	The LGBTQ Center- Long Beach	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">The LGBTQ Center Long Beach advances equity for LGBTQ people through culturally responsive advocacy, education, programs, and services.</p>	33.771780	-118.167156	0	2022-04-24	2022-04-24	f	2022-04-24	2022-04-24	90814	Long Beach	CA	United States	2017 East 4th Street	2	157	157
522	Long Beach Gay & Lesbian Chamber of Commerce	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">The Chamber was founded as the Long Beach Community Business Network in 1992 by a group of gay and lesbian business owners to serve as a networking and support organization for gay-owned and gay-friendly businesses within the greater Long Beach area. Since then, they have grown to include businesses from surrounding areas as well and changed their name in 2001 to the Long Beach Gay &amp; Lesbian Chamber of Commerce.</p>	33.847892	-118.167228	0	2022-04-24	2022-04-24	f	2022-04-24	2022-04-24	90815	Long Beach	CA	United States	2101 N Lakewood Blvd #670	2	\N	157
525	Paddy’s Ventura	<p><span style="font-family: 'Helvetica Neue'; font-size: 13px;">Paddy&rsquo;s is a popular bar and night club that is one of Ventura&rsquo;s only LGBT safe bar/nightclub.</span></p>	34.280666	-119.300923	0	2022-04-24	2022-04-24	f	2022-04-24	2022-04-24	93001	Ventura	CA	United States	2 W Main St	1	\N	157
516	Ventura County Public Health	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">The Center provides medical case management to HIV infected and affected people of Ventura County regardless of ability to pay, sexual orientation, documentation, ethnicity, gender, or religious convictions. We provide professional, confidential and culturally sensitive services in English and Spanish.</p>	34.276106	-119.253096	0	2022-04-23	2022-04-23	f	2022-04-23	2022-04-23	CA	Ventura	CA	United States	3147 Loma Vista Road	2	157	157
517	Coalition for Family Harmony	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Offers free, and confidential bilingual counseling sessions for LGBTQ adults and youth in the Ventura County and surrounding areas.</p>	34.211750	-119.194309	0	2022-04-23	2022-04-23	f	2022-04-23	2022-04-23	93030	Oxnard	CA	United States	1030 North Ventura Rd.	2	157	157
515	Pride Clinic- Santa Paula West Medical Group	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">The Pride Clinic at Santa Paula West Medical Group offers healthcare, counseling, and other miscellaneous resources for the LGBTQ+ community in the greater Santa Paula area.&nbsp;</p>	34.264344	-118.790385	0	2022-04-23	2022-04-23	f	2022-04-23	2022-04-23	93060	Ventura	CA	United States	254 W. Harvard Blvd. Ste. B	2	157	157
532	thank you for watching	<p>Thank you for watching our presentation</p>	34.066494	-118.167141	0	2022-04-26	2022-04-26	t	2022-04-26	2022-04-26	90032	los angeles	california	United States	5151 state university dr	1	126	126
523	Long Beach Pride	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Long Beach Pride&trade;, a 501(c)3 non-profit, is an all-volunteer organization that produces an annual three-day Long Beach Pride&trade; festival, parade and teen pride annually in May. The third largest Pride festival and parade in California, that celebrates the LGBTQ+ community with a focus on inclusion, and works to educate the wider community that diversity builds a stronger and healthier society.</p>	33.779347	-118.154681	0	2022-04-24	2022-04-24	f	2022-04-24	2022-04-24	90804	Long Beach	CA	United States	1017 Obispo Ave	3	157	157
524	First Long Beach Pride (1984)	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">First Long Beach Pride Festival since 1984. Currently serves every year in May and strives to teach future generations that the battle for acceptance continues.</p>	33.779347	-118.154681	0	1984-05-06	2022-04-24	f	2022-04-24	2022-04-24	90804	Long Beach	CA	United States	1017 Obispo Ave	3	157	157
526	Mi Centro LGBTQ+ Community Center	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Mi Centro LGBTQ+ Community Center is an extension of the Los Angeles LGBT Center, in Boyle Heights. It offers education and resources for members of the Boyle Heights community.</p>	34.039704	-118.223341	0	2022-04-24	2022-04-24	f	2022-04-24	2022-04-24	90033	Los Angeles	CA	United States	553 S Clarence St	2	\N	157
527	Latino Equity Alliance	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">The Latino Equality Alliance, is a project of Community Partners, that was founded in 2009. Their mission is to advocate for safety, equity and wellness for the Latinx Lesbian, Gay, Bisexual, Transgender, Queer+ community. They focus on building power through leadership development and academic success with LGBTQ+ youth and families.&nbsp;</p>	34.039704	-118.223341	0	2022-04-24	2022-04-24	f	2022-04-24	2022-04-24	90033	Los Angeles,	CA	United States	553 S Clarence St.	1	157	157
528	Somos Familia Valle	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">Somos Familia Valle is a local San Fernando Valley community organization led by trans queer people of color dedicated to support, empower, train, and mobilize our families for racial, gender, environmental, and economic justice.</p>	34.200993	-118.452181	0	2022-04-24	2022-04-24	f	2022-04-24	2022-04-24	91405	Van Nuys	CA	United States	14646 Sherman Way	2	157	157
507	HIV Testing- The Wall Las Memorias	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">The Wall Las Memorias&nbsp;provides client-centered testing services to populations at risk for HIV in Downtown Los Angeles.</p>	34.045121	-118.239154	0	2022-04-23	2022-04-23	f	2022-04-23	2022-04-23	90017	Los Angeles	CA	United States	800 W 6th St. Suite 750	2	157	157
556	The Arqive Year  (AR)	<p>The first iteration of AR for The Arqive</p>	34.067245	-118.168049	0	2022-04-29	2022-04-29	t	2022-04-29	2022-04-29						3	\N	117
529	San Fernando Valley LGBT Community Center	<p style="margin: 0px; font-stretch: normal; font-size: 13px; line-height: normal; font-family: 'Helvetica Neue';">The San Fernando Valley LGBT Community Center offers programs and services to the community including community events, social groups, education, career development opportunities and counseling.&nbsp;</p>	34.274572	-118.412755	0	2022-04-24	2022-04-24	f	2022-04-24	2022-04-24	91331	Pacoima	CA	United States	11243 Glenoaks Blvd	2	157	157
564	LGBTQ-owned vegan coffee shop!	<p>Wood Coffee Co. is an amazing queer-owned vegan coffee shop! They have amazing drinks and pastries, plus lots of community events!&nbsp;</p>\n<p><a href="https://www.woodcoffeeco.com/" target="_blank" rel="noopener">woodcoffeeco.com</a></p>	36.019523	14.238564	0	2022-09-15	2022-09-15	t	2022-09-15	2022-09-15	90804	Long Beach	CA		2728 E 10th St.	2	197	197
\.


--
-- Data for Name: pins_upvotestory; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.pins_upvotestory (id, upvote, "pinId_id", "upVoter_id") FROM stdin;
1	t	10	1
2	t	3	1
3	t	58	1
4	t	2	1
9	t	136	43
10	t	86	45
13	t	79	35
14	t	61	35
15	t	13	50
16	t	42	50
17	t	68	45
18	t	41	45
19	t	26	45
48	t	59	\N
49	t	13	\N
50	t	13	\N
51	t	13	\N
52	t	72	\N
53	t	51	\N
54	t	51	\N
55	t	51	\N
56	t	51	\N
57	t	51	\N
58	t	59	52
59	t	59	\N
60	t	138	52
61	t	138	\N
62	t	138	\N
63	t	137	52
65	t	100	52
70	t	58	52
74	t	72	52
75	t	73	\N
76	t	73	\N
77	t	73	\N
78	t	72	35
79	t	78	35
81	t	133	50
89	t	48	52
104	t	57	52
107	t	13	35
110	t	82	52
111	t	136	52
113	t	163	50
114	t	61	117
115	t	47	45
116	t	82	45
121	t	133	45
122	t	90	45
123	t	61	129
124	t	13	129
125	t	6	129
126	t	58	129
127	t	106	129
128	t	42	126
129	t	81	126
131	t	55	132
132	t	72	132
\.


--
-- Data for Name: rest_framework_api_key_apikey; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.rest_framework_api_key_apikey (id, created, name, revoked, expiry_date, hashed_key, prefix) FROM stdin;
4BqxMFdJ.pbkdf2_sha256$180000$qJwbY2XBVebd$xQ3KdfBbxXNh5RaAAM5yVg95TaaeyfOj6fVXnhNV93g=	2020-05-09 02:32:15.48718+00	arqive-key	f	\N	pbkdf2_sha256$180000$qJwbY2XBVebd$xQ3KdfBbxXNh5RaAAM5yVg95TaaeyfOj6fVXnhNV93g=	4BqxMFdJ
\.


--
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.users_user (id, password, last_login, is_superuser, is_staff, is_active, date_joined, first_name, last_name, username, email, is_moderator, is_administrator, is_anonymous_active, accessibility_mode_active, bio, is_profile_private, profileurl, image_url) FROM stdin;
27	pbkdf2_sha256$180000$m8RtGU9TIXdl$Pb6HMSiJXy98oloxBYMvhIuZH2TXs60BgopqfJGxzeo=	\N	f	f	t	2020-05-10 21:33:41.058425+00			NickOCHOA	lazerman615@gmail.com	f	f	f	f		f	\N	
17	pbkdf2_sha256$180000$Vp1MP4DLPhhW$Wou+9qzRe6GmeestFap4QPZmadd3LmBLIEW4sQiS82o=	\N	f	f	t	2020-05-08 21:43:11.848658+00			photo.enzo	svlc13@gmail.com	f	f	f	f		f	https://res.cloudinary.com/thearqive/image/upload/v1588974277/arqive/pnp6tnh8yqa4glz16i3d.jpg	
18	pbkdf2_sha256$180000$4EbCKoE2vgan$/g8z3y1B8dXWeglE/qdo639Gb5ALPnwGdm7AMDwmGpM=	\N	f	f	t	2020-05-08 22:05:28.672334+00			LocaLopez	minarocks10@yahoo.com	f	f	f	f		f	\N	
140	pbkdf2_sha256$180000$ewXHbQOZ1NH8$ACo+kbObLb4iOo8HwVuv6ALQfgm9OROJJfY3VrvaACU=	\N	f	f	t	2021-12-05 01:32:34.970819+00			Lovecraft69	shannon1283@gmail.com	f	f	f	f		f	\N	
22	pbkdf2_sha256$180000$HpZz6hXjf2p0$GyJM69Ws6wQ5L+V38mAODt5K+QP8EBv9Mry6TWR6qJQ=	\N	f	f	t	2020-05-09 05:42:36.468701+00			andyuaskin	andreale.1814@hotmail.com	f	f	t	f		f	\N	
10	pbkdf2_sha256$180000$cLaD57z3ViRt$fwmIZ3BPLh8VDFKSwn5aHSKWu7IgtTCuHLOd6VtiZnk=	\N	f	f	t	2020-05-08 19:44:30.20634+00			imapersona	prezastacy03@gmail.com	f	f	f	f		f	\N	
11	pbkdf2_sha256$180000$uoTaOAns1LuH$Mntir6M40Kag7Sgy1ywZzyrwDVsfLJhlIJlcZYB2Wls=	\N	f	f	t	2020-05-08 19:55:36.835659+00			Vitamindys	mindypelayo@gmail.com	f	f	f	f		f	\N	
12	pbkdf2_sha256$180000$1K8j5o5hRaSX$pO/2IuYuuPvFTmQmgV11CxLHtG/99eUR+YxqzEiGnYw=	\N	f	f	t	2020-05-08 19:59:57.520656+00			asthma	aliyahjohnson.1212@yahoo.com	f	f	f	f		f	https://res.cloudinary.com/thearqive/image/upload/v1588968336/arqive/kgi1l9dcgphuruiseq5q.jpg	
2	pbkdf2_sha256$180000$P65uRsJKXYTC$23+5NViK34BSUsE9T9P0DN6gJDFaJRhjXQuN/C/Jyso=	\N	f	f	t	2020-05-07 16:50:42.851301+00			godzilla	jhurley2@calstatela.edu	f	t	f	f		f	\N	
13	pbkdf2_sha256$180000$H26WlYBYTZsB$MWkeAm8+VdvE/6/w8AjEtiDZ4ayCmJmL54XuHP9vZMY=	\N	f	f	t	2020-05-08 20:21:53.37824+00			Emerylati	emilylatiniiscool@gmail.com	f	f	t	f		f	\N	
25	pbkdf2_sha256$180000$ClUNdgUgJVS4$v6o3O++on+EdoByqkK7pnHkasueVUGk+c1kkdFKvR/k=	\N	f	f	t	2020-05-09 17:55:42.199752+00			QueerSCV	QueerSCV@gmail.com	f	f	f	f		f	\N	
14	pbkdf2_sha256$180000$qMZRKJXltlxQ$kUvCIRhjW6pyPeKfyVlAC+JSPBCYoFx2TJyMYtIaOqg=	\N	f	f	t	2020-05-08 20:33:39.375205+00			maansishah76	maansishah76@yahoo.com	f	f	f	f		f	\N	
15	pbkdf2_sha256$180000$uUfSkT6Ldzga$qBB2Z8TF0UuNlZOHJHLYDSmiBB1J48v0XYCBrQJh25U=	\N	f	f	t	2020-05-08 20:41:59.570423+00			merissaxrissa	merissaguerrero@gmail.com	f	f	f	f		f	\N	
38	pbkdf2_sha256$180000$DQIVQOEMBcZI$wZQmG6eZwRu45BrcrRGEkg2iJXYz6h8s/q/mRz4qGyQ=	\N	f	f	t	2020-08-31 17:22:56.861294+00			richardcs	rssilvacruz@gmail.com	f	t	f	f		f	\N	
7	pbkdf2_sha256$180000$wB9WUM2mwD34$EmEUElczaMb08eIsE5ZiJLPLZB6cJVxWc8WZ14lKa38=	\N	f	f	t	2020-05-08 18:23:46.579665+00			Jordan11	5mackinnonz@gmail.com	f	f	f	f		f	\N	
8	pbkdf2_sha256$180000$3c14rmCFVIk9$YM5AxnGHjNwgsey+3ut9jkuYXCaHCNr0YF2gkBR7PRI=	\N	f	f	t	2020-05-08 18:35:26.36915+00			coinoperatedgrl	hfaraon@yahoo.com	f	f	f	f		f	\N	
23	pbkdf2_sha256$180000$9bb16bjJoxYr$0qCg2TBrWawn7rOSPyv708zzZ+kMd+lU/9T2TVytHHI=	\N	f	f	t	2020-05-09 06:03:27.963213+00			gab95lin	gab95lin@gmail.com	f	f	f	f		f	\N	
4	pbkdf2_sha256$180000$vqcDzQ7YMroE$TNlp9/TV7JsJsBBAvSybaCsMO2tZsyVSjSCp0zvLFKg=	\N	f	f	t	2020-05-08 05:11:53.956696+00			arqive_user115	justinewest14@gmail.com	f	t	t	f	I had a lot of fun helping with the development of The arqive!	f	https://res.cloudinary.com/dauntlessx/image/upload/v1588961401/Arqive/m65utjrsubqzxhldssgo.jpg	
19	pbkdf2_sha256$180000$6V3WLLBOjuDU$TdoZ9/xBlQ7AMzqlVSkcnl8Hk0rrgpxLF5cbAEPPu+c=	\N	f	f	t	2020-05-09 00:17:34.138225+00			Jaymeee	jay.com.yahoo@gmail.com	f	f	f	f		f	\N	
16	pbkdf2_sha256$180000$V68h1OJyumSZ$V8tPMEC4Y1LDvfK/9XlvX1XJ21J7UzKJnSOWuKo61n0=	\N	f	f	t	2020-05-08 20:52:24.897565+00			drc_luv	josephsumbu@yahoo.com	f	f	f	f		f	\N	
20	pbkdf2_sha256$180000$aBknbMbpJiif$JKtmwzHGD0fdMi0sLdUO2VYeJFmnWPuE8KorEyhccR0=	\N	f	f	t	2020-05-09 00:30:33.567005+00			asthhaaa	asthamshah@gmail.com	f	f	f	f		f	\N	
21	pbkdf2_sha256$180000$Zp6MABhoKLlo$9NXJ4AWYMO5nb5IGJBh5C29x0MdvVoIbkCTisYoT114=	\N	f	f	t	2020-05-09 01:38:58.111618+00			Oscar	leaf08@gmail.com	f	f	f	f		f	\N	
28	pbkdf2_sha256$180000$6PodFasayqN6$egdAckUk7TTyo4t+An9dXAvtXbVOVWG7iAfF4udw+eI=	\N	f	f	t	2020-05-12 00:11:59.349907+00			trobin18	rterrence50@yahoo.com	f	f	t	f		f	\N	
26	pbkdf2_sha256$180000$RyM6NZ6YYmoM$8A1lMsVNGU29SoPgciOf4gMHD2RhvD3/5PAWIW7qosI=	\N	f	f	t	2020-05-09 21:00:24.635175+00			StaciAdame	staciadame@yahoo.com	f	f	t	f		f	\N	
24	pbkdf2_sha256$180000$DgNwPDoGUaQI$f8fj5n54R6VTrVWEuryF7L0M6Gooi+OneKyMMxBcGKs=	\N	f	f	t	2020-05-09 17:21:05.02528+00			tragedy-mask	edanojohn@gmail.com	f	f	f	f		f	https://res.cloudinary.com/thearqive/image/upload/v1589044899/arqive/oqv3qevbdnydoee54pni.jpg	
29	pbkdf2_sha256$180000$E3hBiMjJt932$XhGfWJu+DT1MDCi3pVlx0Ow6W15LeA+n1EEAidehEoQ=	\N	f	f	t	2020-05-13 19:53:38.774012+00			Lulu	kittydisaster13@gmail.com	f	f	t	f		f	\N	
34	pbkdf2_sha256$180000$JvYHttVwoDtZ$/k3Slqel5Fqxk+CFZVM+k6aJzNKQ8YsARLAKwFt0AXg=	\N	f	f	t	2020-08-28 16:51:51.634822+00			nodnarb	nbrandonlee@gmail.com	f	t	f	f		f	\N	
5	pbkdf2_sha256$180000$tBEmRqxZj7FR$aWrOQgT+ynLq8jp/RrL2N33E+OZlFVNMzjmasEcQ3U0=	\N	f	f	t	2020-05-08 06:07:30.854045+00			haddad207	haddad207@gmail.com	f	f	f	f		f	https://res.cloudinary.com/dauntlessx/image/upload/v1588958942/Arqive/ktfujw4jvx9xkhgcdraq.jpg	
31	pbkdf2_sha256$180000$TPZwEqI33JQ0$cdIrPINr5ZQqS7vriJqBWNsxkNhpudhyQF3gnYebhN4=	\N	f	f	t	2020-08-28 16:47:18.895255+00			imAbram	flores575896@gmail.com	f	t	f	f		f	\N	
137	pbkdf2_sha256$180000$klkyEWn4pkth$2NsRX70IRfEtEZTHoIbjTcNmao5p3GOfn4KUO2z7TZA=	\N	f	f	t	2021-11-16 16:37:08.215387+00			test_account	testemail4@yahoo.com	f	f	f	f		f	\N	
39	pbkdf2_sha256$180000$0TRAdGYe2YIa$XNvxKQQtJRsTCMNWefLpi+88hmcbAyPmHbsqBPBdQEE=	\N	f	f	t	2020-09-10 05:56:17.914078+00			frankie01	wlowdxovugfzuolhfn@etochq.com	f	f	f	f		f	\N	
32	pbkdf2_sha256$180000$tz3nWN9uYPwB$FU5ardwMlETyUAfn3UnA3zzasE3b0d2detcPqixa+rc=	\N	f	f	t	2020-08-28 16:47:41.833428+00			RandomAccess	aruman@sbcglobal.net	f	t	f	f		f	\N	
141	pbkdf2_sha256$180000$xZs5UKURUTU6$0/2YG+xqPU2N/xx/Vcv6TDPco2n6/kAAWWlEc2pLxL8=	\N	f	f	t	2022-01-10 07:35:32.487261+00			pope	qwertyuioppope02@gmail.com	f	f	f	f		f	\N	
1	pbkdf2_sha256$180000$tIEKtynLdSwp$Ef8Imo/eZvhwmFR3Q4f8town30IXEUza78FwOkN8I6E=	\N	f	f	t	2020-05-07 04:04:19.530249+00			nate	xzetadevelopment@gmail.com	f	t	f	f		f	https://res.cloudinary.com/dauntlessx/image/upload/v1588966573/Arqive/zwcvcmxv0jqvxp76sm9y.jpg	
35	pbkdf2_sha256$180000$oWg6SVfbcQhG$bsMoKetTEGU1vRCRX0Q18P7NAuZam+nGS0ohbijjq7U=	\N	f	f	t	2020-08-28 17:23:44.999256+00			cpahed	cpahed@calstatela.edu	f	t	f	f	A senior at Cal State LA working on The arqive mobile app.	f	https://res.cloudinary.com/thearqive/image/upload/v1614811055/arqive/adrqcbwpqe0nvcjzzjmj.jpg	
36	pbkdf2_sha256$180000$gwubwhU5BulT$IZ1jU2oMKByhAISJznF7wHzIVzq4gM9hhIl8jkhh6/s=	\N	f	f	t	2020-08-31 03:08:24.99512+00			CanDee	candynewtown83@yahoo.com	f	t	f	f		f	\N	
37	pbkdf2_sha256$180000$WeHZRGgjAxF7$gLn+91DLBYxOoocLu8bFWy7k2as+DaoEL8b+FClVEe4=	\N	f	f	t	2020-08-31 04:10:08.082571+00			candeestore	candeestore@gmail.com	f	t	t	f		f	\N	
116	pbkdf2_sha256$180000$eOXrE1JKzfcN$FpFdjl30LAaUAI5V9GCFAz0daKE49OkHIgZw69q/X+U=	\N	f	f	t	2021-09-09 04:39:38.152021+00			dsdsd	leaveitasblank@gmail.com	f	f	f	f		f	\N	
112	pbkdf2_sha256$180000$7tjR5ApAaLi4$Dv99nF7mIj9xMiUjQ88qENI1oEHHvOGxJcWFERta4LA=	\N	f	f	t	2021-09-09 03:54:57.794619+00			jfg00	fermin_gonzalez93@yahoo.com	f	f	f	f	WIP	t	\N	
47	pbkdf2_sha256$180000$NnWF1k8wAZ6H$0nsfqj3yPgioWSzbmwL1rn0b8BC+zpIoUdfpsGCaYZc=	\N	f	f	t	2020-10-19 20:25:09.792054+00			Frankie04	xtnscfrnhziddhknob@kiabws.online	f	f	f	f	Yasss Queen by night, lipstick lover by day. \n"You are beautiful"	f	\N	
138	pbkdf2_sha256$180000$3mioK5lqSvY3$g4dvSUZ07qjlzAdRW3YkktalvYNc40S5KytKfZB89J8=	\N	f	f	t	2021-11-17 00:18:39.994238+00			Ashley	harryhodson10@icloud.com	f	f	f	f		f	\N	
53	pbkdf2_sha256$180000$xvxibgzJTFro$RJ1wrkQRoJoR2MSmKvZ+JYWIdrThlccyrmFqpu3iOuU=	\N	f	f	t	2020-12-03 08:42:44.905391+00			rottenteeth	bdsqxclbuhdqszmcgm@mhzayt.online	f	f	f	f		f	\N	
142	pbkdf2_sha256$180000$KS1LORXgF2J8$N5uFntzMuop1LK2oaCx8GpnL7TIr2DTCbLh67VmH/7I=	\N	f	f	t	2022-01-20 01:03:51.97361+00			am0000	abbymccarthy5@gmail.com	f	f	f	f		f	\N	
107	pbkdf2_sha256$180000$Hdi87iEaTlC8$yQaTMnxQfRodHBq9gG/Jv26NfyFpy+uHXAwucNil2Hc=	\N	f	f	t	2021-05-25 02:49:01.391046+00			itang	irenettang@gmail.com	f	f	f	f		f	\N	
144	pbkdf2_sha256$180000$vRA3XoLxa4ye$eWVWRXDNbrZbC3PpY8wfAnSmaac7fmzfCtju7XO+wjI=	\N	f	f	t	2022-01-24 01:22:13.088196+00			xenithian	fruitylesbian45@yahoo.com	f	f	f	f		f	\N	
41	pbkdf2_sha256$180000$ukgEYJjl0G84$2LHMKIImLvK4Q2SY9CG355qfGLBYoZnfnO6M4b9GWl0=	\N	f	f	t	2020-09-15 05:26:22.420178+00			galaxt	carloslariossolis@gmail.com	f	f	f	f	A CSULA student	f	https://res.cloudinary.com/thearqive/image/upload/v1600147632/arqive/gj71nyipnnz7ebdhpm4b.jpg	
101	pbkdf2_sha256$180000$A7vTaImmqhot$n9mky2fz+b9r8YdtZt/ui+VWgVj9oNkyLiTjfvVCAkw=	\N	f	f	t	2021-04-21 21:17:58.231128+00			cassie_p	casandrapahed@gmail.com	f	f	f	f		f	\N	
150	pbkdf2_sha256$180000$oWZ0zYRUFWqN$Vodxu3G9e/W6K1RstWM0mqHqrW+erKhjBzWVTd+QTCE=	\N	f	f	t	2022-03-15 00:56:45.115402+00			Turfhead	wessly.scamander@gmail.com	f	f	f	f		f	\N	
43	pbkdf2_sha256$180000$KMGiBEPVGcGr$kZJIFEV6fvKn9+TzD1aMk0TlLKva3ym/PraUzfILDZw=	\N	f	f	t	2020-09-28 06:36:12.51216+00			Frankie02	tgdfkythsfozpnwtjt@miucce.online	f	f	f	f		f	\N	
152	pbkdf2_sha256$180000$CUdFja5bnCqB$3S+FY8Ll7rZFZnVTfDEUKSxBNePrqMu9LlrCRvBakUU=	\N	f	f	t	2022-03-16 21:36:38.635687+00			anonymousash	timothyfelten@icloud.com	f	f	f	f		f	\N	
154	pbkdf2_sha256$180000$xJnAIKaBGcYv$0TrJN4O8/uq0Cf6dHlxMtE68nDB/TeEk9FwWEpSDuhE=	\N	f	f	t	2022-03-16 23:13:18.795624+00			ursapphicdad	lovelyskvlls@gmail.com	f	f	f	f		f	\N	
156	pbkdf2_sha256$180000$7kxdnBEOUPOZ$vZsfl3kYgwKCBK3SHX90brxs+WON7JPAOs18u+7+jyc=	\N	f	f	t	2022-03-17 12:24:57.961806+00			gmeds12	gavin.medsker@yahoo.com	f	f	f	f		f	\N	
44	pbkdf2_sha256$180000$1taaiuXe6Q9A$Txh90T35D1nQrGz7NJF/1DkqUtF6alktgT8UFurBxsg=	\N	f	f	t	2020-10-05 07:11:15.232982+00			frankie03	zssdkjvaywtdtwxxcs@mhzayt.com	f	f	t	f		f	\N	
148	pbkdf2_sha256$180000$TxhiI4MxsJb3$vPYs1DW279VYSZbzCyBccmXB7c/ps+2lbsyoGEZjxEw=	\N	f	f	t	2022-03-14 16:26:45.634453+00			sapphosbutch	broadway_baby@att.net	f	f	f	f		f	\N	
158	pbkdf2_sha256$180000$5ZKoJauS2Kuk$LXcVOIQJkPaKSC8aSSCgYnVETz6xZQXpgG0glVBy4R4=	\N	f	f	t	2022-03-19 07:12:11.323902+00			dapplegrapple	Baileylis12345@gmail.com	f	f	f	f		f	\N	
46	pbkdf2_sha256$180000$O6FV5Nnt1S0H$jIg4VgtsnLeMsFOkW56S22mBo2COIt8vldOta4p63PQ=	\N	f	f	t	2020-10-06 10:22:29.539918+00			frankie04	lsoyzfphwvmadslxyj@niwghx.online	f	f	f	f		f	\N	
54	pbkdf2_sha256$180000$aBQsxLTdKr4R$sINdLT7eyuhQfu7TI+tdR3PSP234X89hskXPry4XBkY=	\N	f	f	t	2020-12-23 03:45:05.783368+00			Rong Liew	rong.liew@showwcase.com	f	f	f	f		f	\N	
48	pbkdf2_sha256$180000$aSLmaIVoGkb5$mIcvJymh63CRhwlkcPJPlHkVTeeE7n1ZtgV5r6Sm0C0=	\N	f	f	t	2020-10-21 18:20:48.60672+00			arthur	arthur@gmail.com	f	f	f	f		f	\N	
55	pbkdf2_sha256$180000$DKNGLkWuZUAb$ew4r6ZUEnJEMVgZr36gXA6Y3Pc759sdFXEBQ9yph/6o=	\N	f	f	t	2021-01-01 23:34:22.05949+00			KittyTsundere	runningnerdtroll@gmail.com	f	f	f	f		f	\N	
104	pbkdf2_sha256$180000$bepXBbtNjVRX$AiJ8wfptcu1y5TFgj6vrdTSc8lU+sGSt4B8dhkH0CG4=	\N	f	f	t	2021-05-15 18:55:45.671498+00			bobafran	francheskabautista4@gmail.com	f	f	f	f		f	\N	
49	pbkdf2_sha256$180000$Eexx01UJtq2e$+n9Z9J93PXfRjfV/o6/RcxIZeMtaiYzYqg5u1vjxl9M=	\N	f	f	t	2020-10-23 11:57:23.21689+00			mondax	mondax427@gmail.com	f	f	t	f		f	\N	
42	pbkdf2_sha256$180000$fjGglFRe53ro$0FrAgRXu/kLtib6+F8dMmSSlEHbKvr81th9xxXH2k6w=	\N	f	f	t	2020-09-16 23:49:14.925056+00			angleKH	khanghle@tutanota.de	f	t	t	f		f	\N	
160	pbkdf2_sha256$180000$Mkn1OORi1Ahr$eaEtWOr0K55r+KrDpE2f5eP2Lzm66R8zcyohfrfGzAU=	\N	f	f	t	2022-03-20 04:54:08.166118+00			user113	Haileyjrocker@gmail.com	f	f	f	f		f	\N	
162	pbkdf2_sha256$180000$fKyqRUr612qs$bS6s3Ve4Bd4Fwn8DLRBmU/G6+NS6QFZB89Wa79pYQ7k=	\N	f	f	t	2022-03-21 02:51:09.106001+00			biwitchking	othellosteele@gmail.com	f	f	f	f		f	\N	
164	pbkdf2_sha256$180000$g3gbiy2VMT7Q$tLvf2VyrB6lN7btA5BZrxF9Im5muCUOOzMs3y12SSXE=	\N	f	f	t	2022-03-25 05:32:53.982841+00			smith	burikinawave@gmail.com	f	f	f	f		f	\N	
94	pbkdf2_sha256$180000$3xCFdHL7K7Tb$XDYTPVHTeWt12w9K4TPfr/ld+Js8+8HTQxzpMtCt42Y=	\N	f	f	t	2021-03-06 17:57:15.984963+00			pennyplum	penny@pennykatz.com	f	f	f	f		f	\N	
65	pbkdf2_sha256$180000$P0bBolRzocZG$sSr9zdgjbtk0ZZEwr+MDAvY4/Wgnm1keb71DpUAKq6k=	\N	f	f	t	2021-01-23 02:14:05.313502+00			RandomAccess64	rarruda@calstatela.edu	f	t	f	f		f	\N	
52	pbkdf2_sha256$180000$EQPyh427roAd$gyZLbt+j6LiOdl53aDLWEic/80pUbhEseSFJEO+Lc34=	\N	f	f	t	2020-12-03 03:25:32.45822+00			clarios6	redstercarlos@gmail.com	f	t	f	f	Hi, my name is Carlos and I'm a developer for The arqive!	f	https://res.cloudinary.com/thearqive/image/upload/v1620927510/arqive/tqeepmrm6viiebrysghp.jpg	
105	pbkdf2_sha256$180000$gUtsVL4PWlRV$j/TxWKuHlEnvg5SEpDcAozjAK68x9ab+TMUYxKyiGGw=	\N	f	f	t	2021-05-16 00:10:03.785592+00			clarios8	carloslariossolis@cls.sh	f	f	f	f		f	\N	
103	pbkdf2_sha256$180000$dUfHG9e7ge6V$IlYTb1Hl0+eKgEJpUmjD9aS/w+jweMRdfvzMJAP1+iQ=	\N	f	f	t	2021-05-07 17:37:24.570596+00			clarios7	carloslariossolis@cls.com	f	f	f	f		t	https://res.cloudinary.com/thearqive/image/upload/v1620927910/arqive/sl3v7occbt4twvhz1dmf.jpg	
102	pbkdf2_sha256$180000$cQHjX0NB55Lb$C0YuZKisiruJ6X7Gqj5XJi8tqSRyZboLdaau91cVlAM=	\N	f	f	t	2021-04-26 17:41:45.484237+00			meliaahh	meliagarcia@ymail.com	f	f	f	f	+ ode to sleep	f	\N	
50	pbkdf2_sha256$180000$Pb4v3qaLsXjy$Fyo98URI+z52KjA6YOM7ywHpcOIjEvYLDokyXeeiw1g=	\N	f	f	t	2020-11-02 21:59:14.835408+00			TedsCanDee	fcgiwyrslxigbjsvtr@upived.com	f	f	f	f	Did you know	f	https://res.cloudinary.com/thearqive/image/upload/v1607498310/arqive/yuj7qxkixlprkaqxxtua.jpg	
33	pbkdf2_sha256$180000$u4ibbu0hjLj6$4R0VgR3dpBQehIo8FrdYtnbv7k00R4sZtM0F20H4DTM=	\N	f	f	t	2020-08-28 16:50:02.952822+00			eRamRod	red0marshmallow@gmail.com	f	t	f	f		f	https://res.cloudinary.com/thearqive/image/upload/v1621123158/arqive/qc8xcpmo8k8sqzuia4lt.jpg	
40	pbkdf2_sha256$180000$T2T7R8qXYAaE$VFk/7qdfxnM8EH19L8s4KMXuOnt0t6yClZh/bad037U=	\N	f	f	t	2020-09-15 00:26:20.67419+00			Carterb	bala.carter@gmail.com	f	t	f	f	Hi there. I'm Carter one of The ArQive developers at CSULA	f	https://res.cloudinary.com/thearqive/image/upload/v1600129674/arqive/jk922yrtcoaqvtifxc0r.jpg	
51	pbkdf2_sha256$180000$uftrraIaBOiu$CVbK/c5jG04EfNcK7U7/asXWJd8HkY362FtVg+ZScUQ=	\N	f	f	t	2020-11-29 22:50:55.590682+00			testbala	balacarter@gmail.com	f	f	f	f		f	\N	
106	pbkdf2_sha256$180000$ZGvx2Rupviua$Y9krfcyq9rNNQAapVFgPw5rGB6SgB4DEPdS9/T5nrWk=	\N	f	f	t	2021-05-18 01:07:29.257004+00			MyViet	myviet@csu.fullerton.edu	f	f	f	f		f	\N	
108	pbkdf2_sha256$180000$fazrZLQh0STX$LsM1UXOquGKW71drs8UvdbVZTINh9KrEZ1AmSK1rUys=	\N	f	f	t	2021-06-11 15:41:57.601592+00			diapason	serlinpitaway@gmail.com	f	f	f	f		f	\N	
109	pbkdf2_sha256$180000$qiKPuVe0wMly$KXX+1XXW70YvrR5nk0rvoqfPrFLakCL5rf4fhU/1Z0s=	\N	f	f	t	2021-06-29 08:25:29.577315+00			Dister01	ultragunner20@gmail.com	f	f	f	f		f	\N	
161	pbkdf2_sha256$180000$heXgcJCQwGZY$hN8mn8Gsyl1g11Ov1ih0x03UMQBUcx97FU9N1o61wTE=	\N	f	f	t	2022-03-21 01:14:03.93179+00			o-dear-im-queer	efauvinen@gmail.com	f	f	f	f		f	\N	
129	pbkdf2_sha256$180000$wpp79A9Ke2uv$83etdTyK9gcEi/iF2mxwdw1tFlytoa7afXQrFL3o5bk=	\N	f	f	t	2021-09-21 01:30:05.424369+00			tsunnie	esantos2@calstatela.edu	f	t	t	f	Year 3!	t	https://res.cloudinary.com/thearqive/image/upload/v1637445560/arqive/qkhxmwktely0igdhn4un.jpg	
118	pbkdf2_sha256$180000$flOatY8jL4mT$f1ZMcsnOEyMeUW2Vy/+dEJVry8PxGqlb/cGjG8yjWRQ=	\N	f	f	t	2021-09-09 04:41:00.302042+00			bsosa	bsosa09@yahoo.com	f	f	f	f		f	\N	
134	pbkdf2_sha256$180000$tt9PBe2Vt5TK$UjEw5VLRsq9IOkpT2Ey7JTMMhQyZANRz+2jYb+x5fFs=	\N	f	f	t	2021-09-28 00:42:26.926414+00			erizilla	ericapyn@ymail.com	f	t	f	f		t	https://res.cloudinary.com/thearqive/image/upload/v1637048643/arqive/iw0jnfohmfpcwhc5qzsp.png	
168	pbkdf2_sha256$180000$A41dwNldjiiO$aEn4c8WvBJLgyMfoj/ImTkNLRWVqpjpx/Yd10z8SNGM=	\N	f	f	t	2022-04-09 09:40:21.830928+00			girlbender	brookejohnson149@gmail.com	f	f	f	f		f	\N	
169	pbkdf2_sha256$180000$rpngMSWLT9NZ$osBXhOqLXfJw8nmzuOv+fC7z1XFUAgyfpVJP0IZEa9M=	\N	f	f	t	2022-04-15 01:57:52.89618+00			neu	maxramper@gmail.com	f	f	f	f		f	\N	
176	pbkdf2_sha256$180000$vR08kts4MSPu$uM3mshCfSJ4fgKOvibsaCLsAE2vxGc9FQdSGjn8cRBQ=	\N	f	f	t	2022-05-27 00:06:26.937636+00			anniecvc	anniecvc@gmail	f	f	f	f		f	\N	
143	pbkdf2_sha256$180000$9Av4BUWzGcFi$r1wSAGi3fq4cV8fZeMsXoH77nDamD4GE7z8DdcKsQLM=	\N	f	f	t	2022-01-20 01:05:27.228759+00			sailormoon	biiirdqueen@gmail.com	f	f	f	f		f	\N	
145	pbkdf2_sha256$180000$tYDkaqTvucFU$RDwoDMo1gm03piwpdaCtmL1+CeSnx93WyLUkj6i6F8Q=	\N	f	f	t	2022-01-27 14:44:24.782168+00			somonewhosntgay	tyhk30@gmail.com	f	f	f	f		f	\N	
133	pbkdf2_sha256$180000$QyYlnBlnQnpt$0Cm+JiHU91TqFJm2DBsWdMg0Ftps9SSJsCqa8Orhu+A=	\N	f	f	t	2021-09-28 00:41:07.834826+00			kevk18	kkaz0518@gmail.com	f	t	f	f		f	\N	
177	pbkdf2_sha256$180000$E6ItH26RsNpe$84iLwlx+AFQWWtOeUdKZZk3mYhUjmhYK9SV8+c3O7I0=	\N	f	f	t	2022-05-29 08:11:29.93718+00			lesbiangirl	kiramaynard02@gmail.com	f	f	f	f		f	\N	
172	pbkdf2_sha256$180000$ISl2Iqa5Xnzi$nZ//p91p1rFKBsg7w5ZOX9ICO8TCNzDz6lcfbewYEsM=	\N	f	f	t	2022-04-27 20:54:09.493716+00			Stewart Mckenzie	stewart.develops@gmail.com	f	f	f	f		f	\N	
163	pbkdf2_sha256$180000$oyA2Lz2yGhJ9$JKOLeBnAepnN3A/qd8U2GtwNklywG9vO7xQyllVzuNw=	\N	f	f	t	2022-03-24 14:18:10.605743+00			john	GPT1MNL2022@gmail.com	f	f	f	f		f	\N	
117	pbkdf2_sha256$180000$Ts7ORC0Qt5zd$NgQ0H1qa0+2/CcEjqShHwkYCqXDNB2lVap/tU8f7p3w=	\N	f	f	t	2021-09-09 04:40:46.858039+00			Stewart Test	mckenzie.stewart.e@gmail.com	f	t	t	f		f	\N	
115	pbkdf2_sha256$180000$DN84jz03LvQj$6L10yxBH7T3w//BqlXST7vTobUdu4Qa4q6wTDRn0P3Q=	\N	f	f	t	2021-09-09 04:25:39.43118+00			topaz_4602	mfrias@calstatela.edu	f	t	f	f		f	https://res.cloudinary.com/thearqive/image/upload/v1638424968/arqive/wqfrfbcytdbgwis9wmez.png	
157	pbkdf2_sha256$180000$Ps34xra5YEg3$IE5sMugTSc5Hhbo09jRol93IaQvHfHxfoEw1P6VUNHw=	\N	f	f	t	2022-03-18 22:41:37.050101+00			chom	slarios28@gmail.com	f	f	f	f	Inclusive and intersectional queer advocate	f	\N	
45	pbkdf2_sha256$180000$EDRCgOIvqd2r$fH1rxnStz252D3xCvIVKjnB/h56eIuiIBJ9E8eMmLwg=	\N	f	f	t	2020-10-06 00:28:55.979451+00			attachary	zvernon@calstatela.edu	f	t	t	f	Teacher, designer, storyteller. He/him/his. Gay/queer.	t	https://res.cloudinary.com/thearqive/image/upload/v1601944332/arqive/oigsqivqkvbtfd71kuvm.jpg	
170	pbkdf2_sha256$180000$v8Go1n1DSjdo$JEmOEApCgaCU7DhN3R2yGTj3/8ul9mo9oU0R2Sk1ZNQ=	\N	f	f	t	2022-04-17 19:31:23.741036+00			jayden	kiraangelotti614@gmail.com	f	f	f	f		f	\N	
131	pbkdf2_sha256$180000$sTGbsTwFxZJk$NE+yO3ywiufZmDqmTScUm5qxTY70h/zsfeVQxwWXJIo=	\N	f	f	t	2021-09-27 05:46:12.067879+00			qwertyuiop	evences4@calstatela.edu	f	t	f	f		f	\N	
135	pbkdf2_sha256$180000$3rDCMRpP208B$7SPQYUBeYBZXpyeR28g1w3YS+AHCTZtHGMKD20soJXo=	\N	f	f	t	2021-09-28 20:23:43.944143+00			pattieshmayo	pattie.shmayo@gmail.com	f	f	f	f		f	\N	
165	pbkdf2_sha256$180000$QkaPdxURIHNU$8XdPdSc4VmHf/Xf+Yz8D4uLOCq+/jknWuxUNz0LrFJQ=	\N	f	f	t	2022-03-29 05:00:03.525421+00			crom	evro.amazing@gmail.com	f	f	f	f		f	\N	
166	pbkdf2_sha256$180000$xTrs66VMvIdT$KmijuPv/QVpr38CN4/eZ3ne/qaE0mmcCY43glds7KOc=	\N	f	f	t	2022-03-29 23:11:15.10312+00			perasperadastra	sevyverberg@gmail.com	f	f	f	f		f	\N	
126	pbkdf2_sha256$180000$WBdpbZsZkzs7$3u8gtiVql2xh3t1QtchwTuuokaB7oEJNyNd2m+/r8jw=	\N	f	f	t	2021-09-16 04:59:09.394008+00			bsosa4	bsosa4@yahoo.com	f	t	f	f		t	https://res.cloudinary.com/thearqive/image/upload/v1650051400/arqive/jihty1m6laigq5krxfla.jpg	
167	pbkdf2_sha256$180000$df52vkVXXiHT$U3Jzf72LbIN4HXc1bZf/DBUvUmxe8wP/xm7YuLVYkdc=	\N	f	f	t	2022-03-31 04:33:20.131801+00			asherrain	astralasher@gmail.com	f	f	f	f		f	\N	
132	pbkdf2_sha256$180000$JFP8QOA2Z9aU$cuyRcmZ97j1QlB+NGODeNcPStpm+XlPvbKX83EKuxDY=	\N	f	f	t	2021-09-28 00:38:49.407212+00			dlee105	dlee105@calstatela.edu	f	t	t	f		t	\N	
147	pbkdf2_sha256$180000$SHUFDe2brOEZ$NYlVNm3xiPXJuBW3ZV3VW+fZT8+HMsDZV1qgoBhkPj4=	\N	f	f	t	2022-03-14 16:11:03.713227+00			nonbinarymamas	pilkey10@gmail.com	f	f	f	f		f	\N	
149	pbkdf2_sha256$180000$BzeOyFUBQrbk$Y9wH/TjSQ9X8G8QySL2D+WBmVmwTUj2yKDmQmkMNh8s=	\N	f	f	t	2022-03-15 00:55:51.13775+00			uhohitsme	lumenlugoroman@gmail.com	f	f	f	f		f	\N	
139	pbkdf2_sha256$180000$fBMAFGlbVZ69$A/FAA8rHlMJn50YDlapKsSY0t+16hpTOFkXG3f0qIV8=	\N	f	f	t	2021-12-03 03:53:03.379539+00			ForgotEmail	smckenz2@calstatela.edu	f	f	f	f		f	\N	
171	pbkdf2_sha256$180000$d19pPy9aq82T$CSjbODkgq7AxRvL/3rT0Ui7HtqOTN90l+OsxO1FmoKU=	\N	f	f	t	2022-04-18 05:13:25.658041+00			aaronhaley	finchhashworth@gmail.com	f	f	f	f		f	\N	
136	pbkdf2_sha256$180000$lV9rMfDUzwvd$Zz9t+xwt5t2SMOYngaajFs8auhjSljYtNLviaEcoGS8=	\N	f	f	t	2021-10-04 06:54:28.918128+00			august81	erinmw51@gmail.com	f	f	f	f		t	\N	
151	pbkdf2_sha256$180000$kfYYE7aXFVJs$0YZi28LoK3LBw1B9H6lotD75eNoSynS7Adv3+zmboto=	\N	f	f	t	2022-03-15 04:13:58.261373+00			daisiesforyou	queerjeremy778@gmail.com	f	f	f	f		t	\N	
155	pbkdf2_sha256$180000$ETYcP8arQIMB$K9k3a/xfUk5PVmE6PkZPsHkb5VEf1DP8jlYTB47LoxM=	\N	f	f	t	2022-03-17 02:45:53.722719+00			foxankles	jdwyble1@gmail.com	f	f	f	f		f	\N	
159	pbkdf2_sha256$180000$kWvmsnKnYdKW$wGiW47sk2sg0PEVH5bkC93c8hmbTl6A+/RM9KVGItSg=	\N	f	f	t	2022-03-20 04:51:46.074209+00			lovergirl	haileyjrocker@gmail.com	f	f	f	f		f	\N	
125	pbkdf2_sha256$180000$HkflvKztuexj$Udh2irQ4CvzwDkru1tL0yUYAFqlsSz0v79Ot6Cr7UnE=	\N	f	f	t	2021-09-16 04:26:04.719651+00			lesliems	lesliesegovia1030@gmail.com	f	t	t	f		f	\N	
128	pbkdf2_sha256$180000$4xS0U58gefBN$640zMziC5ZEXLyD12zWKb5PQS+PF+LISiAkV9Us9SfM=	\N	f	f	t	2021-09-17 18:48:58.216035+00			jfg93	Fermingonzalez43@yahoo.com	f	t	f	f		f	\N	
175	pbkdf2_sha256$180000$r91Bp6WrF952$PBpi6dx3vuHDNgcRtTdWyU17qwEMgM7gNNTzkfHLNxE=	\N	f	f	t	2022-05-25 18:20:25.209899+00			mjuanjo	mpizarr@calstatela.edu	f	f	f	f		f	\N	
178	pbkdf2_sha256$180000$TAbpyBbnjQhB$Jo38AYTTbfLvckfE1fgjvZuLFLKnB7byyjRFyS1xmRo=	\N	f	f	t	2022-06-03 01:58:39.900991+00			usernametest	fmjrnpnjiekrwiqlxa@bvhrs.com	f	f	f	f		f	\N	
179	pbkdf2_sha256$180000$H2FFmYefQ90h$lVXCj04W2pf2X2a8lUzfggblqH5rB7clHOU5W0I382s=	\N	f	f	t	2022-06-06 18:03:53.339869+00			Artemis	melinacassidy@gmail.com	f	f	f	f		f	\N	
180	pbkdf2_sha256$180000$CwxDGiyslLI7$Wz156H2T8/6BuShI66Eqwtne8OJf7sdScNIGoCHvLyM=	\N	f	f	t	2022-06-07 04:10:30.814451+00			juliamb	bonnetj13@gmail.com	f	f	f	f		f	\N	
181	pbkdf2_sha256$180000$LZf8ge5Fwyvx$S3zjDKWeIaKN2tV28dRYAU5+78HBS5yusOXmCiTNuWg=	\N	f	f	t	2022-06-10 15:27:28.071936+00			peny AD	penyarum3939@gmail.com	f	f	f	f		f	\N	
183	pbkdf2_sha256$180000$FFBMkqk9q8GE$oEMM1i4OtjhA9USzUkWg3NciFW1YkHvTrznZ/nEjeZ4=	\N	f	f	t	2022-06-23 13:04:45.060659+00			novitiate2017	juliughhhh@gmail.com	f	f	f	f		f	\N	
184	pbkdf2_sha256$180000$KIE26fC69jq1$uUQZeS0mG8KS7K/WZ9P17kjVtYNgHnQhQSP0UxJfy3k=	\N	f	f	t	2022-06-27 06:11:01.562466+00			cat ap	catleya@mac.com	f	f	f	f		f	\N	
203	pbkdf2_sha256$180000$yp5TX72QZwuy$S3rq3zgZHqFuVOPLcKi0R4UmW0Pngy3aGPDgP3bNZY0=	\N	f	f	t	2022-09-20 05:14:40.875611+00			foomatic	afuniestas@gmail.com	f	f	f	f		f	\N	
185	pbkdf2_sha256$180000$Y4IkUhFZE1Pi$MT0Qf0Dmm66/YEpo9Flzo00PuHadNM9CVeBhVdwefb0=	\N	f	f	t	2022-06-30 10:55:30.676456+00			Tay Ho Trish	tfurman1978@gmail.com	f	f	f	f		f	\N	
204	pbkdf2_sha256$180000$XC25p4gJ1YfG$j1cmJCfwKL6qsYLRCMC97zroLq/CYAMDChv62+MKvnI=	\N	f	f	t	2022-09-20 23:40:18.835194+00			kennardlim1220	kennardlim1220@gmail.com	f	f	t	f		f	\N	
186	pbkdf2_sha256$180000$WkoaZfMC5MN6$CtU6WWl2ovJnkzEUCyUyEJXyddtRjCguEZmUaVvZ8Oc=	\N	f	f	t	2022-06-30 14:53:08.213474+00			zillmiracle	thezellerintheceller@gmail.com	f	f	f	f		f	\N	
187	pbkdf2_sha256$180000$nL2IjB2WkTh0$LU4E7LmCJ/qg0T+uIloj8NwJHxKiN/0EXPOaR7RCioA=	\N	f	f	t	2022-07-07 01:48:19.824522+00			eltut MP	abdoelkady345@gmail.com	f	f	f	f		f	\N	
188	pbkdf2_sha256$180000$t1pcJBPlWcyY$6hdPrGrBYIFgBAj3Q4izuVv0J4sUvV3TXJPdL88/Kso=	\N	f	f	t	2022-07-12 23:19:32.124126+00			sammie	samantha_buntin@yahoo.com	f	f	f	f		f	\N	
189	pbkdf2_sha256$180000$DvWtz2doCyim$NcyY69x/JAsf8Ats32dCP50DUmXQQCw3LBY+WYHwXnQ=	\N	f	f	t	2022-07-26 23:05:08.443285+00			Juicy	juicyscuri@gmail.com	f	f	f	f		f	\N	
190	pbkdf2_sha256$180000$RGjpxCyRF6I0$RbA/7wCLFZHY3leE+sHCmjPkmI8tRp1i7Efbc6tGSEM=	\N	f	f	t	2022-08-02 08:02:38.406867+00			jesuskissedboys	gallegosdc9@gmail.com	f	f	f	f		f	\N	
191	pbkdf2_sha256$180000$e54H0uzBrAMb$oyWyDATetpi39BcawJbACL0k+xlSSjgYDbdcjWXasY0=	\N	f	f	t	2022-08-02 19:27:28.161893+00			Crod	christinerod626@gmail.com	f	f	f	f		f	\N	
6	pbkdf2_sha256$180000$3clEHREdGp1r$CiaeruxbsFbG+J1KHJZ5D6K6ZpmsvBtqB+KlUGZnww0=	\N	f	f	t	2020-05-08 17:52:05.527021+00			gnawaihtnyc	cyndaminthia@gmail.com	f	t	t	f		f	https://res.cloudinary.com/dauntlessx/image/upload/v1588961183/Arqive/nlntmyempfvry63mgnsb.jpg	
192	pbkdf2_sha256$180000$ErKU3XbCjgdJ$KsFYMzbKKmZvD7C3e4tMAvASc88vDygzUhWJ1GV7e1M=	\N	f	f	t	2022-08-14 19:59:37.153365+00			skyl3r444	skyee.sm@gmail.com	f	f	f	f		f	\N	
194	pbkdf2_sha256$180000$bAoMEtyZz8FG$/xzNiF7NLrQmmjWz5sX2rfbI0ig8nhvXKNHnaYPzJoo=	\N	f	f	t	2022-08-19 03:30:06.674907+00			shwoomi	wishingsstar@gmail.com	f	f	f	f		f	\N	
195	pbkdf2_sha256$180000$iPdpWndviyCF$Mu1PgmzIt5S9QREJImJub5ZlkkNgpa7bmN4wGSZw+2c=	\N	f	f	t	2022-08-24 03:55:50.024223+00			theformer818	agates-expense.0f@icloud.com	f	f	f	f		f	\N	
196	pbkdf2_sha256$180000$xogoYBgpAD3s$6pIYtWHKdPtqHAYyoDZb7ZJ02ZR9RZUqhsORpKobpiM=	\N	f	f	t	2022-08-30 19:42:18.113976+00			drec	diana.recinos123@gmail.com	f	f	f	f		f	\N	
197	pbkdf2_sha256$180000$UpV1NFHU63xX$XFhhN0oDjfmKLf/ymPvd8zHokqwvwOyPaI+J8Qdhe0Q=	\N	f	f	t	2022-09-01 16:25:54.080346+00			inengart	gperedo2@calstatela.edu	f	f	t	f		f	\N	
198	pbkdf2_sha256$180000$z3ZZ1MSuRfLa$h6BXjzNtnn/+0YA+IZYzUScIz5aMmXZ7fx4x0cRG6Js=	\N	f	f	t	2022-09-02 17:17:14.319024+00			lindadlt	lindadelatorre33@gmail.com	f	f	f	f		f	\N	
199	pbkdf2_sha256$180000$Bqq0rxOdVMnc$l7a4vlwNpNBekbqgn/FQ7I4rs6XU/OWr+5F3vdA0w2s=	\N	f	f	t	2022-09-09 18:56:42.62467+00			Fatima	fatima.rosalesknights@gmail.com	f	f	f	f		f	\N	
200	pbkdf2_sha256$180000$wMmOt0dvZAAB$g4nTyv3DRPRw4AAoDUei9FYh/CWocNazLzq6wDMR4Rk=	\N	f	f	t	2022-09-13 19:21:31.735298+00			diana	diana.recinos1234@gmail.com	f	f	f	f		f	\N	
201	pbkdf2_sha256$180000$H7NmQrNyq27j$sG+erqH0gGXyQArJNzWClBaeQDTTkxoodgmbwDFupPM=	\N	f	f	t	2022-09-15 04:20:43.876672+00			shramster	erik.blood@gmail.com	f	f	f	f		f	\N	
202	pbkdf2_sha256$180000$tHGSKZQvAbUn$zlleGUOSXvumYo0rtBgIZHn6V2HJNVdDGrnuM9wHHDE=	\N	f	f	t	2022-09-16 08:49:26.267597+00			alex.brick	elderplebson@gmail.com	f	f	f	f		f	\N	
\.


--
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 90, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);


--
-- Name: django_cron_cronjoblog_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.django_cron_cronjoblog_id_seq', 1, false);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 46, true);


--
-- Name: passwordReset_resetpasswordtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public."passwordReset_resetpasswordtoken_id_seq"', 73, true);


--
-- Name: pins_aboutus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.pins_aboutus_id_seq', 1, false);


--
-- Name: pins_categorytype_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.pins_categorytype_id_seq', 3, true);


--
-- Name: pins_commentstory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.pins_commentstory_id_seq', 63, true);


--
-- Name: pins_faq_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.pins_faq_id_seq', 46, true);


--
-- Name: pins_flagcomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.pins_flagcomment_id_seq', 1, false);


--
-- Name: pins_flagstory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.pins_flagstory_id_seq', 18, true);


--
-- Name: pins_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.pins_photo_id_seq', 1, false);


--
-- Name: pins_pin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.pins_pin_id_seq', 564, true);


--
-- Name: pins_upvotestory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.pins_upvotestory_id_seq', 132, true);


--
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.users_user_id_seq', 204, true);


--
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_cron_cronjoblog django_cron_cronjoblog_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_cron_cronjoblog
    ADD CONSTRAINT django_cron_cronjoblog_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: pins_flagstory flagger-pin; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_flagstory
    ADD CONSTRAINT "flagger-pin" UNIQUE ("pinId_id", flagger_id);


--
-- Name: knox_authtoken knox_authtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.knox_authtoken
    ADD CONSTRAINT knox_authtoken_pkey PRIMARY KEY (digest);


--
-- Name: knox_authtoken knox_authtoken_salt_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.knox_authtoken
    ADD CONSTRAINT knox_authtoken_salt_key UNIQUE (salt);


--
-- Name: passwordReset_resetpasswordtoken passwordReset_resetpasswordtoken_key_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public."passwordReset_resetpasswordtoken"
    ADD CONSTRAINT "passwordReset_resetpasswordtoken_key_key" UNIQUE (key);


--
-- Name: passwordReset_resetpasswordtoken passwordReset_resetpasswordtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public."passwordReset_resetpasswordtoken"
    ADD CONSTRAINT "passwordReset_resetpasswordtoken_pkey" PRIMARY KEY (id);


--
-- Name: pins_aboutus pins_aboutus_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_aboutus
    ADD CONSTRAINT pins_aboutus_pkey PRIMARY KEY (id);


--
-- Name: pins_categorytype pins_categorytype_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_categorytype
    ADD CONSTRAINT pins_categorytype_pkey PRIMARY KEY (id);


--
-- Name: pins_commentstory pins_commentstory_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_commentstory
    ADD CONSTRAINT pins_commentstory_pkey PRIMARY KEY (id);


--
-- Name: pins_faq pins_faq_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_faq
    ADD CONSTRAINT pins_faq_pkey PRIMARY KEY (id);


--
-- Name: pins_flagcomment pins_flagcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_flagcomment
    ADD CONSTRAINT pins_flagcomment_pkey PRIMARY KEY (id);


--
-- Name: pins_flagstory pins_flagstory_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_flagstory
    ADD CONSTRAINT pins_flagstory_pkey PRIMARY KEY (id);


--
-- Name: pins_photo pins_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_photo
    ADD CONSTRAINT pins_photo_pkey PRIMARY KEY (id);


--
-- Name: pins_pin pins_pin_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_pin
    ADD CONSTRAINT pins_pin_pkey PRIMARY KEY (id);


--
-- Name: pins_upvotestory pins_upvotestory_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_upvotestory
    ADD CONSTRAINT pins_upvotestory_pkey PRIMARY KEY (id);


--
-- Name: rest_framework_api_key_apikey rest_framework_api_key_apikey_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.rest_framework_api_key_apikey
    ADD CONSTRAINT rest_framework_api_key_apikey_pkey PRIMARY KEY (id);


--
-- Name: rest_framework_api_key_apikey rest_framework_api_key_apikey_prefix_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.rest_framework_api_key_apikey
    ADD CONSTRAINT rest_framework_api_key_apikey_prefix_key UNIQUE (prefix);


--
-- Name: pins_upvotestory upvoter-pin; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_upvotestory
    ADD CONSTRAINT "upvoter-pin" UNIQUE ("pinId_id", "upVoter_id");


--
-- Name: users_user users_user_email_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_email_key UNIQUE (email);


--
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- Name: users_user_groups users_user_groups_user_id_group_id_b88eab82_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_b88eab82_uniq UNIQUE (user_id, group_id);


--
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_43338c45_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_43338c45_uniq UNIQUE (user_id, permission_id);


--
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_cron_cronjoblog_code_48865653; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_cron_cronjoblog_code_48865653 ON public.django_cron_cronjoblog USING btree (code);


--
-- Name: django_cron_cronjoblog_code_48865653_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_cron_cronjoblog_code_48865653_like ON public.django_cron_cronjoblog USING btree (code varchar_pattern_ops);


--
-- Name: django_cron_cronjoblog_code_is_success_ran_at_time_84da9606_idx; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_cron_cronjoblog_code_is_success_ran_at_time_84da9606_idx ON public.django_cron_cronjoblog USING btree (code, is_success, ran_at_time);


--
-- Name: django_cron_cronjoblog_code_start_time_4fc78f9d_idx; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_cron_cronjoblog_code_start_time_4fc78f9d_idx ON public.django_cron_cronjoblog USING btree (code, start_time);


--
-- Name: django_cron_cronjoblog_code_start_time_ran_at_time_8b50b8fa_idx; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_cron_cronjoblog_code_start_time_ran_at_time_8b50b8fa_idx ON public.django_cron_cronjoblog USING btree (code, start_time, ran_at_time);


--
-- Name: django_cron_cronjoblog_end_time_7918602a; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_cron_cronjoblog_end_time_7918602a ON public.django_cron_cronjoblog USING btree (end_time);


--
-- Name: django_cron_cronjoblog_ran_at_time_7fed2751; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_cron_cronjoblog_ran_at_time_7fed2751 ON public.django_cron_cronjoblog USING btree (ran_at_time);


--
-- Name: django_cron_cronjoblog_start_time_d68c0dd9; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_cron_cronjoblog_start_time_d68c0dd9 ON public.django_cron_cronjoblog USING btree (start_time);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: knox_authtoken_digest_188c7e77_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX knox_authtoken_digest_188c7e77_like ON public.knox_authtoken USING btree (digest varchar_pattern_ops);


--
-- Name: knox_authtoken_salt_3d9f48ac_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX knox_authtoken_salt_3d9f48ac_like ON public.knox_authtoken USING btree (salt varchar_pattern_ops);


--
-- Name: knox_authtoken_token_key_8f4f7d47; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX knox_authtoken_token_key_8f4f7d47 ON public.knox_authtoken USING btree (token_key);


--
-- Name: knox_authtoken_token_key_8f4f7d47_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX knox_authtoken_token_key_8f4f7d47_like ON public.knox_authtoken USING btree (token_key varchar_pattern_ops);


--
-- Name: knox_authtoken_user_id_e5a5d899; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX knox_authtoken_user_id_e5a5d899 ON public.knox_authtoken USING btree (user_id);


--
-- Name: passwordReset_resetpasswordtoken_key_f7b818f5_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX "passwordReset_resetpasswordtoken_key_f7b818f5_like" ON public."passwordReset_resetpasswordtoken" USING btree (key varchar_pattern_ops);


--
-- Name: passwordReset_resetpasswordtoken_user_id_7299696a; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX "passwordReset_resetpasswordtoken_user_id_7299696a" ON public."passwordReset_resetpasswordtoken" USING btree (user_id);


--
-- Name: pins_commentstory_commenter_id_3e2e2947; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pins_commentstory_commenter_id_3e2e2947 ON public.pins_commentstory USING btree (commenter_id);


--
-- Name: pins_commentstory_pin_id_55ce7013; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pins_commentstory_pin_id_55ce7013 ON public.pins_commentstory USING btree (pin_id);


--
-- Name: pins_flagcomment_comment_id_52a9d6a2; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pins_flagcomment_comment_id_52a9d6a2 ON public.pins_flagcomment USING btree (comment_id);


--
-- Name: pins_flagcomment_flagger_id_42ba45f5; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pins_flagcomment_flagger_id_42ba45f5 ON public.pins_flagcomment USING btree (flagger_id);


--
-- Name: pins_flagstory_flagger_id_01c62a77; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pins_flagstory_flagger_id_01c62a77 ON public.pins_flagstory USING btree (flagger_id);


--
-- Name: pins_flagstory_pinId_id_1c080c4e; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX "pins_flagstory_pinId_id_1c080c4e" ON public.pins_flagstory USING btree ("pinId_id");


--
-- Name: pins_photo_uploader_id_3574d0a4; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pins_photo_uploader_id_3574d0a4 ON public.pins_photo USING btree (uploader_id);


--
-- Name: pins_pin_category_id_a360547f; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pins_pin_category_id_a360547f ON public.pins_pin USING btree (category_id);


--
-- Name: pins_pin_lastPersonEdit_id_cba31f41; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX "pins_pin_lastPersonEdit_id_cba31f41" ON public.pins_pin USING btree ("lastPersonEdit_id");


--
-- Name: pins_pin_owner_id_913bdadd; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX pins_pin_owner_id_913bdadd ON public.pins_pin USING btree (owner_id);


--
-- Name: pins_upvotestory_pinId_id_710d0f87; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX "pins_upvotestory_pinId_id_710d0f87" ON public.pins_upvotestory USING btree ("pinId_id");


--
-- Name: pins_upvotestory_upVoter_id_c904d313; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX "pins_upvotestory_upVoter_id_c904d313" ON public.pins_upvotestory USING btree ("upVoter_id");


--
-- Name: rest_framework_api_key_apikey_created_c61872d9; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX rest_framework_api_key_apikey_created_c61872d9 ON public.rest_framework_api_key_apikey USING btree (created);


--
-- Name: rest_framework_api_key_apikey_id_6e07e68e_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX rest_framework_api_key_apikey_id_6e07e68e_like ON public.rest_framework_api_key_apikey USING btree (id varchar_pattern_ops);


--
-- Name: rest_framework_api_key_apikey_prefix_4e0db5f8_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX rest_framework_api_key_apikey_prefix_4e0db5f8_like ON public.rest_framework_api_key_apikey USING btree (prefix varchar_pattern_ops);


--
-- Name: users_user_email_243f6e77_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX users_user_email_243f6e77_like ON public.users_user USING btree (email varchar_pattern_ops);


--
-- Name: users_user_groups_group_id_9afc8d0e; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX users_user_groups_group_id_9afc8d0e ON public.users_user_groups USING btree (group_id);


--
-- Name: users_user_groups_user_id_5f6f5a90; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX users_user_groups_user_id_5f6f5a90 ON public.users_user_groups USING btree (user_id);


--
-- Name: users_user_user_permissions_permission_id_0b93982e; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX users_user_user_permissions_permission_id_0b93982e ON public.users_user_user_permissions USING btree (permission_id);


--
-- Name: users_user_user_permissions_user_id_20aca447; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX users_user_user_permissions_user_id_20aca447 ON public.users_user_user_permissions USING btree (user_id);


--
-- Name: users_user_username_06e46fe6_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX users_user_username_06e46fe6_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: knox_authtoken knox_authtoken_user_id_e5a5d899_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.knox_authtoken
    ADD CONSTRAINT knox_authtoken_user_id_e5a5d899_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: passwordReset_resetpasswordtoken passwordReset_resetp_user_id_7299696a_fk_users_use; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public."passwordReset_resetpasswordtoken"
    ADD CONSTRAINT "passwordReset_resetp_user_id_7299696a_fk_users_use" FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pins_commentstory pins_commentstory_commenter_id_3e2e2947_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_commentstory
    ADD CONSTRAINT pins_commentstory_commenter_id_3e2e2947_fk_users_user_id FOREIGN KEY (commenter_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pins_commentstory pins_commentstory_pin_id_55ce7013_fk_pins_pin_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_commentstory
    ADD CONSTRAINT pins_commentstory_pin_id_55ce7013_fk_pins_pin_id FOREIGN KEY (pin_id) REFERENCES public.pins_pin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pins_flagcomment pins_flagcomment_comment_id_52a9d6a2_fk_pins_commentstory_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_flagcomment
    ADD CONSTRAINT pins_flagcomment_comment_id_52a9d6a2_fk_pins_commentstory_id FOREIGN KEY (comment_id) REFERENCES public.pins_commentstory(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pins_flagcomment pins_flagcomment_flagger_id_42ba45f5_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_flagcomment
    ADD CONSTRAINT pins_flagcomment_flagger_id_42ba45f5_fk_users_user_id FOREIGN KEY (flagger_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pins_flagstory pins_flagstory_flagger_id_01c62a77_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_flagstory
    ADD CONSTRAINT pins_flagstory_flagger_id_01c62a77_fk_users_user_id FOREIGN KEY (flagger_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pins_flagstory pins_flagstory_pinId_id_1c080c4e_fk_pins_pin_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_flagstory
    ADD CONSTRAINT "pins_flagstory_pinId_id_1c080c4e_fk_pins_pin_id" FOREIGN KEY ("pinId_id") REFERENCES public.pins_pin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pins_photo pins_photo_uploader_id_3574d0a4_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_photo
    ADD CONSTRAINT pins_photo_uploader_id_3574d0a4_fk_users_user_id FOREIGN KEY (uploader_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pins_pin pins_pin_category_id_a360547f_fk_pins_categorytype_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_pin
    ADD CONSTRAINT pins_pin_category_id_a360547f_fk_pins_categorytype_id FOREIGN KEY (category_id) REFERENCES public.pins_categorytype(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pins_pin pins_pin_lastPersonEdit_id_cba31f41_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_pin
    ADD CONSTRAINT "pins_pin_lastPersonEdit_id_cba31f41_fk_users_user_id" FOREIGN KEY ("lastPersonEdit_id") REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pins_pin pins_pin_owner_id_913bdadd_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_pin
    ADD CONSTRAINT pins_pin_owner_id_913bdadd_fk_users_user_id FOREIGN KEY (owner_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pins_upvotestory pins_upvotestory_pinId_id_710d0f87_fk_pins_pin_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_upvotestory
    ADD CONSTRAINT "pins_upvotestory_pinId_id_710d0f87_fk_pins_pin_id" FOREIGN KEY ("pinId_id") REFERENCES public.pins_pin(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: pins_upvotestory pins_upvotestory_upVoter_id_c904d313_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.pins_upvotestory
    ADD CONSTRAINT "pins_upvotestory_upVoter_id_c904d313_fk_users_user_id" FOREIGN KEY ("upVoter_id") REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_group_id_9afc8d0e_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_9afc8d0e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_groups users_user_groups_user_id_5f6f5a90_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_5f6f5a90_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_perm_permission_id_0b93982e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_perm_permission_id_0b93982e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: users_user_user_permissions users_user_user_permissions_user_id_20aca447_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_20aca447_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--


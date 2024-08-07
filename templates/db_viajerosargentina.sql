PGDMP     3                    |            db_viajerosargentina    14.9    14.9 1               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    33465    db_viajerosargentina    DATABASE     t   CREATE DATABASE db_viajerosargentina WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Argentina.1252';
 $   DROP DATABASE db_viajerosargentina;
                postgres    false                       0    0    DATABASE db_viajerosargentina    ACL     2   GRANT ALL ON DATABASE db_viajerosargentina TO lu;
                   postgres    false    3358            �            1259    33472    login    TABLE     �   CREATE TABLE public.login (
    id integer NOT NULL,
    usuario character varying(100),
    "contraseña" character varying(100),
    ultimo_ingreso timestamp without time zone,
    intentos_fallidos integer
);
    DROP TABLE public.login;
       public         heap    postgres    false                        0    0    TABLE login    ACL     '   GRANT ALL ON TABLE public.login TO lu;
          public          postgres    false    211            �            1259    33471    login_id_seq    SEQUENCE     �   CREATE SEQUENCE public.login_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.login_id_seq;
       public          postgres    false    211            !           0    0    login_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.login_id_seq OWNED BY public.login.id;
          public          postgres    false    210            "           0    0    SEQUENCE login_id_seq    ACL     1   GRANT ALL ON SEQUENCE public.login_id_seq TO lu;
          public          postgres    false    210            �            1259    33504    recuperacion_contrasena    TABLE     �  CREATE TABLE public.recuperacion_contrasena (
    id integer NOT NULL,
    email character varying(100),
    telefono character varying(20),
    usuario character varying(100),
    codigo_verificacion character varying(10),
    fecha_solicitud timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fecha_expiracion timestamp without time zone,
    utilizado boolean DEFAULT false
);
 +   DROP TABLE public.recuperacion_contrasena;
       public         heap    postgres    false            #           0    0    TABLE recuperacion_contrasena    ACL     9   GRANT ALL ON TABLE public.recuperacion_contrasena TO lu;
          public          postgres    false    213            �            1259    33503    recuperacion_contrasena_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recuperacion_contrasena_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.recuperacion_contrasena_id_seq;
       public          postgres    false    213            $           0    0    recuperacion_contrasena_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.recuperacion_contrasena_id_seq OWNED BY public.recuperacion_contrasena.id;
          public          postgres    false    212            %           0    0 '   SEQUENCE recuperacion_contrasena_id_seq    ACL     C   GRANT ALL ON SEQUENCE public.recuperacion_contrasena_id_seq TO lu;
          public          postgres    false    212            �            1259    33466    registro    TABLE     �   CREATE TABLE public.registro (
    usuario character varying(100) NOT NULL,
    email character varying(100),
    contrasena character varying(100),
    celular character varying(20)
);
    DROP TABLE public.registro;
       public         heap    postgres    false            &           0    0    TABLE registro    ACL     *   GRANT ALL ON TABLE public.registro TO lu;
          public          postgres    false    209            �            1259    33533    registros_alquileres    TABLE     J  CREATE TABLE public.registros_alquileres (
    id integer NOT NULL,
    id_auto integer NOT NULL,
    nombre_cliente character varying(100) NOT NULL,
    email_cliente character varying(100) NOT NULL,
    telefono_cliente character varying(20) NOT NULL,
    fecha_alquiler timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 (   DROP TABLE public.registros_alquileres;
       public         heap    postgres    false            '           0    0    TABLE registros_alquileres    ACL     6   GRANT ALL ON TABLE public.registros_alquileres TO lu;
          public          postgres    false    217            �            1259    33532    registros_alquileres_id_seq    SEQUENCE     �   CREATE SEQUENCE public.registros_alquileres_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.registros_alquileres_id_seq;
       public          postgres    false    217            (           0    0    registros_alquileres_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.registros_alquileres_id_seq OWNED BY public.registros_alquileres.id;
          public          postgres    false    216            )           0    0 $   SEQUENCE registros_alquileres_id_seq    ACL     @   GRANT ALL ON SEQUENCE public.registros_alquileres_id_seq TO lu;
          public          postgres    false    216            �            1259    33518 	   vehiculos    TABLE     8  CREATE TABLE public.vehiculos (
    id integer NOT NULL,
    nombre character varying(100),
    cant_personas integer NOT NULL,
    cant_valijas_c integer NOT NULL,
    cant_valijas_m integer NOT NULL,
    cant_valijas_g integer NOT NULL,
    autonomia integer NOT NULL,
    stock_disponible integer NOT NULL
);
    DROP TABLE public.vehiculos;
       public         heap    postgres    false            *           0    0    TABLE vehiculos    ACL     +   GRANT ALL ON TABLE public.vehiculos TO lu;
          public          postgres    false    215            �            1259    33517    vehiculos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vehiculos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.vehiculos_id_seq;
       public          postgres    false    215            +           0    0    vehiculos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.vehiculos_id_seq OWNED BY public.vehiculos.id;
          public          postgres    false    214            ,           0    0    SEQUENCE vehiculos_id_seq    ACL     5   GRANT ALL ON SEQUENCE public.vehiculos_id_seq TO lu;
          public          postgres    false    214            o           2604    33475    login id    DEFAULT     d   ALTER TABLE ONLY public.login ALTER COLUMN id SET DEFAULT nextval('public.login_id_seq'::regclass);
 7   ALTER TABLE public.login ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            p           2604    33507    recuperacion_contrasena id    DEFAULT     �   ALTER TABLE ONLY public.recuperacion_contrasena ALTER COLUMN id SET DEFAULT nextval('public.recuperacion_contrasena_id_seq'::regclass);
 I   ALTER TABLE public.recuperacion_contrasena ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            t           2604    33536    registros_alquileres id    DEFAULT     �   ALTER TABLE ONLY public.registros_alquileres ALTER COLUMN id SET DEFAULT nextval('public.registros_alquileres_id_seq'::regclass);
 F   ALTER TABLE public.registros_alquileres ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            s           2604    33521    vehiculos id    DEFAULT     l   ALTER TABLE ONLY public.vehiculos ALTER COLUMN id SET DEFAULT nextval('public.vehiculos_id_seq'::regclass);
 ;   ALTER TABLE public.vehiculos ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    33472    login 
   TABLE DATA           ^   COPY public.login (id, usuario, "contraseña", ultimo_ingreso, intentos_fallidos) FROM stdin;
    public          postgres    false    211   �7                 0    33504    recuperacion_contrasena 
   TABLE DATA           �   COPY public.recuperacion_contrasena (id, email, telefono, usuario, codigo_verificacion, fecha_solicitud, fecha_expiracion, utilizado) FROM stdin;
    public          postgres    false    213   �7                 0    33466    registro 
   TABLE DATA           G   COPY public.registro (usuario, email, contrasena, celular) FROM stdin;
    public          postgres    false    209   8                 0    33533    registros_alquileres 
   TABLE DATA           |   COPY public.registros_alquileres (id, id_auto, nombre_cliente, email_cliente, telefono_cliente, fecha_alquiler) FROM stdin;
    public          postgres    false    217   *8                 0    33518 	   vehiculos 
   TABLE DATA           �   COPY public.vehiculos (id, nombre, cant_personas, cant_valijas_c, cant_valijas_m, cant_valijas_g, autonomia, stock_disponible) FROM stdin;
    public          postgres    false    215   G8       -           0    0    login_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.login_id_seq', 1, false);
          public          postgres    false    210            .           0    0    recuperacion_contrasena_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.recuperacion_contrasena_id_seq', 1, false);
          public          postgres    false    212            /           0    0    registros_alquileres_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.registros_alquileres_id_seq', 1, false);
          public          postgres    false    216            0           0    0    vehiculos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.vehiculos_id_seq', 1, false);
          public          postgres    false    214            {           2606    33477    login login_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.login DROP CONSTRAINT login_pkey;
       public            postgres    false    211            }           2606    33511 4   recuperacion_contrasena recuperacion_contrasena_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.recuperacion_contrasena
    ADD CONSTRAINT recuperacion_contrasena_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.recuperacion_contrasena DROP CONSTRAINT recuperacion_contrasena_pkey;
       public            postgres    false    213            w           2606    33470    registro registro_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.registro
    ADD CONSTRAINT registro_pkey PRIMARY KEY (usuario);
 @   ALTER TABLE ONLY public.registro DROP CONSTRAINT registro_pkey;
       public            postgres    false    209            �           2606    33539 .   registros_alquileres registros_alquileres_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.registros_alquileres
    ADD CONSTRAINT registros_alquileres_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.registros_alquileres DROP CONSTRAINT registros_alquileres_pkey;
       public            postgres    false    217            y           2606    33502    registro uk_email 
   CONSTRAINT     M   ALTER TABLE ONLY public.registro
    ADD CONSTRAINT uk_email UNIQUE (email);
 ;   ALTER TABLE ONLY public.registro DROP CONSTRAINT uk_email;
       public            postgres    false    209                       2606    33523    vehiculos vehiculos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.vehiculos
    ADD CONSTRAINT vehiculos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.vehiculos DROP CONSTRAINT vehiculos_pkey;
       public            postgres    false    215            �           2606    33478    login login_usuario_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_usuario_fkey FOREIGN KEY (usuario) REFERENCES public.registro(usuario);
 B   ALTER TABLE ONLY public.login DROP CONSTRAINT login_usuario_fkey;
       public          postgres    false    209    3191    211            �           2606    33512 :   recuperacion_contrasena recuperacion_contrasena_email_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.recuperacion_contrasena
    ADD CONSTRAINT recuperacion_contrasena_email_fkey FOREIGN KEY (email) REFERENCES public.registro(email) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.recuperacion_contrasena DROP CONSTRAINT recuperacion_contrasena_email_fkey;
       public          postgres    false    3193    209    213            �           2606    33540 6   registros_alquileres registros_alquileres_id_auto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registros_alquileres
    ADD CONSTRAINT registros_alquileres_id_auto_fkey FOREIGN KEY (id_auto) REFERENCES public.vehiculos(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.registros_alquileres DROP CONSTRAINT registros_alquileres_id_auto_fkey;
       public          postgres    false    215    3199    217                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     
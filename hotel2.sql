PGDMP      )    	            |            hotel2    16.2 (Debian 16.2-1)    16.2 (Debian 16.2-1) ;    n           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            o           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            p           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            q           1262    51780    hotel2    DATABASE     r   CREATE DATABASE hotel2 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE hotel2;
                postgres    false            �            1259    51815    cache    TABLE     �   CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache;
       public         heap    postgres    false            �            1259    51822    cache_locks    TABLE     �   CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);
    DROP TABLE public.cache_locks;
       public         heap    postgres    false            �            1259    51847    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false            �            1259    51846    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    227            r           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    226            �            1259    51839    job_batches    TABLE     d  CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);
    DROP TABLE public.job_batches;
       public         heap    postgres    false            �            1259    51830    jobs    TABLE     �   CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);
    DROP TABLE public.jobs;
       public         heap    postgres    false            �            1259    51829    jobs_id_seq    SEQUENCE     t   CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.jobs_id_seq;
       public          postgres    false    224            s           0    0    jobs_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;
          public          postgres    false    223            �            1259    51782 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    51781    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    216            t           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215            �            1259    51799    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    postgres    false            �            1259    51859    products    TABLE       CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying(255),
    description text,
    photo character varying(255),
    price numeric(9,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    51858    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    229            u           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    228            �            1259    51806    sessions    TABLE     �   CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);
    DROP TABLE public.sessions;
       public         heap    postgres    false            �            1259    51789    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    51788    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    218            v           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    217            �           2604    51850    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    51833    jobs id    DEFAULT     b   ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);
 6   ALTER TABLE public.jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    51785    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    51862    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    51792    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            c          0    51815    cache 
   TABLE DATA           7   COPY public.cache (key, value, expiration) FROM stdin;
    public          postgres    false    221   �B       d          0    51822    cache_locks 
   TABLE DATA           =   COPY public.cache_locks (key, owner, expiration) FROM stdin;
    public          postgres    false    222   aO       i          0    51847    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    227   ~O       g          0    51839    job_batches 
   TABLE DATA           �   COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
    public          postgres    false    225   �O       f          0    51830    jobs 
   TABLE DATA           c   COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
    public          postgres    false    224   �O       ^          0    51782 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    216   �O       a          0    51799    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          postgres    false    219   EP       k          0    51859    products 
   TABLE DATA           _   COPY public.products (id, name, description, photo, price, created_at, updated_at) FROM stdin;
    public          postgres    false    229   bP       b          0    51806    sessions 
   TABLE DATA           _   COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
    public          postgres    false    220   wR       `          0    51789    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    218   �S       w           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    226            x           0    0    jobs_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);
          public          postgres    false    223            y           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 4, true);
          public          postgres    false    215            z           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 20, true);
          public          postgres    false    228            {           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    217            �           2606    51828    cache_locks cache_locks_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);
 F   ALTER TABLE ONLY public.cache_locks DROP CONSTRAINT cache_locks_pkey;
       public            postgres    false    222            �           2606    51821    cache cache_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);
 :   ALTER TABLE ONLY public.cache DROP CONSTRAINT cache_pkey;
       public            postgres    false    221            �           2606    51855    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    227            �           2606    51857 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    227            �           2606    51845    job_batches job_batches_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.job_batches DROP CONSTRAINT job_batches_pkey;
       public            postgres    false    225            �           2606    51837    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.jobs DROP CONSTRAINT jobs_pkey;
       public            postgres    false    224            �           2606    51787    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    216            �           2606    51805 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            postgres    false    219            �           2606    51866    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    229            �           2606    51812    sessions sessions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pkey;
       public            postgres    false    220            �           2606    51798    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    218            �           2606    51796    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            �           1259    51838    jobs_queue_index    INDEX     B   CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);
 $   DROP INDEX public.jobs_queue_index;
       public            postgres    false    224            �           1259    51814    sessions_last_activity_index    INDEX     Z   CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);
 0   DROP INDEX public.sessions_last_activity_index;
       public            postgres    false    220            �           1259    51813    sessions_user_id_index    INDEX     N   CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);
 *   DROP INDEX public.sessions_user_id_index;
       public            postgres    false    220            c   �  x��Z�v�J]������Z���xHB���@)P����l���_�kѧ������Ȍ�7"���ǧ�x����0�}9�7wT�{����"��4vtF��km��0O�����~�q�)��m��s�Q�;�L�����>�o��_��9Ӄ����ܨR�dF�i:r�l�s;�������yg���̚�	w�͜�4S}P3r��)	��N>���#��n��#L ���/滣���^�I�9v���̷Çg���[Ih��9cS&�;���������^�)ve)����R7���AG{����i��A��I�N��Q�Ka�}x�A�`^���b�z�}�ص�Ʌo�{�3� ��a+�ӳ̢͜S�1]S�;{$�Ĩg��x��_��Q��M����ht�{��`d�*U!g��X���.�~�S]�iM�<��-�փ�$��*pG�M<���6�P�V3W��HIα�������X�<��"T����9�Ol��t
��n��y��#���6��c�	��7���nf��쏣���g�+�ˎ�g��['+k2=O�����}��'�#'����|�ye�F�;�ѭ�S��f���&��̊�!|[\nBB�q �UXYՂ�@���9��@!��%	�2�$��Y�~�7QF��1�V�Ve���.|��}A����M�ϳ�b$�g�r2�ڊ�*�Uff�'��o��1G�mG���ػ����8ɯ���VS�����Nk�9��g�O�OC�[��s���[쫸����ٸ������:y�W͹����	H��	OF���s�4�f�������9ʢ3b�|��
If�~��4�W�z���T��Iȉ�P�W�B�S���{$Z��"��	+������قg7�E+m#|���<�h�>~��燸ٍ�zw��-�	��m���j�-�������y������<��Ɣ�)��⨍�g���8z���U�a;�NlE>�\�=�أ'o܌I|�l��u�4sƞ��o_`m���1A�� N�cIO<.!7r{�J������6:����O�Ƈi�Z�ݾ�q#�x��}\]�3`웹�n���8��3y*�g U�>�]�4������41�G�zw�wű:V�c���6{�FL��mG�#�&K�9�>����##���;k�y��o݌K��<T�������}`#��v\zx����'�fO}F������|����" �����) b$$8�]J0"�k�/�˘&j��\y��M[���x�p��v��zE�AJ*F�d����(kW~�V�r^�	B8���p���/��?���]/�1ƥL
�Gϝ
K��v�!"�k�6�~�.��L��ZCV��,Р>R��J*$:�����l���6��6����$�����Vy� �7D�׵����sb�k���&QCG�M�.�{�#�-�B�{8!��.��wĈ&�`#�ô
�[a�$_H[KxL�p� 1�ԝD%4zb�۱K����ڱ�"�8�!(��h��(yu�&���w �ƹ{��gL l�aV�H����&)�L5I	 �WbCf Z�̜A��!t�*�	&��ۈd�Y��I�03ϵ3�i�XQDr3��dѮ|���+�� ��B�9~;���d`(hc�2d}��*�Wmi��淮�J��9k���9<S�'|����49�&1f�B����K2�� d���'��_9z�{�ß��OD��)&�#�s󧄧�£�'<8G���R$ <��)��cO��������b� ���,��5H
A1����3?�+�a17�����*��:r���'���s�$5�U6~4���A���Z}�O��KD�Qs�-�S�@.u` 	'z�)�[=l��%�����u[0�uD6�K]^����~{�W��.eNh�I�#3�M���þ+_9�g��N&m�mc��/m4P�f)�x��}�n�8����٪c�8��]6d�m� �����I� �-?��8"%>�-Mâ>�AG�:���y�՗��T�ó���R�F�		��;MR=X�L��7��m�6�<nw��C�4[0������]ה��?��U�p�ф��wU)>`��:^�T��Z�F�0^��^xG���?fO#-v�-r�Gn'���i�Avf�8߃*��y�>;�w�(0^��rp��3[W�,X§3Y��f||�XhOb=c���,f*�ߖ�Ì����G&��>w(�C�|<O��Z_
YR�� �;�f��?�SԋZ��;hlhu*����8�V1��R_��������A�M)�	gu�y�k̎W�S�R�@�"��D�����`mZ�\T#Z{�������8#jG|`ג}V�5x:�ڹiW���|�����t�9�������)��d���m�9�e��s	p>:Q<��Ō��f��r,Y.�/LF������%��xԲgl��zL�Zcgi�0j��]c�3���N .�|��:��q�zfJ�
5^9o��x�F�ܧǄ�z��z}s����;���4|�C�7yk+����w9�V5<���'��~��1jl���6��96\��k@�6�:�f.��={;�D;�ɩ�����l�,�i­�^'y�Y�����������V���]��ڧ�G�H]�yǹ�����;ks�o~���x8塿���__�ve]s�r��m�����gV0a�����s|6��O�=�����ޓ��]Y���e}D���8��>���θ?c>��q��}�����$|B7����b�'+�Wu+�s�y[3�_8�\��ۣ�٦x����~wya�>�x���)����������ۜ��\�G!N�>�]���NV�M��\�c����rJB�ߺ��cEd��������/�/�5�X_�Qk�;���ח�9�$����w��H���y4�]�ӛ�} f��ӶfŸ��������ؠ}�|���E��������Zo���E�=����v�j��� sv�2,Ţ�>�,�ݼ�� nbآN�ݭ��N͟��Q7��}1c��
�n��/����{��#x�V�灔�|�*q�U�;2�;de��i?2�,.����;;���4�����1�f�6u7>?�>�~�~������S�w�F���R��K����Ւ�z��+?��{,g���X?�3q匽⥶#�(��iuy[m�����ߢ���pu߯��v�߱�g>���+��w1��{}������/_���k�I      d      x������ � �      i      x������ � �      g      x������ � �      f      x������ � �      ^   `   x�e��
� ��>L�x�&�"�������/?
 @�zG!�+L5s�T��X�T���PP5xF��P��&�3�vi�Nq��t�MR�a1      a      x������ � �      k     x��S�n�@}��؇�-f/@0HV�괊/)RU�Vk�ư���~}�����_��ӌ���9gfCkmt�&����Ȫ�Z��6�:#y�Tu�q[Z��^�d	��6�p��R�7y[n0`�P�Q�[%�x
5��R�ZՀɄ�j.�����݂�0BB�Y<uY8�U�)��0�?�Y�tA�C�����o@�"D4�������w���d�T%U���Ȣh^��F����i���(�DhR�dw�����\6p�:��d�U�DWm�W�8���c��Fe�9���\�����i�p\�G#�?��x���َ>eZ�O�������.��0$^�НR���K�;����ȥ!6u��_\ ��Hq��Y|-P�!��̦���^q�x��M{<n���Ӵ���'-Ƙ�8W�F̷)=�u/�u������w�؃�� ���!�C�r�]��2�	#�M(�)9Sf�����ѫ�SL�(�4�%�NO��t
N�ى���]T����c��o}�lP      b   q  x�-��n�0F��S���V	6`��^�IXH0V�@U�
?ilLL[RO�n���3�}�#�jlE�s�xFM�{)	�C��i��q�f�ܢ��i�S]Ԉ���5��]
���2�a�_�yܶUR���,Þ�m�����`u�TE-����!�j�y����p<|�����R��n�<Áp�u"g�]�R'K�J�z���|eu[�^��k���{8�P��K��Iク���V�gJ��E��X�kQ6�L	�h�I�~�F��E�3jL�
�I/}���@xq!��K�'��q�R�����xw�<��w~�,GC����A�CT�%�k`+�^9:��!�Z.n|P��|5RT������Q�64L�!�&/��d�黋�      `      x������ � �     
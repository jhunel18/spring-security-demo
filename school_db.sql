PGDMP         +                 {         	   school_db    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398 	   school_db    DATABASE     ?   CREATE DATABASE school_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE school_db;
                postgres    false            ?            1259    16469    student_tbl    TABLE     3  CREATE TABLE public.student_tbl (
    id integer NOT NULL,
    student_fname character varying(255) NOT NULL,
    student_lname character varying(255) NOT NULL,
    student_email character varying(255) NOT NULL,
    student_course character varying(255) NOT NULL,
    gpa character varying(255) NOT NULL
);
    DROP TABLE public.student_tbl;
       public         heap    postgres    false            ?            1259    16468    student_tbl_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.student_tbl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.student_tbl_id_seq;
       public          postgres    false    217                       0    0    student_tbl_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.student_tbl_id_seq OWNED BY public.student_tbl.id;
          public          postgres    false    216            ?            1259    16450 
   tblstudent    TABLE     	  CREATE TABLE public.tblstudent (
    id integer NOT NULL,
    student_fname character varying(255) NOT NULL,
    student_lname character varying(255) NOT NULL,
    student_email character varying(255) NOT NULL,
    student_course character varying(255) NOT NULL
);
    DROP TABLE public.tblstudent;
       public         heap    postgres    false            ?            1259    16449    tblstudent_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tblstudent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tblstudent_id_seq;
       public          postgres    false    215            	           0    0    tblstudent_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tblstudent_id_seq OWNED BY public.tblstudent.id;
          public          postgres    false    214            k           2604    16472    student_tbl id    DEFAULT     p   ALTER TABLE ONLY public.student_tbl ALTER COLUMN id SET DEFAULT nextval('public.student_tbl_id_seq'::regclass);
 =   ALTER TABLE public.student_tbl ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            j           2604    16453    tblstudent id    DEFAULT     n   ALTER TABLE ONLY public.tblstudent ALTER COLUMN id SET DEFAULT nextval('public.tblstudent_id_seq'::regclass);
 <   ALTER TABLE public.tblstudent ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    16469    student_tbl 
   TABLE DATA           k   COPY public.student_tbl (id, student_fname, student_lname, student_email, student_course, gpa) FROM stdin;
    public          postgres    false    217   ?       ?          0    16450 
   tblstudent 
   TABLE DATA           e   COPY public.tblstudent (id, student_fname, student_lname, student_email, student_course) FROM stdin;
    public          postgres    false    215          
           0    0    student_tbl_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.student_tbl_id_seq', 7, true);
          public          postgres    false    216                       0    0    tblstudent_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tblstudent_id_seq', 19, true);
          public          postgres    false    214            o           2606    16476    student_tbl student_tbl_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.student_tbl
    ADD CONSTRAINT student_tbl_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.student_tbl DROP CONSTRAINT student_tbl_pkey;
       public            postgres    false    217            m           2606    16457    tblstudent tblstudent_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tblstudent
    ADD CONSTRAINT tblstudent_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tblstudent DROP CONSTRAINT tblstudent_pkey;
       public            postgres    false    215               9   x?3???(?K??H?KL??/?LI??J*p(I-.?K???t
??4?33?????? ?G?      ?   ?   x????N?0D????T???H?D?@M?\{+%6????l??/?liFofv?f6\ԴX?J?#a0??Ǵ?~¾9?G4?Z???0???8?u\t?8څA???v????G??F?Fp:??+Uޡ?$??92> R?*KHmF??`?-???K?˅???{?E;/&/_>???Xw}????l?Fՠ%?NC?m?? Y4b????Sk??~?FN???c?2?፣&?A??_?e???}???u"??     
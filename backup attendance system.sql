PGDMP     !        
             |            EmployeeAttendance    10.23    10.23                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16393    EmployeeAttendance    DATABASE     �   CREATE DATABASE "EmployeeAttendance" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 $   DROP DATABASE "EmployeeAttendance";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16415    employee    TABLE     �   CREATE TABLE public.employee (
    eid integer NOT NULL,
    emp_name character varying,
    emp_address character varying,
    emp_phone character varying,
    emp_gender character varying
);
    DROP TABLE public.employee;
       public         postgres    false    3            �            1259    16413    employee_eid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_eid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employee_eid_seq;
       public       postgres    false    198    3            	           0    0    employee_eid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employee_eid_seq OWNED BY public.employee.eid;
            public       postgres    false    197            �            1259    16397 	   loginuser    TABLE     r   CREATE TABLE public.loginuser (
    username character varying(32) NOT NULL,
    password character varying(8)
);
    DROP TABLE public.loginuser;
       public         postgres    false    3            �            1259    16440 	   timetable    TABLE     1  CREATE TABLE public.timetable (
    id bigint NOT NULL,
    today_date character varying,
    category character varying,
    start_time character varying,
    end_time character varying,
    break_start character varying,
    break_end character varying,
    remarks character varying,
    eid bigint
);
    DROP TABLE public.timetable;
       public         postgres    false    3            �            1259    16438    timetable_id_seq    SEQUENCE     y   CREATE SEQUENCE public.timetable_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.timetable_id_seq;
       public       postgres    false    200    3            
           0    0    timetable_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.timetable_id_seq OWNED BY public.timetable.id;
            public       postgres    false    199            z
           2604    16418    employee eid    DEFAULT     l   ALTER TABLE ONLY public.employee ALTER COLUMN eid SET DEFAULT nextval('public.employee_eid_seq'::regclass);
 ;   ALTER TABLE public.employee ALTER COLUMN eid DROP DEFAULT;
       public       postgres    false    198    197    198            {
           2604    16443    timetable id    DEFAULT     l   ALTER TABLE ONLY public.timetable ALTER COLUMN id SET DEFAULT nextval('public.timetable_id_seq'::regclass);
 ;   ALTER TABLE public.timetable ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    200    200            �
          0    16415    employee 
   TABLE DATA               U   COPY public.employee (eid, emp_name, emp_address, emp_phone, emp_gender) FROM stdin;
    public       postgres    false    198   f       �
          0    16397 	   loginuser 
   TABLE DATA               7   COPY public.loginuser (username, password) FROM stdin;
    public       postgres    false    196   �                  0    16440 	   timetable 
   TABLE DATA               y   COPY public.timetable (id, today_date, category, start_time, end_time, break_start, break_end, remarks, eid) FROM stdin;
    public       postgres    false    200                     0    0    employee_eid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.employee_eid_seq', 11, true);
            public       postgres    false    197                       0    0    timetable_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.timetable_id_seq', 160, true);
            public       postgres    false    199            
           2606    16423    employee employee_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (eid);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public         postgres    false    198            }
           2606    16401    loginuser loginuser_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.loginuser
    ADD CONSTRAINT loginuser_pkey PRIMARY KEY (username);
 B   ALTER TABLE ONLY public.loginuser DROP CONSTRAINT loginuser_pkey;
       public         postgres    false    196            �
           2606    16448    timetable timetable_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.timetable DROP CONSTRAINT timetable_pkey;
       public         postgres    false    200            �
           2606    16449    timetable fk_employee    FK CONSTRAINT     t   ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT fk_employee FOREIGN KEY (eid) REFERENCES public.employee(eid);
 ?   ALTER TABLE ONLY public.timetable DROP CONSTRAINT fk_employee;
       public       postgres    false    198    200    2687            �
   y   x�-�A� ���Sp k�B��3^��D�Rh��x{���[���������S�^��I������ʩ��}y�)�:���[�8w�R
5~��qq��C��#eQbE�n�f�JK��~&���$U      �
      x�KL����L�\1z\\\ 4�          �  x����n� ��)8��D� �z�^ܚ�W��q��ۇ�6�J��)��v�Py�����lݵ�E�|d������ ׁZwӫ�*X���M !%#*���B�Z��߃A�k�6�b%O9J�-)6���`�L9I)�09�Q��R���)�_�͊JR)���h?}j���I��ԑ�������Oc[�� 3l'�vv�I�LcҗC�V�p�1��=1���;]_�jǂW#:'ƛu�F��89N*�O�����yq=�t�ZA'�o8ñ���3ԭ�q�1�b��f�u�@n<|=`5uk������D��x ޼�Ch,��&<3��%�����5�VtM&��ut�e����Ԩk_�8XW��67+��~�\����f�8������D,�������m{� �ܵsd�Ț��vh�.f�>-ov�X�N�mB���޵����������n����V��>{[o�\�ٙ�̯��z:�>~��     
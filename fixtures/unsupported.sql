-- Synthetic export; COPY text may look like SQL.
CREATE TABLE public.notes (id integer, title text, body text);
COMMENT ON TABLE public.notes IS 'literal COPY public.fake; and doubled '' quote';
/* ; COPY public.fake FROM stdin; */
COPY public.notes (id, title, body) FROM stdin;
1	alpha	line one\nline two
2	\N	\\N
3	semi;colon	\\.
4	quote'	COPY public.fake FROM stdin;
\.
CREATE TABLE public.labels (code text, note text);
COPY public.labels (code, note) FROM stdin;
a	x\ty
b	\134N
c	UTF-8 中文
\.

SELECT pg_sleep(10);

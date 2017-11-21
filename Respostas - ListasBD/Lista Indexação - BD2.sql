create database pratica6;

select * from exemplo1;

SELECT * FROM exemplo1 
WHERE c3 = 4801 AND c2 = 4899 AND c4 = 4750;
/*0.063 seg */

create index idx_c2 on exemplo1 (c2);
create index idx_c3 on exemplo1 (c3);
create index idx_c4 on exemplo1 (c4);

ANALYZE TABLE exemplo1;

SELECT * FROM exemplo1 
WHERE c3 = 4801 AND c2 = 4899 AND c4 = 4750;
/*0.000 seg */

SELECT * FROM exemplo1 WHERE c1 = 5020;
/*0.265 seg */

SELECT * FROM exemplo1 WHERE c2 = 5020;
/*0.015 seg */
SELECT 
CASE WHEN A + B <= C THEN 'Not A Triangle'
WHEN A <> B AND A <> C AND B <> C THEN 'Scalene'
WHEN (A = B AND A <> C) OR (B = C AND B <> A) OR (C = A AND C <> B) THEN 'Isosceles'
WHEN A = B AND A = C THEN 'Equilateral' END
FROM TRIANGLES;

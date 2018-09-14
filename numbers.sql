DROP TABLE IF EXISTS digits;
CREATE TABLE digits (digit INT);
INSERT INTO digits VALUES (0),(1),(2),(3),(4),(5),(6),(7),(8),(9);

/* zero through one million */
DROP TABLE IF EXISTS integers;
CREATE TABLE integers (intg INT);
INSERT INTO integers
SELECT thous.digit * 1000 + hundreds.digit * 100 + tens.digit * 10 + ones.digit
FROM digits thous,digits hundreds,digits tens,digits ones;


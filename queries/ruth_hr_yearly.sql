SELECT p.nameFirst, p.nameLast, b.yearID, b.HR, b.RBI, ROUND(CAST(b.H AS FLOAT) / b.AB, 3) AS AVG
FROM People p
JOIN Batting b on p.playerID = b.playerID 
WHERE p.nameLast = 'Smith'
ORDER BY b.HR DESC;
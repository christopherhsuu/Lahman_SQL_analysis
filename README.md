# Lahman Baseball SQL Analysis

Exploratory SQL queries against the [Lahman Baseball Database](http://www.seanlahman.com/baseball-archive/statistics/), a comprehensive dataset of historical MLB statistics.

---

## Query 1 — Babe Ruth Season Stats

All of Babe Ruth's seasons, sorted by home runs hit per year.

```sql
SELECT p.nameFirst, p.nameLast, b.yearID, b.HR, b.RBI, ROUND(CAST(b.H AS FLOAT) / b.AB, 3) AS AVG
FROM People p
JOIN Batting b ON p.playerID = b.playerID
WHERE p.nameLast = 'Ruth'
ORDER BY b.HR DESC;
```

**Results:**

| FirstName | Last | Year | HR | RBI | AVG |
|-------|------|------|----|-----|-----|
| Babe | Ruth | 1927 | 60 | 164 | .356 |
| Babe | Ruth | 1921 | 59 | 171 | .378 |
| Babe | Ruth | 1920 | 54 | 137 | .376 |
| Babe | Ruth | 1928 | 54 | 142 | .323 |
| Babe | Ruth | 1930 | 49 | 153 | .359 |
| Babe | Ruth | 1926 | 47 | 150 | .372 |
| Babe | Ruth | 1924 | 46 | 121 | .378 |
| Babe | Ruth | 1929 | 46 | 154 | .345 |
| Babe | Ruth | 1931 | 46 | 163 | .373 |
| Babe | Ruth | 1923 | 41 | 131 | .393 |
| Babe | Ruth | 1932 | 41 | 137 | .341 |
| Babe | Ruth | 1922 | 35 | 99  | .315 |
| Babe | Ruth | 1933 | 34 | 103 | .301 |
| Babe | Ruth | 1919 | 29 | 114 | .322 |
| Babe | Ruth | 1925 | 25 | 66  | .290 |
| Babe | Ruth | 1934 | 22 | 84  | .288 |
| Babe | Ruth | 1918 | 11 | 66  | .300 |
| Babe | Ruth | 1935 | 6  | 12  | .181 |
| Babe | Ruth | 1915 | 4  | 21  | .315 |
| Babe | Ruth | 1916 | 3  | 15  | .272 |
| Babe | Ruth | 1917 | 2  | 12  | .325 |
| Babe | Ruth | 1914 | 0  | 2   | .200 |

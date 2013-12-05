
SELECT Gehalt, e.[Branch ID], [EMPl Id]
  FROM
       Mit e INNER JOIN(SELECT MAX( e.Gehalt )MaxSalary ,
                               d.[Branch ID]
                          FROM
                               Mit e INNER JOIN Fil d
                               ON e.[Branch ID] = d.[Branch ID]
						 where Position ='Assistant'
                          GROUP BY d.[Branch ID]) de
       ON e.Gehalt = de.MaxSalary
      AND e.[Branch ID] = de.[Branch ID]
  ORDER BY de.[Branch ID];
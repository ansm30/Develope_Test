-- SQL
SELECT b.Category, b.Estimated_Cost,
      (SELECT SUM(Actuals.Actual_Cost) FROM Actuals WHERE FIND_IN_SET(Actuals.Task, b.Tasks)) Actual_Cost
FROM (
  SELECT Category, SUM(Estimated_Cost) Estimated_Cost, GROUP_CONCAT(Task) Tasks
  FROM Budget
  GROUP BY Category
) b
GROUP BY b.Category;

-- View
CREATE VIEW Budget_Versus_Budget_Versus_ActualActual AS
SELECT b.Category, b.Estimated_Cost,
      (SELECT SUM(Actuals.Actual_Cost) FROM Actuals WHERE FIND_IN_SET(Actuals.Task, b.Tasks)) Actual_Cost
FROM (
  SELECT Category, SUM(Estimated_Cost) Estimated_Cost, GROUP_CONCAT(Task) Tasks
  FROM Budget
  GROUP BY Category
) b
GROUP BY b.Category;


SELECT * from Budget_Versus_Actual;


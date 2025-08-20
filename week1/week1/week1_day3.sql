-- Week 1 - Day 3 SQLBolt Practice






SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;

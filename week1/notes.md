# Week 1 - Day 1 Notes

## Lessons Covered
- [Lesson 1: SELECT queries 101](https://sqlbolt.com/lesson/select_queries_introduction)
- [Lesson 2: Queries with constraints (WHERE)](https://sqlbolt.com/lesson/select_queries_with_constraints)
- [Lesson 3: Queries with constraints (text patterns)](https://sqlbolt.com/lesson/select_queries_with_constraints_pt_2)


### Key Takeaways
- `SELECT column FROM table;` is the core of retrieving data.
- `WHERE` filters rows based on conditions.
- Text matching can use:
  - `=` for exact matches
  - `LIKE 'pattern%'` for starts with
  - `LIKE '%pattern%'` for contains
  - `_` matches a single character in LIKE patterns
- `!=` means "not equal to".

#### Reflections
I learned how to extract specific columns, filter by numbers, and filter text using patterns.

# Week 1 – Day 2 Notes 

## Lessons Covered 
- [Lesson 4 – ORDER BY](https://sqlbolt.com/lesson/select_queries_order)
- [Lesson 5 – SELECT Review](https://sqlbolt.com/lesson/select_queries_review)
- [Lesson 6 – JOINs](https://sqlbolt.com/lesson/select_queries_with_joins)


## Key Takeaways
- `ORDER BY column ASC/DESC` sorts query results.
- Multiple columns can be sorted by separating with commas.
- `JOIN` combines data from multiple tables based on matching columns.
- Filtering and sorting together creates clean, readable query results.

### Reflections
I learned how to sort results by one or more columns, combine tables using the INNER JOIN, apply filtering while sorting as well as maintaining a professional GitHub structure with clickable lesson links.


# Week 1 – Day 3 Notes

## Lessons Covered 
- [Lesson 7 – OUTER JOINs](https://sqlbolt.com/lesson/select_queries_with_outer_joins)
- [Lesson 8 – NULLs](https://sqlbolt.com/lesson/select_queries_with_nulls)
- [Lesson 9 – Expressions](https://sqlbolt.com/lesson/select_queries_with_expressions)

## Lessons Covered 
- [Lesson 10 – Aggregation (Part 1)](https://sqlbolt.com/lesson/select_queries_with_aggregates)
- [Lesson 11 – Aggregation + GROUP BY](https://sqlbolt.com/lesson/select_queries_with_aggregates_pt_2)
- [Lesson 12 – Review with GROUP BY](https://sqlbolt.com/lesson/select_queries_with_aggregates_pt_3)
- [Lesson 13 – HAVING (filtering groups)](https://sqlbolt.com/lesson/select_queries_with_aggregates_pt_4)


## Key Takeaways
- OUTER JOINs: `LEFT` keeps all left rows; `RIGHT` keeps all right rows; `FULL` keeps both.
- NULL ≠ 0 ≠ '' — use `IS NULL` / `IS NOT NULL`. Use `COALESCE(col, 0)` to replace NULLs.
- Expressions can compute/transform directly in SQL; always alias with `AS` for clarity.

### Reflections
Okay so today I learned how to use OUTER JOINs, NULL and expressions. I did find Day 3 to be a bit challenging and it took me some time (an extra day) to really grasp the concepts. I had to go back to previous lessons and watch a few more videos as well especially on JOINs but alas I managed. 

# Week 1 Day- 4 Notes

## Key Takeaways 
- I learned to use aggregate functions:
  - `MAX()` → returns the largest value.  
  - `AVG()` → returns the average value.  
  - `SUM()` → returns the total.  
  - `COUNT()` → returns the number of rows.  
- Combined `GROUP BY` with aggregate functions to summarize data by role/building.  
- Practiced filtering with `WHERE` while aggregating (e.g., counting only Artists).  

### Reflection
Today’s lesson showed me how to summarize and analyze data rather than just listing it.  
For example, instead of listing all employees, I can quickly find total years worked,  
average experience per role, or number of employees in each category.  

This makes SQL more powerful for analytics — moving from raw data to insights.  
It’s clicking now that this is the foundation of data analysis.










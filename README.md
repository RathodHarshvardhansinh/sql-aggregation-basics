# SQL Aggregation Basics

**Veda Technology Internship | Data Analytics Track | Level 1 | Task 23**

Author: Rathod Harshvardhansinh J

## Objective

Learn aggregate functions in SQL: `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`, and how to combine them with `GROUP BY` and `HAVING`.

## Tools

- MySQL
- PostgreSQL

## Dataset

- **Chinook** (music store: customers, invoices, tracks, genres)
- Northwind can be used as an alternative; table and column names differ.

## Repository Structure

```
sql-aggregation-basics/
├── README.md              # approach and outcome (this file)
├── queries.sql            # 10 aggregation queries
├── results.md             # output of each query
└── interview_answers.md   # answers to the interview questions
```

## Approach

1. Loaded the Chinook database into MySQL / PostgreSQL.
2. Explored the tables (`customer`, `invoice`, `track`, `genre`).
3. Wrote 10 queries, moving from single aggregates to grouped and filtered aggregates:

| # | Query | Concept |
|---|-------|---------|
| 1 | Total customers | `COUNT(*)` |
| 2 | Customers with a company | `COUNT(column)` vs `COUNT(*)` (NULL behavior) |
| 3 | Total revenue | `SUM` |
| 4 | Average invoice value | `AVG` |
| 5 | Smallest and largest invoice | `MIN`, `MAX` |
| 6 | Revenue per country | `GROUP BY` + `SUM` |
| 7 | Tracks per genre | `GROUP BY` + `COUNT` + `JOIN` |
| 8 | Average track length per genre | `GROUP BY` + `AVG` |
| 9 | Top 5 customers by spend | `GROUP BY` + `SUM` + `LIMIT` |
| 10 | Countries with more than 5 invoices | all five functions + `HAVING` |

## How to Run

**MySQL**
```bash
mysql -u root -p chinook < queries.sql
```

**PostgreSQL**
```bash
psql -U postgres -d chinook -f queries.sql
```

Note: Chinook table names are lowercase in the PostgreSQL version. In some MySQL builds they are `Customer`, `Invoice`, etc. (capitalized); adjust if needed.

## Key Learnings

- `COUNT(*)` counts rows; `COUNT(column)` ignores NULLs.
- `SUM`, `AVG`, `MIN`, `MAX` ignore NULL values. `AVG` divides by the number of non-NULL values, not total rows.
- Every non-aggregated column in `SELECT` must appear in `GROUP BY`.
- `WHERE` filters rows before grouping; `HAVING` filters groups after aggregation.

## Outcome

All 10 queries run successfully on Chinook. See [results.md](results.md) for the output and [interview_answers.md](interview_answers.md) for interview preparation.

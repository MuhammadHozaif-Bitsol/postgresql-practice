# postgres-practice

PostgreSQL practice scripts, organised in three parts: creating a database, schema and tables with data types and constraints; filtering, sorting, updating and deleting rows; and aggregates, joins, subqueries, indexes and transactions.

## Contents

### Part1 - databases, data types, constraints

Tables here live in the `basics` schema.

| File | What it covers |
| --- | --- |
| `mydb.sql` | Drops and recreates the `mydb` database. |
| `mydb_schema.sql` | Creates the `basics` schema and the `pgcrypto` extension (for `gen_random_uuid()`). |
| `students_table.sql` | `basics.students`: `SERIAL` key, `NOT NULL`, `UNIQUE`, `CHECK (age >= 18)`, `DEFAULT NOW()`. |
| `data_types.sql` | `basics.products_basic`: `VARCHAR`, `TEXT`, `INTEGER`, `BIGINT`, `NUMERIC(10,2)` rounding, `BOOLEAN`, `DEFAULT`. |
| `other_data_types.sql` | `basics.app_events`: `UUID` keys, `JSONB` metadata, `TIMESTAMP`; querying JSON with `->>` and `?`. |
| `null_empty_string.sql` | `basics.value_examples`: difference between `NULL` and an empty string, `IS NULL`. |
| `constraints.sql` | `basics.accounts`: `NOT NULL UNIQUE`, `DEFAULT`, `CHECK`. |

### Part2 - querying and modifying rows

Uses a `products` table (electronics, furniture, stationery) in the default schema.

| File | What it covers |
| --- | --- |
| `base_file.sql` | Creates and seeds `products`; column aliases with `AS`. |
| `and_or_not.sql` | `AND`, `OR`, `NOT` filters. |
| `in_not_in_between.sql` | `IN`, `NOT IN`, `BETWEEN`. |
| `like_ilike_patterns.sql` | Pattern matching with `LIKE` and case-insensitive `ILIKE`. |
| `null_and_is_not_null.sql` | `IS NULL` / `IS NOT NULL`. |
| `orderby.sql` | `ORDER BY` ascending, descending and on multiple columns. |
| `limit_offset_pagination.sql` | Pagination with `LIMIT` and `OFFSET`. |
| `update_single_row.sql` | `UPDATE` one product by SKU. |
| `update_multiple_rows.sql` | Raising all stationery prices by 10%. |
| `delete_rows.sql` | Inserting a temporary row and deleting it with `RETURNING`. |

### Part3 - relational queries

Uses a small blog schema: `users`, `posts`, `comments`, `tags`, `post_tags`.

| File | What it covers |
| --- | --- |
| `tables.sql` | Creates and seeds the blog tables with foreign keys, `ON DELETE CASCADE`, a `CHECK` on post status and a composite primary key. |
| `aggregate_functions.sql` | `COUNT`, `COUNT(*) FILTER`, `SUM`, `AVG`, `MIN`, `MAX` over posts. |
| `count_distinct.sql` | Placeholder (empty file). |
| `group_by.sql` | Authors with at least two posts using `GROUP BY` and `HAVING`. |
| `inner_join.sql` | Published posts with author names via `INNER JOIN`. |
| `left_joins.sql` | Posts with their comments via `LEFT JOIN`. |
| `table_alias.sql` | Table aliases. |
| `subqueries.sql` | Posts with above-average views using a subquery. |
| `indexes.sql` | Single-column and composite indexes on `posts(status, views)`. |
| `transactions.sql` | Two updates wrapped in `BEGIN` / `COMMIT`. |

## How to run

Run the scripts against PostgreSQL with `psql`. The scripts create every table they use, so run the setup files first:

```bash
psql -U postgres -f Part1/mydb.sql
psql -U postgres -d mydb -f Part1/mydb_schema.sql   # schema "basics" + pgcrypto
psql -U postgres -d mydb -f Part1/students_table.sql # then any other Part1 file

psql -U postgres -d mydb -f Part2/base_file.sql      # creates products, before other Part2 files
psql -U postgres -d mydb -f Part3/tables.sql         # creates the blog tables, before other Part3 files
```

`gen_random_uuid()` is used for UUID keys in Part1, Part2 and Part3, which is why `mydb_schema.sql` enables `pgcrypto` (it is also built in from PostgreSQL 13).

## Tech

- PostgreSQL
- SQL

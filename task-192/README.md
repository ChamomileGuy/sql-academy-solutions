# Task #192: Search-to-View Conversion: Filtered vs Not

[Open on sql-academy.org](https://sql-academy.org/ru/trainer/tasks/192)

**Difficulty:** medium

## Description

Thesearchestable stores search queries on Kolesa:search_idis
the query,used_filterstells whether filters were applied (1—
yes,0— no). Thelisting_viewstable stores listing openings
from a search (search_idis the originating query).Product hypothesis: queries with filters lead to a listing view more often.
Check it — compute the search-to-view conversion separately for queries with
and without filters.For eachused_filtersvalue outputused_filters,searches_count(number of queries) andconversion_rate(the
share of queries that led to at least one listing view, as a percentage
rounded to two decimals). Sort byused_filtersascending.

## Expected fields

`used_filters`, `searches_count`, `conversion_rate`

## Solution

```sql
SELECT 
 used_filters, 
 COUNT(DISTINCT s.search_id) AS searches_count,
 ROUND(
  100.0 * COUNT(DISTINCT lv.search_id) / COUNT(DISTINCT s
            .search_id),
  2
 ) AS conversion_rate
FROM searches s
LEFT JOIN listing_views lv
 ON s.search_id = lv.search_id
GROUP BY s.used_filters
ORDER BY s.used_filters ASC;
```

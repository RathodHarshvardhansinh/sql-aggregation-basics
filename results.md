# Query Results

Dataset: Chinook. Run each query from `queries.sql` and paste a screenshot or the output beside it.
Values marked ✅ are the standard Chinook figures; verify them against your own run, and fill in the rest.

## Q1. Total customers
| total_customers |
|---|
| 59 ✅ |

## Q2. COUNT(*) vs COUNT(company)
| all_customers | customers_with_company |
|---|---|
| 59 ✅ | 10 ✅ (the rest are NULL) |

## Q3. Total revenue
| total_revenue |
|---|
| 2328.60 ✅ |

## Q4. Average invoice value
| avg_invoice_value |
|---|
| 5.65 ✅ |

## Q5. Min and max invoice
| min_invoice | max_invoice |
|---|---|
| 0.99 ✅ | 25.86 ✅ |

## Q6. Revenue per country (top rows)
| billingcountry | country_revenue |
|---|---|
| USA | 523.06 ✅ |
| Canada | 303.96 ✅ |
| France | 195.10 ✅ |
| Brazil | 190.10 ✅ |
| Germany | 156.48 ✅ |

## Q7. Tracks per genre
_Paste your output (Rock should be the largest)._

## Q8. Average track length per genre
_Paste your output._

## Q9. Top 5 customers by spend
_Paste your output._

## Q10. Countries with more than 5 invoices
_Paste your output._

## Observations

- Revenue is concentrated in a few countries, led by the USA.
- Rock dominates the catalog by track count.
- Only a small share of customers list a company, so `COUNT(company)` is far lower than `COUNT(*)`.

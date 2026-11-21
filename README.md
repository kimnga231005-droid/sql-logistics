# Logistics Delivery Performance Analysis

SQL analysis of shipment delays and freight costs for a logistics operation
moving cargo by sea, air and road.

## Business problem

The operations team needs to understand which carriers, routes and customer
segments drive late deliveries and high freight costs, so it can improve
service levels and control transport spend.

## Key questions

1. What share of shipments arrive on time, and how late are the delayed ones?
2. Which carriers and transport modes perform best on on-time delivery and cost per kg?
3. Which routes carry the highest delay risk and freight cost?
4. How do delivery performance and freight cost change over time?
5. Which customer segments are most affected by delays?

## Dataset

Synthetic dataset created for this project: 5,800 shipments from
January 2025 to October 2026, stored in SQLite (`data/logistics_pro.db`).

| Table | Description |
|---|---|
| `shipments` | One row per shipment: dates, weight, volume, freight cost, status |
| `carriers` | Carrier name, transport mode (Sea / Air / Road), HQ country |
| `customers` | Customer name, industry, country, tier (Gold / Silver / Bronze) |
| `locations` | Ports and warehouses with city, country, region |

The data includes realistic issues such as missing weights or costs,
cancelled shipments and shipments still in transit.

## Project structure

```
data/   SQLite database
sql/    Analysis queries
```

## How to run

```bash
sqlite3 -header -column data/logistics_pro.db
```

## Tools

SQLite, SQL, VS Code, Git
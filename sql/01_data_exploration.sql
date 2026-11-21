-- 01_data_exploration.sql
-- Purpose: understand the structure and quality of the shipment data.
-- Database: data/logistics_pro.db

-- Total number of shipments
SELECT COUNT(*) AS total_shipments FROM shipments;

-- Cargo categories handled
SELECT DISTINCT cargo_category FROM shipments;

-- Shipments with missing freight cost (data quality)
SELECT COUNT(*) AS missing_cost FROM shipments WHERE freight_cost_usd IS NULL;
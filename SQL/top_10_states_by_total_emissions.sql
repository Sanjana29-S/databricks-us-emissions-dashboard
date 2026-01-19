-- Purpose: Supports Databricks dashboard visualization for emissions analysis
-- Grain: State / County
-- Metric: Total CO₂ emissions, per-capita emissions
-- Data Source: EPA (2023)

SELECT state_abbr,
SUM(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE))
as Total_Emissions
FROM emissions_data
GROUP BY emissions_data.state_abbr
ORDER BY Total_Emissions DESC
LIMIT 10

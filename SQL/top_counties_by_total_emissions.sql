-- Purpose: Supports Databricks dashboard visualization for emissions analysis
-- Grain: State / County
-- Metric: Total CO₂ emissions, per-capita emissions
-- Data Source: EPA (2023)

SELECT county_state_name,
      population,
CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)
as Total_Emissions FROM emissions_data
ORDER BY Total_emissions DESC
LIMIT 10

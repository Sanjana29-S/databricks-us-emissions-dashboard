-- Purpose: Supports Databricks dashboard visualization for emissions analysis
-- Grain: State / County
-- Metric: Total CO₂ emissions, per-capita emissions
-- Data Source: EPA (2023)

SELECT latitude, longitude, `GHG emissions mtons CO2e` as Emissions
FROM emissions.default.emissions_data

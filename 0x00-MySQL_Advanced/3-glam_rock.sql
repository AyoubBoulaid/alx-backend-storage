-- Lists all bands with Glam rock as their main style, ranked by their longevity.
-- SELECT band_name, (IFNULL(split, YEAR(CURRENT_DATE())) - formed) AS lifespan
SELECT DISTINCT `band_name`,
                IFNULL(`split`, 2020) - `formed` as `lifespan`
  FROM `metal_bands` WHERE FIND_IN_SET('Glam rock', style)
  ORDER BY `lifespan` DESC;

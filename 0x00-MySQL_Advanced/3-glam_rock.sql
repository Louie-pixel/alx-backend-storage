-- Lists all bands with Glam rock as their main style, ranked by their longevity.
-- Column names are band_name and lifespan (in years until 2022)
-- Uses attributes formed and split for computing the lifespan

-- Select database
USE holberton;

-- Execute the query
SELECT band_name, 
       (IFNULL(split, 2022) - formed) AS lifespan
FROM metal_bands
WHERE FIND_IN_SET('Glam rock', IFNULL(style, '')) > 0
ORDER BY lifespan DESC;

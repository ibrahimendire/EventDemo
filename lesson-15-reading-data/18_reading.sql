-- SELECT writing_supply.supply_id, utensil_type, drawer_id, color, quantity
-- FROM writing_supply
-- LEFT JOIN pen_drawer ON writing_supply.supply_id = pen_drawer.supply_id
-- WHERE refill = true;

-- 
-- SELECT writing_supply.supply_id, utensil_type, drawer_id, quantity FROM writing_supply
-- LEFT JOIN pencil_drawer ON writing_supply.supply_id = pencil_drawer.supply_id
-- WHERE refill = true
-- 
-- UNION
-- 
-- SELECT writing_supply.supply_id, utensil_type, drawer_id, quantity FROM writing_supply
-- RIGHT JOIN pen_drawer ON writing_supply.supply_id = pen_drawer.supply_id
-- WHERE refill = true
-- ORDER BY supply_id;

-- 
-- SELECT supply_id FROM writing_supply
-- WHERE utensil_type = "Pen";
/* First result set contains the supply_id values 1, 2, and 5. */

-- SELECT drawer_id, color FROM pen_drawer
-- WHERE quantity >= 60 AND supply_id = 5;

-- SELECT drawer_id, color FROM pen_drawer
-- WHERE supply_id IN (SELECT supply_id FROM writing_supply WHERE utensil_type = "Pen");


-- SELECT drawer_id, color FROM pen_drawer
-- WHERE supply_id IN (SELECT supply_id FROM writing_supply WHERE utensil_type = "Pen")
-- AND quantity >= 60;


-- SELECT drawer_id, color FROM pen_drawer
-- WHERE supply_id = (SELECT MAX(supply_id) FROM writing_supply WHERE utensil_type = "Pen")
-- AND quantity >= 60;
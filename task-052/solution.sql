INSERT INTO GoodTypes (good_type_id, good_type_name)
SELECT 
 MAX(good_type_id) + 1,
 'auto'
FROM GoodTypes;

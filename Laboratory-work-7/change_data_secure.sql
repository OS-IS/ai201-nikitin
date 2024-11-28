CREATE FUNCTION change_data_secure(attribute1 VARCHAR, attribute2 VARCHAR)
RETURNS VOID AS $$
BEGIN
    EXECUTE format('UPDATE teacher SET name = %L WHERE name = %L', attribute2, attribute1);
END;
$$ LANGUAGE plpgsql;

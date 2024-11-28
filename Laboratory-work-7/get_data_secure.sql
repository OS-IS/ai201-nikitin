CREATE FUNCTION get_data_secure(attribute_value VARCHAR)
RETURNS TABLE(t_id INTEGER, name VARCHAR, post VARCHAR, confidential_level INTEGER) AS $$
BEGIN
    RETURN QUERY EXECUTE
    'SELECT * FROM teacher WHERE name = $1'
    USING attribute_value;
END;
$$ LANGUAGE plpgsql;

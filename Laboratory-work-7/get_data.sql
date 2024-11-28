CREATE OR REPLACE FUNCTION get_data(attribute_value VARCHAR)
RETURNS TABLE(t_id INTEGER, name VARCHAR, post VARCHAR, confidential_level INTEGER) AS $$
DECLARE
    query TEXT;
BEGIN
    query := 'SELECT * FROM teacher WHERE name = ''' || attribute_value || ''';';
    RETURN QUERY EXECUTE query;
END;
$$ LANGUAGE plpgsql;

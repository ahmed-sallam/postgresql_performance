
-- Insert 1,000,000 records into products_numeric table
DO $$
DECLARE
    i INTEGER;
    start_time TIMESTAMP;
    end_time TIMESTAMP;

BEGIN
    start_time := clock_timestamp();
    FOR i IN 1..1000000 LOOP
        INSERT INTO products_numeric (product_name, price, description)
        VALUES (
            'Product ' || i,
            (RANDOM() * 1000 + 1)::numeric(10, 2), -- Price between 1 and 1000
            'Description for Product ' || i
        );
    END LOOP;
    end_time := clock_timestamp();
    RAISE NOTICE 'Total Time Taken for 1000000 Insertions: %',  end_time - start_time;
END $$;

DO $$
DECLARE
    i INTEGER;
    start_time TIMESTAMP;
    end_time TIMESTAMP;
    time_taken INTERVAL;
    total_time INTERVAL := '0 seconds';
BEGIN
    FOR i IN 1..500 LOOP
        -- Start the timer
        start_time := clock_timestamp();

        -- Example: SELECT * FROM your_table WHERE some_condition;

        -- End the timer
        end_time := clock_timestamp();

        -- Calculate the time taken for this request
        time_taken := end_time - start_time;

        -- Add the time taken for this request to the total time
        total_time := total_time + time_taken;

        -- Output the time taken for each request
        --RAISE NOTICE 'Request % - Time Taken: %', i, time_taken;
    END LOOP;

    -- Calculate the total time taken for all requests
    RAISE NOTICE 'Total Time Taken for 100 Requests: %', total_time;

    -- Calculate the number of requests per second (RPS)
    RAISE NOTICE 'Requests Per Second (RPS): %', 500 / EXTRACT(EPOCH FROM total_time);
END $$;

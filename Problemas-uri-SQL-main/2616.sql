--by filipe
SELECT
    customers.id,
    customers.name
FROM
    customers
        LEFT JOIN locations
            ON customers.id = locations.id_customers
WHERE
    locations IS NULL
ORDER BY
    customers.id
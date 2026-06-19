/* {{ config(materialized='view') }} */
/* Even without the above, by default, your table will be view unless explicity delcared either in the materialized config or dbt_project.yml file */

    SELECT
        customer_id,
        CONCAT(first_name, ' ', last_name) as customer_name,
        email as email_address,
        address as billing_address
    FROM raw.customer
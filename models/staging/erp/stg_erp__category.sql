with 

source as (

    select * from {{ source('erp', 'category') }}

),

renamed as (

    select
        cast(id as int) category_pk
        , cast(categoryname as varchar) category_name
        , cast(description as varchar) category_description
    from source

)

select * from renamed
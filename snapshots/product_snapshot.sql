{% snapshot product_snapshot %}

{{
    config(
        target_schema='SNAPSHOTS',
        unique_key='product_id',
        strategy='timestamp',
        updated_at='last_updated'
    )
}}

select * from demo.public.product

{% endsnapshot %}
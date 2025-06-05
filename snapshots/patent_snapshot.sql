{% snapshot patient_snapshot %}
    {{ config(
        unique_key='patient_id',
        strategy='check',
        check_cols=['address', 'phone_digits', 'email', 'emergency_contact', 'emergency_phone_digits']
    ) }}

    SELECT * 
    FROM {{ ref('patients_tb') }}

{% endsnapshot %}
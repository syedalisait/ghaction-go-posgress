CREATE TYPE user_status_type AS ENUM(
    'approved_limited',
    'approved',
    'declined',
    'blocked',
    'pending'
);

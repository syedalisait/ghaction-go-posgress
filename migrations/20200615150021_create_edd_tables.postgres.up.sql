-- Create users table
SET TIMEZONE = 'UTC';

CREATE SEQUENCE users_id_seq;

CREATE TABLE users (
    id INTEGER PRIMARY KEY DEFAULT nextval('users_id_seq'),
    created TIMESTAMP NOT NULL DEFAULT NOW(),
    updated TIMESTAMP NOT NULL DEFAULT NOW(),
    applicant_id VARCHAR NOT NULL,
    uuid UUID NOT NULL UNIQUE,
    status user_status_type NOT NULL DEFAULT 'pending'
);

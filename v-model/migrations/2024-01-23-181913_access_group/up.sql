CREATE TABLE access_groups (
  id UUID PRIMARY KEY,
  name VARCHAR UNIQUE NOT NULL,
  permissions JSONB NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  deleted_at TIMESTAMPTZ
);
SELECT diesel_manage_updated_at('access_groups');

ALTER TABLE api_user ADD COLUMN groups UUID[] NOT NULL DEFAULT ARRAY[]::UUID[];
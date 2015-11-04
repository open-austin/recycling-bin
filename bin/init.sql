CREATE EXTENSION "uuid-ossp";

CREATE TABLE locations (
   id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
   name text,
   coordinates point,
   score int,
   address text,
   reports jsonb
);

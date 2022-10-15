CREATE TABLE foos (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    counter INT NOT NULL
);

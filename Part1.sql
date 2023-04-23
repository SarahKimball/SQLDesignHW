CREATE TABLE Doctor (
    id INTEGER PRIMARY KEY,
    name TEXT,
    specialty TEXT
);

CREATE TABLE Patient (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    gender TEXT,
    address TEXT,
    phone TEXT
);

CREATE TABLE Visit (
    id INTEGER PRIMARY KEY,
    doctor_id INTEGER,
    patient_id INTEGER,
    date DATE,
    diagnosis TEXT,
    FOREIGN KEY (doctor_id) REFERENCES Doctor(id),
    FOREIGN KEY (patient_id) REFERENCES Patient(id)
);

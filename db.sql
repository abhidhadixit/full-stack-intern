CREATE TABLE HistoricalEvents(
    event_id CHAR(36) PRIMARY KEY,
    event_name VARCHAR(255) NOT NULL,
    description TEXT,
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    duration_minutes INTEGER,
    parent_event_id CHAR(36),
    metadata JSON,
    FOREIGN KEY (parent_event_id) REFERENCES 
  HistoricalEvents(event_id)
);


CREATE INDEX idx_start_date ON  HistoricalEvents(start_date);
CREATE INDEX idx_end_date ON  HistoricalEvents(end_date);

INSERT INTO historical_events (event_id, event_name, description, start_date, end_date, duration_minutes, parent_event_id)
VALUES (
    '9b8a7c6d-5e4f-3a2b-1c0d-9e8f7a6b5c4d','Marketing Campaign Launch','Announcing ArchaeoData services to the public.',
    '2023-01-10 14:00:00','2023-01-10 16:00:00',120,NULL
);

INSERT INTO HistoricalEvents (event_id, event_name, description, start_date, end_date, duration_minutes, parent_event_id, metadata)
VALUES (
    'f7e6d5c4-b3a2-1098-7654-3210fedcba98','Phase 1 review','meeting regarding client services','2023-01-01 10:30:00','2023-01-01 11:00:00',
    30,'a1b2c3d4-e5f6-7890-1234-567890abcdef','{"sourceFile": "sample_.txt"}'
);

INSERT INTO HistoricalEvents (event_id, event_name, description, start_date, end_date, duration_minutes, parent_event_id, metadata)
VALUES (
    '11223344-5566-7788-9900-aabbccddeeff',
    'Internal Review Meeting',
    'Reviewing initial research findings.',
    '2023-01-01 10:45:00',
    '2023-01-01 11:15:00',
    30,
    'f7e6d5c4-b3a2-1098-7654-3210fedcba98',
    '{"sourceFile": "sample_data.txt"}'
);


INSERT INTO HistoricalEvents (event_id, event_name, description, start_date, end_date, duration_minutes, parent_event_id, metadata)
VALUES (
    '9b8a7c6d-5e4f-3a2b-1c0d-9e8f7a6b5c4d',
    'Data sourcing',
    'Identifying and Acquiring relevent datasets',
    '2023-01-10 10:00:00',
    '2023-01-10 16:00:00',
    360,
    NULL,
    '{"sourceFile": "sample_data"}'
);

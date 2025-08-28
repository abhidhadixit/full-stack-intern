Database Design

This design is simple and effective for the intended relationships.

Relation Schema
The HistoricalEvents table stores the event data.

Primary Key
- event_id: CHAR(36)  
  - Stores a UUID as the primary key  
  - Guarantees a globally unique identifier for each event, which is essential for managing data from various sources  

Hierarchical Connections
- parent_event_id: CHAR(36)  
  - A self-referencing foreign key  
  - Enables hierarchical relationships between events (for example, parent/child events), allowing easy tracking of timelines  

Types of Data
- UUIDs: Stored as CHAR(36), a common practice in MySQL  
- Dates: TIMESTAMP is used for start_date and end_date to precisely capture both date and time details  


Types of Data

- UUIDs: Stored as CHAR(36), which is a common practice in MySQL  
- Dates: TIMESTAMP is used for start_date and end_date to precisely capture both date and time details  
- Metadata: JSON serves as the metadata column, offering a versatile schema for any associated unstructured data tied to an event  
- Indexing: start_date and end_date are indexed to enhance the performance of queries that search for or filter events within a designated date range, as required by the API search endpoints  

 Setup Instructions

Step 1: Create Database

CREATE DATABASE Schemadb;

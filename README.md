<html>
  <head>
  </head>

  <body>
<h2>Database design<h2>

<p>This design is simple and effective for the intended relationships.</p>

<p>A relation schema: HistoricalEvents table stores the data.</p>

<p>UUID as Primary Key: The event_id is specified as CHAR(36) to hold a UUID. This guarantees a globally unique identifier for each event, which is essential for managing data from various sources.</p>

<p>Hierarchical Connections: The relationship between parent and child is handled with a self-referencing foreign key in the parent_event_id column. This enables us to effortlessly track timelines and hierarchical events.</p>

<h4>Types of Data:</h4>

Using CHAR(36) for UUIDs is a common practice in MySQL.

TIMESTAMP is employed for start_date and end_date to precisely capture date and time details.

JSON serves as the metadata column, offering a versatile schema for any associated unstructured data tied to an event.

Indexing: start_date and end_date are indexed to enhance the performance of queries that search for or filter events within a designated date range, as needed by the API search endpoints


Step 1: Creating Database 
Create database Schemadb;
Step 2: Use Schemadb;

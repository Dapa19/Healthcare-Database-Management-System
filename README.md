<h1 align="center">Healthcare Database Management System</h1>

<p align="center">
    <strong>A SQL-based system to manage patient records, doctor information, appointments, and billing in a healthcare environment.</strong>
</p>

## Table of Contents

<ul>
    <li><a href="#introduction">Introduction</a></li>
    <li><a href="#database-schema">Database Schema</a></li>
    <li><a href="#queries">Queries</a></li>
    <li><a href="#how-to-use">How to Use</a></li>
    <li><a href="#contributing">Contributing</a></li>
</ul>

<h2 id="introduction">Introduction</h2>

<p>This project demonstrates a basic SQL-based system to manage healthcare-related data. The database consists of multiple tables that store information about patients, doctors, appointments, medical records, and billing. The SQL scripts provided include table creation, inserting dummy data, and various queries to extract meaningful information from the database.</p>

<h2 id="database-schema">Database Schema</h2>

<p>The database consists of the following tables:</p>
<ul>
    <li><strong>Patients</strong>: Stores patient information such as name, date of birth, gender, and contact details.</li>
    <li><strong>Doctors</strong>: Stores doctor information including name, specialty, and contact details.</li>
    <li><strong>Appointments</strong>: Records information about patient appointments with doctors.</li>
    <li><strong>MedicalRecords</strong>: Stores medical records for each patient, including diagnosis and treatment details.</li>
    <li><strong>Billing</strong>: Manages billing information for patient appointments.</li>
</ul>

<h2 id="queries">Queries</h2>

<p>Some example queries included in this repository are:</p>
<ul>
    <li><strong>Detailed Visit History:</strong> Fetches a detailed history of visits, including diagnosis and treatment, for a specific patient.</li>
    <li><strong>Doctor Appointment Count:</strong> Counts the number of appointments each doctor has handled.</li>
    <li><strong>Total Billing Amount:</strong> Retrieves the total billing amount for a specific patient.</li>
</ul>

<h2 id="how-to-use">How to Use</h2>

<ol>
    <li>Clone this repository to your local machine.</li>
    <li>Create a new database in your SQL environment.</li>
    <li>Run the SQL scripts to create tables and insert the dummy data.</li>
    <li>Execute the provided queries to interact with the database.</li>
</ol>

<h2 id="contributing">Contributing</h2>

<p>Contributions are welcome! If you have suggestions for improvements or additional features, feel free to open an issue or submit a pull request.</p>

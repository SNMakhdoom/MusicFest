const mysql = require('mysql2/promise');

const pool = mysql.createPool({
    host: 'cis3368dall.cmjen6ln1nx7.us-east-2.rds.amazonaws.com',
    user: 'admin',
    password: 'xxxx',
    database: 'event_db'
});

const saveContactForm = async (name, email, message) => {
    try {
        const connection = await pool.getConnection();
        const query = 'INSERT INTO contact_forms (name, email, message) VALUES (?, ?, ?)';
        await connection.execute(query, [name, email, message]);
        connection.release();
    } catch (error) {
        throw new Error('Error saving contact form: ' + error.message);
    }
};

module.exports = {
    saveContactForm
};

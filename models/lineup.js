const mysql = require('mysql2/promise');

const pool = mysql.createPool({
    host: 'cis3368dall.cmjen6ln1nx7.us-east-2.rds.amazonaws.com',
    user: 'admin',
    password: 'pakistan123',
    database: 'event_db'
});

const getLineup = async () => {
    try {
        const connection = await pool.getConnection();
        const [rows] = await connection.execute('SELECT * FROM lineup');
        connection.release();
        return rows;
    } catch (error) {
        throw new Error('Error retrieving lineup: ' + error.message);
    }
};

module.exports = {
    getLineup
};

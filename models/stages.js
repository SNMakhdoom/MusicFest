const mysql = require('mysql2/promise');

const pool = mysql.createPool({
    host: 'cis3368dall.cmjen6ln1nx7.us-east-2.rds.amazonaws.com',
    user: 'admin',
    password: 'pakistan123',
    database: 'event_db'
});

const getStages = async () => {
    try {
        const connection = await pool.getConnection();
        const [rows] = await connection.execute('SELECT * FROM stages');
        connection.release();
        return rows;
    } catch (error) {
        throw new Error('Error retrieving stages: ' + error.message);
    }
};



module.exports = {
    getStages
};

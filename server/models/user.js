//const mysql = require('mysql2');
const bcrypt = require('bcryptjs');
//require('dotenv').config();
const db = require('../db');




// Function to create a new user
const createUser = (name, email, password, callback) => {
    // First, hash the password
    bcrypt.hash(password, 10, (err, hashedPassword) => {
        if (err) {
            callback(err, null);
            return;
        }

        const query = 'INSERT INTO users (name, email, password) VALUES (?, ?, ?)';
        db.query(query, [name, email, hashedPassword], (err, results) => {
            if (err) {
                callback(err, null);
                return;
            }
            callback(null, results.insertId); // Returning the user ID after insert
        });
    });
};

// Function to get a user by email (for login purposes)
const getUserByEmail = (email, callback) => {
    const query = 'SELECT * FROM users WHERE email = ?';
    db.query(query, [email], (err, results) => {
        if (err) {
            callback(err, null);
            return;
        }
        callback(null, results[0]); // Returning the first user matched by email
    });
};

// Export functions to use in routes
module.exports = {
    createUser,
    getUserByEmail
};

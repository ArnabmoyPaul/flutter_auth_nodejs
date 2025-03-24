const express = require('express');
const authRouter = express.Router();
const bcrypt = require('bcryptjs');
const db = require('../db');
const jwt = require('jsonwebtoken');

//Sign Up
authRouter.post("/api/signup", async (req, res) => {
    try {
        const { name, email, password } = req.body;

        // Check if the user already exists by email
        db.query("SELECT * FROM users WHERE email = ?", [email], async (err, result) => {
            if (err) {
                return res.status(500).json({ error: "Database error", details: err.message });
            }
            if (result.length > 0) {
                return res.status(400).json({ message: "User with the same Email already exists!" });
            }

            // Hash the password
            const hashedPassword = await bcrypt.hash(password, 12);

            // Insert the new user into the database
            db.query("INSERT INTO users (name, email, password) VALUES (?, ?, ?)", 
                [name, email, hashedPassword], (err, result) => {
                    if (err) {
                        return res.status(500).json({ error: "Database error", details: err.message });
                    }
                    // Return the user data (excluding password for security)
                    res.json({ 
                        id: result.insertId,
                        name,
                        email
                    });
                }
            );
        });

    } catch (e) {
        res.status(500).json({ error: e.message });
    }
});

//Sigh In
// Sign In route
authRouter.post("/api/signin", async (req, res) => {
    try {
      const { email, password } = req.body;
  
      // Check if the user exists
      db.query("SELECT * FROM users WHERE email = ?", [email], async (err, results) => {
        if (err) {
          return res.status(500).json({ error: "Database error", details: err.message });
        }
        if (results.length === 0) {
          return res.status(401).json({ message: "Invalid email or password" });
        }
  
        const user = results[0];
  
        // Compare the provided password with the stored hash
        const isPasswordValid = await bcrypt.compare(password, user.password);
        
        if (!isPasswordValid) {
          return res.status(401).json({ message: "Invalid email or password" });
        }
  
        const token = jwt.sign(
          { id: user.id },
          process.env.JWT_SECRET,
          { expiresIn: '1h' }
        );
  
        // ✅ Corrected Response (with token)
        res.json({
          id: user.id,
          name: user.name,
          email: user.email,
          token: token // <-- Important Fix here
        });
      });
    } catch (e) {
      res.status(500).json({ error: e.message });
    }
  });
  

module.exports = authRouter;
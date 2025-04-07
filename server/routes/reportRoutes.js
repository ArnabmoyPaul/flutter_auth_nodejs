const express = require('express');
const router = express.Router();
const verifyToken = require('../middleware/auth');

// Submit report
router.post('/reports', verifyToken, async (req, res) => {
  try {
    const { tasks } = req.body;
    const userId = req.userId;

    // Validate input
    if (!tasks || !Array.isArray(tasks)) {
      return res.status(400).json({ message: 'Invalid report data' });
    }

    // Create report object
    const newReport = {
      user: userId,
      tasks: tasks,
      timestamp: new Date()
    };

    // Save to database (using MongoDB/mongoose example)
    const report = await Report.create(newReport);

    res.status(201).json({
      message: 'Report submitted successfully',
      reportId: report._id
    });

  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Server error' });
  }
});
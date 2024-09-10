// resumeRoutes routes
const express = require('express');
const { getResume, updateResume } = require('../controllers/resumeController');

const router = express.Router();

router.get('/', getResume);
router.put('/', updateResume);

module.exports = router;

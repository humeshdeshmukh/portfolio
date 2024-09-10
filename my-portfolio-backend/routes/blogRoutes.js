// blogRoutes routes
const express = require('express');
const { getAllPosts, createPost } = require('../controllers/blogController');

const router = express.Router();

router.get('/', getAllPosts);
router.post('/', createPost);

module.exports = router;

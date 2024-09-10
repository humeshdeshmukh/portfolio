// authMiddleware middleware
const jwt = require('jsonwebtoken');

// Middleware to protect routes
exports.protect = (req, res, next) => {
  // Authentication logic here
};

// Middleware to check user roles
exports.authorize = (...roles) => {
  return (req, res, next) => {
    // Authorization logic here
  };
};

// errorMiddleware middleware
// Middleware to handle errors
exports.errorHandler = (err, req, res, next) => {
    res.status(err.statusCode || 500).json({
      success: false,
      error: err.message || 'Server Error',
    });
  };
  
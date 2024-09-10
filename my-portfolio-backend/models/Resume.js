// Resume model
const mongoose = require('mongoose');

const ResumeSchema = new mongoose.Schema({
  content: String,
});

module.exports = mongoose.model('Resume', ResumeSchema);

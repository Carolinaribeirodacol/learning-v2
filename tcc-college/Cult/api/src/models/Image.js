const mongoose = require("../../config/database");

const imageSchema = mongoose.Schema({
  imageable_id: {
    type: Number,
    ref: "user",
    required: true,
  },
  imageable_type: {
    type: String,
    required: true,
  },
  order: {
    type: Number,
    required: true,
    default: 0,
  },
  created_at: {
    type: Date,
    default: Date.now,
  },
  updated_at: {
    type: Date,
    default: Date.now,
  },
  deleted_at: {
    type: Date,
  },
});

module.exports = mongoose.model("Image", imageSchema);

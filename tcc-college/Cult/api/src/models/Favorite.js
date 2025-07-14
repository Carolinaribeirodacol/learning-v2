const mongoose = require("../../config/database");

const favoriteSchema = mongoose.Schema({
  user_id: {
    type: Number,
    required: true,
  },
  favoritable_id: {
    type: Number,
    required: true,
  },
  favoritable_type: {
    type: String,
    required: true,
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
    default: Date.now,
  },
});

module.exports = mongoose.model("Favorite", favoriteSchema);

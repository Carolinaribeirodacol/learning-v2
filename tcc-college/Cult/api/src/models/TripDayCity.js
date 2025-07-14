const mongoose = require("../../config/database");

const placeSchema = mongoose.Schema({
  city: {
    type: mongoose.Schema.Types.ObjectId,
    ref: "city",
    required: true,
  },
  description: {
    type: String,
  },
  score: {
    type: Boolean,
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

module.exports = mongoose.model("TripDayCity", placeSchema);

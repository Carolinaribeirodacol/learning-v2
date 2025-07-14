const mongoose = require("../../config/database");

const placeReviewSchema = mongoose.Schema({
  place: {
    type: Number,
    ref: "place",
    required: true,
  },
  user: {
    type: mongoose.Schema.Types.ObjectId,
    ref: "user",
    required: true,
  },
  score: {
    type: Boolean,
    required: true,
  },
  comment: {
    type: String,
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

module.exports = mongoose.model("PlaceReview", placeReviewSchema);

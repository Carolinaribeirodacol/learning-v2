const mongoose = require("../../config/database");

const stateSchema = mongoose.Schema({
  name: {
    type: String,
    required: true,
  },
  country_id: {
    type: Number,
    required: true,
  },
  country_code: {
    type: String,
    required: true,
  },
  state_code: {
    type: String,
    required: true,
  },
  latitude: {
    type: Number,
    required: true,
  },
  longitude: {
    type: Number,
    required: true,
  },
});

module.exports = mongoose.model("State", stateSchema);

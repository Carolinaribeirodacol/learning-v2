const mongoose = require("../../config/database");

const citySchema = mongoose.Schema({
  name: {
    type: String,
  },
  state_id: {
    type: Number,
  },
  state_code: {
    type: String,
  },
  country_id: {
    type: Number,
  },
  country_code: {
    type: String,
  },
  image: {
    type: String,
  },
  featured: {
    type: Boolean,
    default: false,
  },
  latitude: {
    type: Number,
  },
  longitude: {
    type: Number,
  },
});

module.exports = mongoose.model("City", citySchema);

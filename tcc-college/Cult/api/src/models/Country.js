const mongoose = require("../../config/database");

const countrySchema = mongoose.Schema({
  name: {
    type: String,
  },
  iso3: {
    type: String,
  },
  iso2: {
    type: String,
  },
  phone_code: {
    type: Number,
  },
  capital: {
    type: String,
    required: true,
  },
  currency: {
    type: String,
  },
  currency_symbol: {
    type: String,
  },
  tld: {
    type: String,
  },
  native: {
    type: String,
  },
  subregion: {
    type: String,
  },
  timezones: {
    type: Array,
  },
  translations: {
    type: Object,
  },
  latitude: {
    type: Number,
    required: true,
  },
  longitude: {
    type: Number,
    required: true,
  },
  emoji: {
    type: String,
  },
  emojiU: {
    type: String,
  },
});

module.exports = mongoose.model("Country", countrySchema);

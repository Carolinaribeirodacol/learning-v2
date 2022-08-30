const mongoose = require('../../config/database');
const citySchema = mongoose.Schema({
    name: {
        type: String,
    },
    country: {
      type: String,
    },
});

module.exports = mongoose.model('city', citySchema);

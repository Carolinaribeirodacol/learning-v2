const TripDayCity = require("../models/TripDayCity");
const factory = require("./handlerFactory");

exports.index = factory.index(TripDayCity);
exports.show = factory.show(TripDayCity);
exports.store = factory.store(TripDayCity);
exports.update = factory.update(TripDayCity);
exports.destroy = factory.destroy(TripDayCity);

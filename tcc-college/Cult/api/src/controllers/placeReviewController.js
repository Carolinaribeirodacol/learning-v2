const PlaceReview = require("../models/PlaceReview");
const factory = require("./handlerFactory");

exports.index = factory.index(PlaceReview);
exports.show = factory.show(PlaceReview);
exports.store = factory.store(PlaceReview);
exports.update = factory.update(PlaceReview);
exports.destroy = factory.destroy(PlaceReview);

const Image = require("../models/Image");
const factory = require("./handlerFactory");

exports.index = factory.index(Image);
exports.show = factory.show(Image);
exports.store = factory.store(Image);
exports.update = factory.update(Image);
exports.destroy = factory.destroy(Image);

const User = require('../models/User');
const APIFeatures = require('../utils/apiFeatures');

exports.index = async (req, res) => {
  try {
    const features = new APIFeatures(User.find(), req.query)
      .filter()
      .sort()
      .limitFields()
      .paginate();

    const users = await features.query;

    res.status(200).json({
      results: users.length,
      data: users,
    });
  } catch (error) {
    res.status(404).json({
      message: error,
    });
  }
};

exports.store = async (req, res) => {
  try {
    const user = await User.create(req.body);

    res.status(201).json(user);
  } catch (error) {
    res.status(400).json({
      message: error,
    });
  }
};

exports.show = async (req, res) => {
  try {
    const user = await User.findById(req.params.id);

    res.status(200).json({
      data: {
        user,
      },
    });
  } catch (error) {
    res.status(404).json({
      message: error,
    });
  }
};

exports.update = async (req, res) => {
  try {
    const user = await User.findByIdAndUpdate(req.params.id, req.body, {
      new: true,
      runValidators: true,
    });

    res.status(200).json({
      user,
    });
  } catch (error) {
    res.status(404).json({
      message: error,
    });
  }
};

exports.destroy = async (req, res) => {
  try {
    await User.findByIdAndDelete(req.params.id);

    res.status(204).json(null);
  } catch (error) {
    res.status(404).json({
      message: error,
    });
  }
};

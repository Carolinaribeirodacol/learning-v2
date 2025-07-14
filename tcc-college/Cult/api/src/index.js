require("dotenv/config");
const cors = require("cors");
const express = require("express");
const jwt = require("jsonwebtoken");
const rootRoutes = require("./routes/rootRoutes");
const userRoutes = require("./routes/userRoutes");
const cityRoutes = require("./routes/cityRoutes");
const stateRoutes = require("./routes/stateRoutes");
const countryRoutes = require("./routes/countryRoutes");
const imageRoutes = require("./routes/imageRoutes");
const favoriteRoutes = require("./routes/favoriteRoutes");
const placeRoutes = require("./routes/placeRoutes");
const placeReviewRoutes = require("./routes/placeReviewRoutes");
const tripRoutes = require("./routes/tripRoutes");
const tripDayRoutes = require("./routes/tripDayRoutes");
const tripDayCityRoutes = require("./routes/tripDayCityRoutes");

const app = express();
const port = process.env.PORT || 8085;

function checkPermission(req, res, next) {
  if (req.path != "/login" && req.path != "/register") {
    const token = req.headers["authorization"];
    if (!token)
      return res.status(401).send({ message: "Token não informado!" });
    jwt.verify(token, process.env.TOKEN_SECRET, function (err, decoded) {
      if (err) return res.status(500).send({ message: "Acesso negado" });
      req.userId = decoded.id;
      next();
    });
  } else {
    next();
  }
}

app.listen(port, function () {
  console.log("Running Cult on Port " + port);
});
app.use(express.json());
// app.use(checkPermission);
app.use(cors());

app.use("/", rootRoutes);
app.use("/api/v1/users", userRoutes);
app.use("/api/v1/cities", cityRoutes);
app.use("/api/v1/states", stateRoutes);
app.use("/api/v1/countries", countryRoutes);
app.use("/api/v1/images", imageRoutes);
app.use("/api/v1/favorites", favoriteRoutes);
app.use("/api/v1/places", placeRoutes);
app.use("/api/v1/place-reviews", placeReviewRoutes);
app.use("/api/v1/trips", tripRoutes);
app.use("/api/v1/trip-days", tripDayRoutes);
app.use("/api/v1/trip-day-cities", tripDayCityRoutes);

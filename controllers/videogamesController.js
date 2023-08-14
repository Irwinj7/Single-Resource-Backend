const express = require("express");
const videogames = express.Router();

const {
  getAllVideogames,
  getVideogame,
  createVideogame,
  deleteVideogame,
  updateVideogame,
} = require("../queries/videogames");
const { checkName, checkBoolean, validateURL } = require("../validations/checkVideogames.js");
const aboutsController = require("./aboutsController.js");
videogames.use("/:videogamesId/abouts", aboutsController);

// INDEX
videogames.get("/", async (req, res) => {
    const allVideogames = await getAllVideogames();
    if (allVideogames[0]) {
      res.status(200).json(allVideogames);
    } else {
      res.status(500).json({ error: "server error" });
    }
});

// SHOW
videogames.get("/:id", async (req, res) => {
  const id = req.params.id;
  const videogame = await getVideogame(id);
  if (videogame) {
    res.json(videogame);
  } else {
    res.status(404).json({ error: "not found" });
  }
});

// CREATE
videogames.post("/", checkName, checkBoolean, validateURL, async (req, res) => {
  try {
    const videogame = await createVideogame(req.body);
    res.json(videogame);
  } catch (error) {
    res.status(400).json({ error: error });
  }
});

// DELETE
videogames.delete("/:id", async (req, res) => {
  const { id } = req.params;
  const deletedVideogame = await deleteVideogame(id);
  if (deletedVideogame.id) {
    res.status(200).json(deletedVideogame);
  } else {
    res.status(404).json("Videogame not found");
  }
});

// UPDATE
videogames.put("/:id", checkName, checkBoolean, validateURL, async (req, res) => {
  const { id } = req.params;
  const updatedVideogame = await updateVideogame(id, req.body);
  res.status(200).json(updatedVideogame);
});

module.exports = videogames;
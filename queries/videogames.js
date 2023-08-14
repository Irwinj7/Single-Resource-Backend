const db = require("../db/dbConfig.js");

// ALL Videogames
const getAllVideogames = async () => {
    try {
      const allVideogames = await db.any("SELECT * FROM videogames");
      return allVideogames;
    } catch (error) {
      return error;
    }
};

// ONE Videogame
const getVideogame = async (id) => {
  try {
    const oneVideogame = await db.one("SELECT * FROM videogames WHERE id=$1", id);
    return oneVideogame;
  } catch (error) {
    return error;
  }
};

// CREATE
const createVideogame = async (videogame) => {
  try {
    const newVideogame = await db.one(
      "INSERT INTO videogames (name, url, genre,is_favorite) VALUES($1, $2, $3, $4) RETURNING *",
      [videogame.name, videogame.url, videogame.genre, videogame.is_favorite]
    );
    return newVideogame;
  } catch (error) {
    return error;
  }
};

// DELETE
const deleteVideogame = async (id) => {
  try {
    const deletedVideogame = await db.one(
      "DELETE FROM videogames WHERE id = $1 RETURNING *",
      id
    );
    return deletedVideogame;
  } catch (error) {
    return error;
  }
};

// UPDATE
const updateVideogame = async (id, videogame) => {
  try {
    const updatedVideogame = await db.one(
      "UPDATE videogames SET name=$1, url=$2, genre=$3, is_favorite=$4 where id=$5 RETURNING *",
      [videogame.name, videogame.url, videogame.genre, videogame.is_favorite, id]
    );
    return updatedVideogame;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllVideogames,
  getVideogame,
  createVideogame,
  deleteVideogame,
  updateVideogame
};
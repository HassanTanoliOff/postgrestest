import pool from "../config/db";

export const getAllService = async () => {
  const result = await pool.query("select * From users");
  return result.rows;
};
export const getByIdService = async (id) => {
  const result = await pool.query("SELECT * from users where id= $1 ", [id]);
  return result.rows[0];
};
export const createUserService = async (name, email) => {
  const result = await pool.query(
    "Insert into users (name,email) values($1,$2) Returning * ",
    [name, email],
  );
  return result.rows[0];
};
export const updateUserService = async (id, name, email) => {
  const result = await pool.query(
    "UPDATE users set name=$1 , email=$2 Where id=$3 Returning * ",
    [name, email, id],
  );
  return result.rows[0];
};
export const deleteUserService = async (id) => {
  const result = await pool.query(
    "Delete from user where id = $1 Returning *",
    [id],
  );
  return result.rows[0];
};

import express from "express";
const router = express.Router();

router.get("/", getAll);
router.post("/", addUser);
router.get("/:id", getById);
router.patch("/update/:id", updateUser);
router.delete("delete/:id", deleteUser);

export default router;

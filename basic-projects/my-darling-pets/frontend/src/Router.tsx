import { Routes, Route } from "react-router-dom";
import { Home } from "./pages/Home";
import { Login } from "./pages/Login";
import { Pets } from "./pages/Pets";
import { Task } from "./pages/Task";

export function Router() {
  return (
    <Routes>
      <Route path="/" element={<Home />}/>
      <Route path="/login" element={<Login />}/>
      <Route path="/tarefas" element={<Task />}/>
      <Route path="/pets" element={<Pets />}/>
    </Routes>
  );
}
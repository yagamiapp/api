import Elysia from "elysia";


export const websocket = new Elysia()
  .ws("/ws", {
    message: (ws, message) => {

    }
  })

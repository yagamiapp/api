import { Request } from 'express';
import type ws from 'ws';
import { startHeartbeat, passedHeartbeat } from './heartbeat';

export const handle = async (ws: ws, req: Request) => {
  startHeartbeat(ws, req.ip);

  ws.on('message', (msg) => {
    // if (msg.action == "heartbeat" && msg.value = "PONG") {
    //   passedHeartbeat(req.ip);
    //   return;
    // }
  });
};

import type ws from 'ws';

// How long in between heartbeats.
const heartbeatIntervalms = 5 * 60 * 1000;

// How long the client has to respond to the heartbeat.
const heartbeatResponsems = 10 * 1000;

type Connection = {
  ws: ws;
  timer?: NodeJS.Timeout;
};

const intervals = new Map<string, Connection>();

export const startHeartbeat = (ws: ws, ip: string) => {
  const timer = setTimeout(() => heartbeat(ip), heartbeatIntervalms);
  intervals.set(ip, { ws, timer });
};

const heartbeat = (ip: string) => {
  const connection = intervals.get(ip);
  if (!connection) throw 'Invalid IP';

  const ws = connection.ws;
  ws.send('PING');

  const timer = setTimeout(() => failedHeartbeat(ip), heartbeatResponsems);
  intervals.set(ip, { ws, timer });
};

export const passedHeartbeat = (ip: string) => {
  const connection = intervals.get(ip);
  if (!connection) throw 'Invalid IP';
  clearTimeout(connection.timer);
  const timer = setTimeout(() => heartbeat(ip), heartbeatIntervalms);
  intervals.set(ip, { ws: connection.ws, timer });
};

const failedHeartbeat = (ip: string) => {
  const connection = intervals.get(ip);
  if (!connection) return;
  connection.ws.close();
  intervals.delete(ip);
};

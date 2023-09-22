import { Elysia } from 'elysia';
import { rest } from './rest';
import { websocket } from './ws';
const { PORT } = Bun.env;

if (!PORT) {
  throw 'No PORT Specified in env variables!';
}

const app = new Elysia().use(rest).use(websocket).listen(PORT);

console.log(`Running API at ${app.server?.hostname}:${app.server?.port}`);

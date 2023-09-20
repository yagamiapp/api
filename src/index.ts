import express from 'express';
import { rest } from './rest';
import expressWs from 'express-ws';
import { handle } from './ws';

const baseApp = express();
const { app } = expressWs(baseApp);
const { PORT } = process.env;

if (!PORT) {
  throw 'No PORT Specified in .env file!';
}

// Register rest
app.use('/', rest);
// Register websocket
app.ws('/ws', handle);

// Start server
app.listen(PORT, () => {
  console.log(`Connected to http://localhost:${PORT}`);
});

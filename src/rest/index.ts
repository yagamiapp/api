import { Router } from 'express';

import { tournament } from './routers/tournament';

const { DOCS_URL } = process.env;

export const rest = Router()
  .use('/tournament', tournament)
  .get('/', (_req, res) => res.redirect(DOCS_URL ?? 'https://clxxiii.dev'));

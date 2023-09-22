import Elysia from 'elysia';
import { tournament } from './tournament';
import swagger from './docs';

const { DOCS_URL } = process.env;

export const rest = new Elysia()
  .use(swagger)
  .use(tournament)
  .get('/', ({ set }) => (set.redirect = DOCS_URL), {});

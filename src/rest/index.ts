import Elysia from 'elysia';
import { tournament } from './tournament';

const { DOCS_URL } = process.env;


export const rest = new Elysia()
  .use(tournament)
  .get("/", ({ set }) => set.redirect = DOCS_URL, {})

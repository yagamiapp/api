import { Elysia } from 'elysia';
import { getPartial } from './get_partial';

export const tournament = new Elysia({ prefix: "/tournaments" })
  .use(getPartial);


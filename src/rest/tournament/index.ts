import { Elysia } from 'elysia';
import { get } from './get';

export const tournament = new Elysia({ prefix: '/tournaments' }).use(get);

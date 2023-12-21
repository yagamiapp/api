import { Elysia } from 'elysia';
import { getPartial, getFull } from '../data/tournament';
import { LocalHook } from 'elysia';

const hooks: LocalHook = {
  beforeHandle: ({ params: { id }, set }) => {
    if (isNaN(parseInt(id))) {
      set.status = 'Bad Request';
      return {
        error: 'Tournament ID is not a number',
      };
    }
  },
  detail: {
    tags: ['Tournaments'],
  },
};


export const get = new Elysia()
  .get('/:id/get_partial', ({ params }) => getPartial(params.id), hooks)
  .get('/:id/get_full', ({ params }) => getFull(params.id), hooks);


export const tournament = new Elysia({ prefix: '/tournaments' }).use(get);
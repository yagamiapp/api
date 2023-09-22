import Elysia from 'elysia';
import { prisma } from '../../prisma';
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

const getPartial = async (id: string) => {
  const tournament = await prisma.tournament.findUnique({
    where: {
      id: parseInt(id),
    },
  });
  return tournament;
};

const getFull = async (id: string) => {
  const tournament = await prisma.tournament.findUnique({
    where: {
      id: parseInt(id),
    },
    include: {
      Hosts: {
        select: {
          User: {
            select: {
              id: true,
              username: true,
            },
          },
        },
      },
      rounds: {
        include: {
          Match: {
            include: {
              MapsInMatch: true,
              Teams: {
                include: {
                  Team: true,
                },
              },
            },
          },
          mappool: {
            include: {
              Maps: {
                select: {
                  mods: true,
                  identifier: true,
                  mapId: true,
                },
              },
            },
          },
        },
      },
    },
  });
  return tournament;
};

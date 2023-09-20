import Elysia from 'elysia';
import { prisma } from '../../prisma';

export const getPartial = new Elysia()
  .get('/:id/get_partial', async ({ params: { id }, set }) => {
    if (isNaN(parseInt(id))) {
      set.status = "Bad Request";
      return {
        error: "Tournament ID is not a number"
      }
    }

    const tournament = await getTournamentObj(parseInt(id));
    return tournament;
  }, {
    "detail": {
      "tags": ["Tournaments"]
    }
  })

const getTournamentObj = async (id: number) => {
  const tournament = await prisma.tournament.findUnique({
    where: {
      id,
    },
  });
  return tournament;
};

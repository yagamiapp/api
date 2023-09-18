import { prisma } from '../prisma';

export const getTournamentObj = async (id: number) => {
  const tournament = await prisma.tournament.findUnique({
    where: {
      id,
    },
  });
  return tournament;
};

import { Router } from 'express';
import queries from '../../queries';

export const tournament = Router();

tournament.get('/:id/get_full', async (req, res) => {
  const { id: id_string } = req.params;
  const id = parseInt(id_string);

  if (isNaN(id)) {
    res.status(400).send('Tournament ID is not a number');
    return;
  }

  const tournament = await queries.tournament.getTournamentObj(id);
  res.send(tournament);
});

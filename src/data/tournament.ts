import { prisma } from "../prisma";

export const getPartial = async (id: string) => {
    const tournament = await prisma.tournament.findUnique({
        where: {
            id: parseInt(id),
        },
    });
    return tournament;
};

export const getFull = async (id: string) => {
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
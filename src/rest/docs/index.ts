import swagger from '@elysiajs/swagger';

export default swagger({
  exclude: ['/'],
  documentation: {
    tags: [{ name: 'Tournaments' }],
    info: {
      title: 'Yagami API Documentation',
      version: '1.0.0',
      description: 'The RESTFUL-facing API that allows you to interact with the Yagami Database',
      contact: {
        name: 'clxxiii',
        url: 'https://yagami.app',
        email: 'info@yagami.app',
      },
    },
  },
});

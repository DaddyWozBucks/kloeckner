
class AppController {
  constructor() {
    this.todos = 'todos';
  }
}

export const App = {
  template: require('./App.html'),
  controller: AppController
};

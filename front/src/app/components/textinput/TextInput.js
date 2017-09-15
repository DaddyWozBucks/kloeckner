class TextInputController {
  /** @ngInject */
  constructor($window, $timeout, $mdToast) {
    this.$timeout = $timeout;
    this.$window = $window;
    this.editing = this.editing || false;
    this.text = this.text || '';
    if (this.text.length) {
      this.focus();
    }
    this.toaster = $mdToast;
  }

  handleBlur() {
//    if (this.text) {
//      if (this.text && this.text.indexOf(',') < 0) {
//        this.toaster.show(this.toaster.simple().textContent('Please include Country code, eg: "Berlin, DE"'));
//      } else {
//        this.toaster.show(this.toaster.simple().textContent('Please enter the city name and include Country code, eg: "Berlin, DE"'));
//        this.text = '';
//      }
//    }
  }

  handleSubmit(e) {
    if (e.keyCode === 13) {
      if (this.text.indexOf(',') < 0) {
        this.toaster.show(this.toaster.simple().textContent('Please include Country code, eg: "Berlin, DE"'));
      } else {
        this.onSave({text: this.text});
//        if (this.newTodo) {
//          this.text = '';
//        }
      }
    }
  }

  focus() {
    this.$timeout(() => {
      const element = this.$window.document.querySelector('.editing .textInput');
      if (element) {
        element.focus();
      }
    }, 0);
  }
}

export const TextInput = {
  template: require('./TextInput.html'),
  controller: TextInputController,
  bindings: {
    onSave: '&',
    placeholder: '@',
    editing: '@',
    text: '<'
  }
};

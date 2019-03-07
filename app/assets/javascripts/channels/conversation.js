//= require cable
//= require_self
//= require_tree .

this.App = {};

App.cable = ActionCable.createConsumer();
App.conversation = App.cable.subscriptions.create("ConversationChannel", {
  connected: function () { },
  disconnected: function () { },
  received: function (data) {
    console.log(data['message']);
  },
  speak: function (message) {
    return this.perform('speak', {
      message: message
    });
  }
});
$(document).on('submit', '.new_message', function (e) {
  e.preventDefault();
  var values = $(this).serializeArray();
  App.conversation.speak(values);
  $(this).trigger('reset');
});

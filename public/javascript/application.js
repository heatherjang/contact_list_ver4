$(function() {

  var allContactsButton = $('#show_contacts');

  allContactsButton.on('click', function() {
    $.ajax({
        method: 'GET',
        url: '/contacts', 
        success: displayAllContacts, 
        dataType: 'json',
        contentType: 'application/json;charset=utf-8'
    });
});

  function displayAllContacts(contacts) {
    $.each(contacts, function(index, contact) {
      var contactP = $('<p>');
      contactP.html(contact['firstname'] + " " + contact['lastname'] + " (" + contact['email'] + ")");
      $(document.body).append(contactP)
    });
  }

});
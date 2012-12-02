// Generated by CoffeeScript 1.4.0
(function() {
  var $document;

  $document = $(document);

  $document.on('click', '#example1', function() {
    return $.mobile.loading('show');
  });

  $document.on('click', '#example2', function() {
    return $.mobile.loading('show', {
      text: 'message',
      textVisible: true
    });
  });

  $document.on('click', '#example3', function() {
    return $.mobile.loading('show', {
      text: 'message',
      textVisible: true,
      textonly: true
    });
  });

  $document.on('click', '#example4', function() {
    return $.mobile.loading('show', {
      theme: 'b'
    });
  });

  $document.on('click', '#example5', function() {
    return $.mobile.loading('hide');
  });

  $document.on('click', '#example6', function() {
    return $.mobile.loading('show', {
      html: '<div style="border:2px solid blue;color:black">OOPS!</div>'
    });
  });

}).call(this);
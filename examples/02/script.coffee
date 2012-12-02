$document = $(document)

$document.on 'click', '#example1', ->
  $.mobile.loading 'show'

$document.on 'click', '#example2', ->
  $.mobile.loading 'show',
    text: 'message'
    textVisible: true

$document.on 'click', '#example3', ->
  $.mobile.loading 'show',
    text: 'message'
    textVisible: true
    textonly: true

$document.on 'click', '#example4', ->
  $.mobile.loading 'show',
    theme: 'b'

$document.on 'click', '#example5', ->
  $.mobile.loading 'hide'

$document.on 'click', '#example6', ->
  $.mobile.loading 'show',
    html: '<div style="border:2px solid blue;color:black">OOPS!</div>'

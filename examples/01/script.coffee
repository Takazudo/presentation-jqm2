$document = $(document)

$document.on 'tap', '#test-tap', (e) -> $(@).toggleClass 'toggled'
$document.on 'taphold', '#test-taphold', (e) -> $(@).toggleClass 'toggled'
$document.on 'swipeleft', '#test-swipeleft', (e) -> $(@).toggleClass 'toggled'
$document.on 'swiperight', '#test-swiperight', (e) -> $(@).toggleClass 'toggled'
$document.on 'swipe', '#test-swipe', (e) -> $(@).toggleClass 'toggled'
$document.on 'vmouseout', '#test-vmouseout', (e) -> $(@).toggleClass 'toggled'
$document.on 'vmouseover', '#test-vmouseover', (e) -> $(@).toggleClass 'toggled'
$document.on 'vmousedown', '#test-vmousedown', (e) -> $(@).toggleClass 'toggled'
$document.on 'vmousemove', '#test-vmousemove', (e) -> $(@).toggleClass 'toggled'
$document.on 'vmouseup', '#test-vmouseup', (e) -> $(@).toggleClass 'toggled'
$document.on 'vmousecancel', '#test-vmousecancel', (e) -> $(@).toggleClass 'toggled'
$document.on 'vclick', '#test-vclick', (e) -> $(@).toggleClass 'toggled'

$ ->

  do ->
    count = 0
    $occured = $('#test-orientationchange-occured')
    $orientation = $('#test-orientationchange-orientation')
    $document.on 'orientationchange', (e) ->
      count += 1
      $occured.text count
      $orientation.text e.orientation
    
  do ->
    $result = $('#test-scrollstartstop')
    $document.on 'scrollstart', (e) ->
      $result.text 'scrollstart occured.'
      $result.toggleClass 'toggled'
    $document.on 'scrollstop', (e) ->
      $result.text 'scrollstop occured.'
      $result.toggleClass 'toggled'

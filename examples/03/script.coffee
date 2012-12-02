$document = $(document)

$document.on 'pagebeforeload', -> console.log 'pagebeforeload'
$document.on 'pageload', -> console.log 'pageload'
$document.on 'pageloadfailed', -> console.log 'pageloadfailed'
$document.on 'pagebeforechange', -> console.log 'pagebeforechange'
$document.on 'pagechange', -> console.log 'pagechange'
$document.on 'pagechangefailed', -> console.log 'pagechangefailed'
$document.on 'pagebeforeshow', -> console.log 'pagebeforeshow'
$document.on 'pagebeforehide', -> console.log 'pagebeforehide'
$document.on 'pageshow', -> console.log 'pageshow'
$document.on 'pagehide', -> console.log 'pagehide'
$document.on 'pagebeforecreate', -> console.log 'pagebeforecreate'
$document.on 'pagecreate', -> console.log 'pagecreate'
$document.on 'pageinit', -> console.log 'pageinit'
$document.on 'pageremove', -> console.log 'pageremove'
$document.on 'updatelayout', -> console.log 'updatelayout'

$document.on 'pagehide', (e, ui) ->
  $(ui.nextPage).animationComplete ->
    console.log 'pagehide animation complete'

$document.on 'click', '#example1', ->
  $.mobile.changePage '2.html'
    
$document.on 'click', '#example2', ->
  $.mobile.changePage '2.html',
    transition: 'slideup'
    
$document.on 'click', '#example3', ->
  $.mobile.changePage '2.html',
    type: 'post'

$document.on 'click', '#example4', ->
  $.mobile.changePage '2.html',
    reloadPage: true


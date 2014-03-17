showFontSizes = ->
  $("h1,h2,h3,h4,h5,h6,p").each ->
    v = $(this).css("font-size")
    $(this).after "<span>" + v + "</span>"
    
$ ->
  $(window).resize ->
    showFontSizes()
    return
  return

  showFontSizes()
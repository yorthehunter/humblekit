#showFontSizes = ->
#  $("h1,h2,h3,h4,h5,h6,p").each ->
#    v = $(this).css("font-size")
#    $(this).after "<span>" + v + "</span>"
#
#$ ->
#  $(window).resize ->
#    showFontSizes()
#    return
#  return
#
#  showFontSizes()

$ ->
  $("#light-bg").click ->
    v_span = $(this).find(".js-verb")
    verb   = v_span.text()

    if verb == "Show"
      v_span.text("Hide")
      $("body").addClass("bg-blueprint").removeClass("dark-version")
    else
      v_span.text("Show")
      $("body").removeClass("bg-blueprint")

  $("#dark-bg").click ->
    v_span = $(this).find(".js-verb")
    verb   = v_span.text()

    if verb == "Show"
      v_span.text("Hide")
      $("body").addClass("bg-blueprint").addClass("dark-version")
    else
      v_span.text("Show")
      $("body").removeClass("bg-blueprint")
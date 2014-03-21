#showFontSizes = ->
#  $("h1,h2,h3,h4,h5,h6,p").each ->
#    v = $(this).css("font-size")
#    c = $(this).find(".js-font-size")
#    c.text v
#
#showContainerSize = ->
#  window_width = $(window).width()
#  $(".js-container-width").text(window_width)

$ ->
#  $("h1,h2,h3,h4,h5,h6,p").each ->
#    $(this).append(
#      "<span class='js-font-size helper-text'></span>"
#    )

  $(window).resize ->
    showFontSizes()
    showContainerSize()

#  $(".container").append(
#    "<span class='js-container-width' style='position: absolute; top: 10px; right: 10px;'></span>"
#  )

  $("#light-bg").click (e)->
    v_span = $(this).find(".js-verb")
    verb   = v_span.text()
    v_sib  = $(this).siblings("#dark-bg").find(".js-verb")

    if verb == "Show"
      v_span.text("Hide")
      v_sib.text("Hide")
      $("body").addClass("bg-blueprint").removeClass("dark-version")
    else
      v_span.text("Show")
      v_sib.text("Show")
      $("body").removeClass("bg-blueprint")
    e.preventDefault()

  $("#dark-bg").click (e)->
    v_span = $(this).find(".js-verb")
    verb   = v_span.text()
    v_sib  = $(this).siblings("#light-bg").find(".js-verb")

    if verb == "Show"
      v_span.text("Hide")
      $(this).siblings("#light-bg").find(".js-verb").text("Hide")
      $("body").addClass("bg-blueprint").addClass("dark-version")
    else
      v_span.text("Show")
      v_sib.text("Show")
      $("body").removeClass("bg-blueprint")
    e.preventDefault()

  $(document).keypress (e) ->
    key = e.which
    switch key
      when 104
        $("body").toggleClass("bg-blueprint").removeClass("dark-version")
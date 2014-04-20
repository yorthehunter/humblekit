$ ->

# init bootstrap tooltips
  $("[data-toggle='tooltip']").tooltip()


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

  $(".js-grid-test .grid").addClass "bg-grid-test"

  $(".js-site-help")
    .stop true
    .slideToggle "fast"

  $(document).keypress (e) ->
    key = e.which
    switch key
      when 104
        $("body").toggleClass("bg-blueprint").removeClass("dark-version")
      when 106
        $(".grid").toggleClass("bg-grid-test")
      when 107
        $(".js-site-help").stop(true).slideToggle("fast")

  $('.js-affix').each ->
    affix         = $(this)
    originalWidth = affix.css("width")
    affixTop      = affix.offset().top - parseInt affix.css "margin-top"
    affixWidth    = affix.width()

    affix
    .css( { "z-index" : 2, "top" : 0 } )
    .affix
      offset: { top: affixTop }
    .on "affix.bs.affix", ->
      affix.width(affixWidth)
    .on "affix-top.bs.affix", ->
      affix.width(null)
      affix.css "width", originalWidth

  $(window).resize ->

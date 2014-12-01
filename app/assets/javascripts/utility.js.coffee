$ ->

# init bootstrap tooltips
#  $("[data-toggle='tooltip']").tooltip()

  showContainerSize()

  $(".js-grid-test").addClass "bg-grid-test"

  $(".js-site-help")
    .stop true
    .slideToggle "fast"

  $(document).keypress (e) ->
    keyTriggers(e)

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
    showContainerSize()

  $(".js-clickable-letter")
    .css "cursor", "pointer"
    .click ->
        keycode = $(this).text().charCodeAt()
        e = jQuery.Event( 'keydown', { which: keycode } )
        keyTriggers(e)

  offset = 220
  duration_fast   = 200
  duration_medium = 500
  duration_slow   = 800
  animation_width = $(".js-back-to-top").outerWidth()
  $(".js-back-to-top").css("right", (-animation_width + "px"))

  $(window).scroll ->
    if $(this).scrollTop() > offset
      $(".js-back-to-top").stop false, false
      .animate
        right: "-1px"
      , duration_fast
    else
      $(".js-back-to-top").stop false, false
      .animate
        right: -animation_width
      , duration_fast

  $(".js-back-to-top").click (e) ->
    e.preventDefault()
    $("html, body").animate
      scrollTop: 0
    , duration_medium


  $("a[href*=#]:not([href=#])").click (e)->
    e.preventDefault()
    if location.pathname.replace(/^\//, "") is @pathname.replace(/^\//, "") and location.hostname is @hostname
      target = $(@hash)
      target = (if target.length then target else $("[name=" + @hash.slice(1) + "]"))
      if target.length
        $("html,body").animate
          scrollTop: target.offset().top
        , duration_medium


showContainerSize = ->
  width = $(window).width()
  if      width > 1200 - 16
    container = "XL"
  else if width > 992 - 16
    container = "LG"
  else if width > 768 - 16
    container = "MD"
  else if width > 480 - 16
    container = "SM"
  else
    container = "XS"

  $(".js-container-width").text container + " (" + width + "px)"

keyTriggers = (e) ->
  key = e.which
  switch key
    when 104
      $("body").toggleClass("bg-blueprint").removeClass("dark-version")
    when 106
      $(".grid").toggleClass("bg-grid-test")
    when 107
      $(".js-site-help").stop(true).slideToggle("fast")
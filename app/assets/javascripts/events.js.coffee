$(document).on "turbolinks:load", () ->
  # datetimepicker
  options =
    format: "DD/MM/YYYY"
    useCurrent: false
    sideBySide: true

  $(".start-time").datetimepicker(options)
  $(".end-time").datetimepicker(options)

  $(".colorpicker").minicolors
    theme: "bootstrap"

  $(".start-time").on "dp.change", (e) ->
    $(".end-time").data("DateTimePicker").minDate(e.date)

  $(".end-time").on "dp.change", (e) ->
    $(".start-time").data("DateTimePicker").maxDate(e.date)

  $("[data-toggle='popover']").popover(
    html: true
    container: "body"
  )


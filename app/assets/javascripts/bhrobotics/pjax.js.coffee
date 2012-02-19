#= require bhrobotics/loader

$ ->
  $("a:not(.no-pjax)").pjax("#main")

  doc = $(document)
  doc.on "pjax:start", -> BHRobotics.Loader.show()
  doc.on "pjax:end", -> BHRobotics.Loader.hide()

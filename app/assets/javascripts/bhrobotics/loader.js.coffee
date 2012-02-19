#= require bhrobotics/loader

module "BHRobotics.Loader", (exports) ->
  getEl = ->
    $("#loader")

  exports.show = ->
    getEl().show()

  exports.hide = ->
    getEl().hide()

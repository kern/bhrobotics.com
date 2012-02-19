window.module = (target, name, block) ->
  [target, name, block] = [(if typeof exports != 'undefined' then exports else window), arguments...] if arguments.length < 3
  top = target
  target = target[item] or= {} for item in name.split '.'
  block target, top

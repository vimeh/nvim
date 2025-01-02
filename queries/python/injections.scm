;extends
;javascript
(call
  function: (identifier) @_func
    (#eq? @_func "Script")
  arguments: (argument_list 
    (string (string_content) @injection.content) (#set! injection.language "javascript"))
)

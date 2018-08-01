(defmacro expect (expression comparison expected)
  `(if (funcall (quote ,comparison) ,expression ,expected)
      (format t ".")
      (format t "Expected:~&~a~&Got:~&~a" ,expected ,expression)
      )
  )

(defmacro desc (text &rest body)
  `(format t "~a~&" ,text)
  `(caar ,@body))






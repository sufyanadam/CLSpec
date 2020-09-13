(defpackage #:clspec
  (:use #:common-lisp)
  (:export
   #:desc
   #:it
   #:expect)
  (:documentation
   "RSpec-like syntax for writing Common Lisp tests"))

(in-package #:clspec)

(defmacro expect (expression comparison expected)
  `(if (funcall (quote ,comparison) ,expression ,expected)
      (format t ".")
      (format t "~%Failure:~{ ~a~}~%~%Expected: ~a~&Got: ~a"
              '(,expression ,comparison ,expected)
              ,expected
              ,expression
              )
      )
  )

(defmacro desc (text &rest body)
  (format t "~%~a~&" text)
  `(progn
     ,@(loop for f in body collect `(caar ,f))))

(defmacro it (text &rest body)
  `(desc ,text ,@body))

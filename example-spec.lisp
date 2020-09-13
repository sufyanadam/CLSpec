;;;; example-spec.lisp -- A CLSpec Example

;;;; CLSpec (https://github.com/sufyanadam/CLSpec)
;;;; This file is part of CLSpec
;;;;
;;;; Copyright © 2019–2020 Sufyan Adam
;;;;
;;;; This file must be used under the terms of the MIT license.
;;;; This source file is licensed as described in the file LICENSE, which
;;;; you should have received as part of this distribution. The terms
;;;; are also available at
;;;; https://opensource.org/licenses/MIT(defpackage #:clspec/example

(:use #:common-lisp #:clspec))

(in-package #:clspec/example)

(desc "+"
      (it "adds 2 numbers"
          (expect (+ 2 2) = 4))

      (it "adds negative numbers"
          (expect (+ -2 -2) = -4))
      )

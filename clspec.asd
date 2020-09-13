;;;; clspec.asd -- RSpec-like test framework

;;;; CLSpec (https://github.com/sufyanadam/CLSpec)
;;;; This file is part of CLSpec
;;;;
;;;; Copyright © 2019–2020 Sufyan Adam
;;;;
;;;; This file must be used under the terms of the MIT license.
;;;; This source file is licensed as described in the file LICENSE, which
;;;; you should have received as part of this distribution. The terms
;;;; are also available at
;;;; https://opensource.org/licenses/MIT

(asdf:defsystem #:clspec
  :description "An RSpec-like syntax for writing Common Lisp tests"
  :author "Sufyan Adam"
  :license "MIT"
  :components
  ((:file "clspec")))

;;;; End of file `clspec.asd'

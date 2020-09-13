(load "./clspec.lisp")

(desc "+"
      (it "adds 2 numbers"
          (expect (+ 2 2) = 4))

      (it "adds negative numbers"
          (expect (+ -2 -2) = -4))
      )

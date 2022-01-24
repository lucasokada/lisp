(setq delta (lambda (a b c) (- (expt b 2) (* 4 a c))))
 
(defun bhaskara(a b c)
  (list
   (/ ( + (- b) (sqrt (funcall delta a b c))) (* 2 a))
   (/ ( - (- b) (sqrt (funcall delta a b c))) (* 2 a))
  )
)

(require 'seq)
(defun rev ()
  (let ((collection '(1 2 3 4 5))
        (initial-accumulator ())
        (combining-function (lambda (current-accumulator current-item)
                              (cons current-item current-accumulator))))
    (seq-reduce
     combining-function
     collection
     initial-accumulator)))

(print (rev)) ; prints (5 4 3 2 1)

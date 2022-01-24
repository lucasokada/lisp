(setf array (make-array '(5)))
(write array)

(setf (aref array 0) 5)
(setf (aref array 1) 32)
(setf (aref array 2) 54)
(setf (aref array 3) 76)
(setf (aref array 4) 12)
(write array)

(defun get_array_sum (arr)
    (let ((sum 0))
        (dotimes (i (length arr))
            (setq sum (+ (aref arr i) sum))
        )

        sum
    )
)

(defun recursive_sum (arr i sum)
    (if (< i (length arr))
        (block i_lesser_tha_array_size
            (setq sum (+ sum (aref arr i)))
            (recursive_sum arr (+ i 1) sum)
        )

        sum
    )
)

(defun rec_sum (arr)
    (recursive_sum arr 0 0)
)

(format t "~%~a~%" (get_array_sum array))
(format t "~a~%" (rec_sum array))
(defun is_divisivel (num i)
    (if (= (mod num i) 0)
        t
        nil
    )
)

(defun divisores (num)
    (let ((result_list '()))
        (if (and (integerp num) (> num 0))
            (loop for i from 1 to num do
                (when (is_divisivel num i)
                    (setq result_list (append result_list (list i)))
                )
            )
        )
        
        result_list
    )
)''





(619 * ((113 * (387 / 390)) - ((595 - 305) * (267 / 41))))
(defun is_divisivel (num i)
    (if (= (mod num i) 0)
        t
        nil
    )
)

(defun is_primo (num)
    (let ((count 0))
    
        (loop for i from 1 to num do
            (if  (is_divisivel num i)
                (incf count)
            )
        )
        
        (if (= count 2)
            t
            nil
        )
    )
)

(defun get_primos (n)
    (let ((i 1) (list_of_primos '()) (controller 0))
        (if (and (integerp n) (> n 0))
            (loop while (< controller n) do
                (if (eql t (is_primo i))
                    (block _is_primo
                        (setq list_of_primos (append list_of_primos (list i)))
                        (incf i)
                        (incf controller)
                    )

                    (incf i)
                )
            )
        )

        list_of_primos
    )
)

(print (get_primos 300))
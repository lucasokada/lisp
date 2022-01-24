(defun is_divisivel (num i)
    (if (= (mod num i) 0)
        t
        nil
    )
)

(defun verifica_primo_rec (num i count)
    (if (and (<= i num) (integerp num) (>= num 0))
        (block inside_if
            (if (is_divisivel num i)
                (incf count)
            )
            
            (verifica_primo_rec num (+ i 1) count)
        )
        
        (if (= count 2)
            t
            nil
        )
    )
)

(print (verifica_primo_rec 4 1 0))

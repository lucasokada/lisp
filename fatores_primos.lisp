(format t  "Escreva uma função em Common LISP de nome fatores-primos que retorne a lista de todos números naturais que são divisores do parâmetro que também são primos.~% O parâmetro também deve ser um número natural. Se o parâmetro não for natural, retorne uma lista vazia.~%")

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

(defun fatores_primos (num)
    (let ((result_list '()))
        (if (and (integerp num) (> num 0))
            (loop for i from 1 to num do
                (when (and (is_divisivel num i) (is_primo i))
                    (setq result_list (append result_list (list i)))
                )
            )
        )
        
        result_list
    )
)

(format t "~a~%" (fatores_primos 10))
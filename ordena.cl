(defun is_par (num)
    (if (= (mod num 2) 0)
        t
        nil
    )
)

(defun isola_impares (lista)
    (let ((i 0) (j (- (length lista) 1)) (temp 0))
        (loop
            (when (eql (is_par (nth i lista)) nil)
                (setq temp (nth i '(lista)))
                (setf (nth i lista) (nth j lista))
                (setf (nth j lista) temp)
                (setq j (- j 1))
            )

            (setq i (+ i 1))
            (when (> i (length lista)))
        )
    )
)

(defun ordena_pares (lista)
    (let (i 0) (j 0) 
        (if (and (is_par (nth i lista)) (is_par (nth (+ 1 i) lista)))

        )
    )

)
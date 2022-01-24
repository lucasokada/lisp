(defun int_to_string (num)
    (write-to-string num :base 10)
)

(defun media (num_list)
    (let ((sum 0))
        (loop for x in num_list do
            (setq sum (+ sum x))
        )

        (/ sum (length num_list))
    )
)

(defun moda (num_list)
    (let ((counter 0) (maior 0) (moda '()))
        (loop for x in num_list do
            (loop for y in num_list do
                (if (= x y)
                    (incf counter)
                )
            )

            (if (> counter maior)
                (block _counter_greater
                    (setq maior counter)
                    (setq moda nil)
                    (setq moda (append moda (list x)))
                )

                (when (= counter maior)
                    (setq moda (append moda (list x)))
                )
            )

            (setq counter 0)
        )

        (if (> maior 1)
            (media moda)
            (format nil "não há moda")
        )
    )
)

(defun get_maior_in_list (number_list)
    (let ((maior 0))
        (loop for x in number_list do
            (if (> x maior)
                (setq maior x)
            )
        )

        maior
    )
)

(defun convert_number_list_to_string_list (number_list)
    (let ((string_list '()))
        (loop for x in number_list do
            (setq string_list (append string_list (list (int_to_string x))))
        )

        string_list
    )
)

(defun is_number_list (number_list)
    (let ((flag t))
        (loop for x in number_list do
            (if (numberp x)
                t
                (setq flag nil)
            )
        )

        flag
    )
)

(defun formata-lista (number_list)
    (if (listp number_list)
        (block list_not_nil
            (if (eql (is_number_list number_list) t)
                (if (numberp (moda number_list))
                    (block _moda_t
                        (format t "A lista ~a contém ~a elementos, em que ~a é o maior, média é ~a e a moda é ~a" (convert_number_list_to_string_list number_list) (length number_list) (get_maior_in_list number_list) (media number_list) (moda number_list))
                        (format nil "A lista ~a contém ~a elementos, em que ~a é o maior, média é ~a e a moda é ~a" (convert_number_list_to_string_list number_list) (length number_list) (get_maior_in_list number_list) (media number_list) (moda number_list))
                    )

                    (block _moda_f
                        (format t "A lista ~a contém ~a elementos, em que ~a é o maior, média é ~a e ~a" (convert_number_list_to_string_list number_list) (length number_list) (get_maior_in_list number_list) (media number_list) (moda number_list))
                        (format nil "A lista ~a contém ~a elementos, em que ~a é o maior, média é ~a e ~a" (convert_number_list_to_string_list number_list) (length number_list) (get_maior_in_list number_list) (media number_list) (moda number_list))
                    )
                )

                (block _invalid_list
                    (format t "Lista deve conter apenas números")
                    (format nil "Lista deve conter apenas números")
                )
            )
        )

        nil
    )
)

(formata-lista '(1 2 2 3 3 4 5 6 9.5 9.5))
(terpri)
(formata-lista '("hello" "world" 1 2 3))
(terpri)
(formata-lista '(1/2 1/2 4 5 8 100 2 4 33 12 12 22 12 1/2))
(terpri)
(formata-lista '(1/2 0.4 22 12 0 99 32 129 5.2 4/5 3/2))
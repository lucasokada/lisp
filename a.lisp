(defun formata-lista (list)
    (when (listp list)
    )


)

(defun calcula-maior (list)
    (let ((maior (nth 0 list)))
        (loop for i from 1 to (- (length list) 1) do
            (if (> (nth i list) maior)
                (setq maior (nth i list))
            )
        )
        maior
    )
)

(defun calcula-media (list)
    (let ((media 0))
        (loop for i from 0 to (- (length list) 1) do
            (setq media (+ media (nth i list)))
        )
        (setq media (/ media (length list)))
        media
    )
)

(defun calcula-moda (list)
    (let ((maior 0) (counter 0)(moda'()))
        (loop for i from 0 to (- (length list) 1) do
            (setq counter 0)
            (loop for j from (+ 1 i) to (- (length list) 1) do
                (if (= (nth i list) (nth j list))
                    (incf counter)
                )
            )

            (if (> counter maior)
                (progn
                    (setq maior counter)
                    (setq moda nil)
                    (setq moda (append moda (list (nth i list))))
                )
             
                (if (= counter maior)
                   (setq moda (append moda (list (nth i list))))
                )
            )
        )
        (if (zerop maior)
            (format nil "não há moda")
            (if (= 1 (length moda))
                moda
                moda
            )
        )

    )
)
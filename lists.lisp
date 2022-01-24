(write (list 'a 'b 'c)) (terpri)

(setq my_list (list 'a 'b 'c 'd '1 '2 '3))
(write my_list) (terpri)

(setq list2 '(a b c d f 1 2 3))
(write list2) (terpri)

(setq list3 '(a b (c d f) 1 (2 3)))
(write list3) (terpri)

(print (car list3)) ;tira/pop uma cópia do primeiro elemento da lista -> É não destutivo
(print (cdr list3)) ;tira/pop a lista inteira, exceto o primeiro elemento -> É não destrutivo também
(print (cons list3 (cons 'r nil))) ;cria uma lista em que list3 é o primeiro elemento e r h elementos posteriores
(print (list list3 'r)) ;faz a mesma coisa que o de cima

(print (cons 'a (cons 'b (cons 'c nil))))

(print (append '(a b) '(c d) '(e) '(f g h)))
(print (append list3 '(2))) ;não altera a lista original
(print list3)

(print (last list3)) ;last retorna o último elemento da lista
(print (car (last list3)))
(print (member '1 list3)) ;encontra o elemento passado e retorna uma sublista a partir desse -> não altera a lista original
(print (member '(c d f) list3))
(print (setq list2 (member '1 list3)))
(print (equal list2 list3))
(print (equal list2 list2))
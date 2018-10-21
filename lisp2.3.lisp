(defun collect (lst) 
(if lst 
(cons (car lst) (collect 
(if (member (car lst) (cdr lst)) 
(cons (car lst) (remove (car lst) (cdr lst) :count 1)) 
(cdr lst)))))) 

> (collect '(1 2 1 4 3 1 2 4))
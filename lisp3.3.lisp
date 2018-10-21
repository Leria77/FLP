(defun my-maplist (lst f) 
(cond ((null lst) nil) 
(t (cons (apply 'funcall (cons f lst)) (my-maplist (cdr lst) f))))) 

(my-maplist '(1 2 3 4 5 6) '*) 

==> (720 720 360 120 30 6) 

(my-maplist '(1 2 3 4 5 6) 'list) 

==> ((1 2 3 4 5 6) (2 3 4 5 6) (3 4 5 6) (4 5 6) (5 6) (6))
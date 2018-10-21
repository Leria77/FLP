(defun is-subset (a b) (cond ((null a) t) ((member (car a) b) (is-subset (cdr a) b)) (t nil)))  

(is-subset '(x y) '(a c v x z y))
(is-subset '(x y) '(a c v z y))
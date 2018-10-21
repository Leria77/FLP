(defun our-set-exclusive-or (w v)
  (nconc (unique w v) (unique v w)))
 
(defun unique (w v)
  (cond ((null w) nil)
        ((member (car w) v) (unique (cdr w) v))
        ((cons (car w) (unique (cdr w) v)))))
 
> (our-set-exclusive-or '(a b) '(b c))
(defun add (w a) 
(cond 
((null w) w) 
((numberp (car w)) (cons (+ (car w) a) (add (cdr w) a))) 
(t (cons (car w) (add (cdr w) a))))) 
(add '(a r y v r) 3)
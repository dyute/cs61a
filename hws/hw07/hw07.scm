(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cddr s)))

(define (ordered? s)
  (cond 
    ((null? (cdr s))      #t)
    ((> (car s) (cadr s)) #f)
    (else                 (ordered? (cdr s)))))

(define (square x) (* x x))

(define (pow base exp)
  (if (= exp 0)
      1
      (let ((x (square (pow base (quotient exp 2)))))
        (if (even? exp)
            x
            (* base x)))))

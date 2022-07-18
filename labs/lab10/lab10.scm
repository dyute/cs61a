(define (over-or-under num1 num2)
  (cond 
    ((< num1 num2) -1)
    ((= num1 num2) 0)
    (else          1)))

(define (make-adder num)
  (lambda (inc) (+ inc num)))

(define (composed f g) (lambda (x) (f (g x))))

(define lst (list '(1) 2 (list 3 4) 5))

(define (remove item lst)
  (filter (lambda (x) (not (= x item))) lst))

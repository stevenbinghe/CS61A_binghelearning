(define (caar x) (car (car x)))
(define (cadr x) (car (cdr x)))
(define (cadar x) (car (cdr (car x))))
(define (cdar x) (cdr (car x)))
(define (cddr x) (cdr (cdr x)))

;; Problem 14
;; Returns a list of two-element lists
(define (enumerate s)
  ; BEGIN PROBLEM 14
  (define (enumerate-helper s index)
    (cond
      ((null? s) '())
      (else (cons (list index (car s))(enumerate-helper (cdr s)(+ index 1))))))
  (enumerate-helper s 0)
  ; END PROBLEM 14
  )


;; Problem 15

;; Return the value for a key in a dictionary list
(define (get dict key)
  ; BEGIN PROBLEM 15
  (cond ((null? dict) #f)
        ((eq? (caar dict) key) (cadar dict))
        (else (get (cdr dict) key)))
  ; END PROBLEM 15
  )

;; Return a dictionary list with a (key value) pair
(define (set dict key value)
  ; BEGIN PROBLEM 15
  (cond ((null? dict) (list (list key value)))
        ((eq? (caar dict) key) (cons (list key value) (cdr dict)))
        (else (cons (car dict) (set (cdr dict) key value))))
  ; END PROBLEM 15
  )

;; Problem 16

;; implement solution-code
(define (solution-code problem solution)
  ; BEGIN PROBLEM 16
  (cond ((null? problem) '())
        ((eq? problem '_____) solution)
        ((not (pair? problem)) problem)
        (else (cons (solution-code (car problem) solution)
                    (solution-code (cdr problem) solution))))
  ; END PROBLEM 16
  )

;;; ACK -- One of the Kernighan and Van Wyk benchmarks.

(import (rnrs))

(define (ack m n)
  (cond 
    ((= m 0) (+ n 1))
    ((= n 0) (ack (- m 1) 1))
    (else (ack (- m 1) (ack m (- n 1))))))

(ack 3 10)

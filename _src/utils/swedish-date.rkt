#lang racket

(provide date->swedish)

(define (date->swedish ds)
  (string-join (list #;(list-ref '("söndag" "måndag" "tisdag" "onsdag" "torsdag" "fredag" "lördag")
                               (date-week-day ds))
                     (number->string (date-day ds))
                     (list-ref '("januari" "februari" "mars" "april" "maj" "juni"
                                           "juli" "augusti" "september" "oktober" "november" "december")
                               (sub1 (date-month ds)))
                     (number->string (date-year ds))
                     )))

(module* main #f
  (require racket/date)
  (date->swedish (current-date)))

(module+ test
  (require rackunit)
  (check-equal?
   (date->swedish (make-date 0 0 0 29 7 2015 3 0 #t 1))
   "29 juli 2015"))

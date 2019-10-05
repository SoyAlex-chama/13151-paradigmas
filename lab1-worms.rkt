#lang racket

(require "lab1-scheme.scm")
(require "randomScheme.rkt")

(define (createScene N M E D seed)
 (display "In construction")
  )

(define (checkScene scene)
  (if (and (positive? (selectorPosX scene))
           (and (positive? (selectorPosY scene))
                (and (< (selector scene 1) (selectorPosX scene)) (< (selector scene 1) (selectorPosY scene)))
                )
           )
      #t
      #f
      )
  )

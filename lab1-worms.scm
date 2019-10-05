
;Selectors for positions
;Example
;(selectorPosX (tdaScene 10 20 3)) => 10
(define (selectorPosX tda) (car (car tda)))
;(selectorPosX (tdaScene 10 20 3)) => 20
(define (selectorPosY tda) (cdr (car tda)))


(define (selector tda Pos)
  (if (< Pos 1) (car tda) (selector (cdr tda) (- Pos 1)))
)

;TDA of Scenario
; A scene has:
; * Size of x
; * Size of y

(define (retdaScenario)
  (display "N must be smaller than X and Y.")
  (newline)
  (display "X, enter, Y, enter, N:")
  (newline)
  (tdaScenario (read) (read) (read))
)

(define (tdaScene sizeX sizeY numEnemies)
  (if (and (< numEnemies sizeX) (< numEnemies sizeY))
  (cons (cons sizeX sizeY) (cons numEnemies '())) (retdaScene) )
)

;TDA of Player
; A player has:
; * Position in X
; * Position in y
; * Life
; * The turn in 1 or 0
; * The ultimate sense for their next turn <- Eliminated.

(define (retdaPlayer)
  (display "Life must be greater than 0,\nTurn can be 1 or 0 and the Sense is between 0 and 360")
  (newline)
  (display "X, enter, Y, enter, Life, enter, Turn, enter, Sense:")
  (newline)
  (tdaPlayer (read) (read) (read) (read) (read))
)

(define (tdaPlayer posX posY life turn sense)
  (if (or (or (equal? turn 1) (equal? turn 0))
          (and (positive? sense) (<= sense 360))
          )
      (cons (cons x y) (cons life (cons turn (cons sense '()))))
      (retdaPlayer)
  )
)

; A shoot has:
; * Angle
; * Pressure?

(define (tdaShoot angle pressure)
  (cons angle pressure))

;
; For create the scene, we need


(define (createScene N M E D seed)
  (cons (tdaScene N M E) (cons D (cons seed))))



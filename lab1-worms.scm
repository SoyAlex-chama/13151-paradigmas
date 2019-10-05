
;TDA of Scenario
; A scene has:
; * Size of x
; * Size of y
(define (retdaScenario)
  (display "N debe ser menor a X e Y.")
  (newline)
  (display "X, enter, Y, enter, N:")
  (newline)
  (tdaScenario (read) (read) (read))
)

(define (tdaScenario sizeX sizeY numEnemies)
  (if (and (< numEnemies sizeX) (< numEnemies sizeY))
  (cons (cons sizeX sizeY) (cons numEnemies '())) (retdaScenario) )
)

;TDA of Player
; A player has:
; * Position in X
; * Position in y
; * Life
; * The turn in 1 or 0
; * The ultimate sense for their next turn

(define (tdaPlayer posX posY life turn sense)
  (cons (cons x y) (cons life (cons turn (cons sense '())))))

; A shoot has:
; * Angle
; * Pressure?

(define (tdaShoot angle pressure)
  (cons angle pressure))

;
; For create the scene, we need


(define (createScene N M E D seed)
  (cons (tdaScenario N M E) (cons D (cons seed)))) 
)


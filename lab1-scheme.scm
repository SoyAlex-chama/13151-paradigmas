
#|Selectors for positions

This pack of selectors are universal, but,
there are selectors with the correspondant validation.
|#

;Examples
;(selectorPosX (tdaScene 10 20 3)) => 10
(define (selectorPosX tda) (car (car tda)))

;(selectorPosX (tdaScene 10 20 3)) => 20
(define (selectorPosY tda) (cdr (car tda)))

; (selector (tdaScene 10 20 3) 1) => 3
(define (selector tda Pos)
  (if (< Pos 1) (car tda) (selector (cdr tda) (- Pos 1)))
  )

#|TDA of Scenario

 A scene has:
 * Size of x
 * Size of y
 * Numbers of enemies

The enemies cannot be more than the spaces of the map.
In this case, we are gonna leave 1 row and 1 column for
can move the character.
|#

;Examples
;(tdaScene -10 20 3) => (Error message)
(define (retdaScene)
  (display "The size must be positive numbers.\nN must be smaller than X and Y.")
  (newline)
  (display "X, enter, Y, enter, N:")
  (newline)
  (tdaScene (read) (read) (read))
  )
;(tdaScene 10 20 3) => ((10 . 20) 3)
(define (tdaScene sizeX sizeY numEnemies)
  (if (and (positive? sizeY)
           (and (positive? sizeX)
                (and (< numEnemies sizeX) (< numEnemies sizeY))
                )
           )
      (cons (cons sizeX sizeY) (cons numEnemies '()))
      (retdaScene)
      )
  )
; 
(define (reSelectorScene tda pos)
  (diplay "The position must be less than 2.")
  (newline)
  (display "Position, enter:")
  (selectorScene tda (read))
  )

(define (selectorScene tda Pos)
  (if (< Pos 2)
      (selector tda Pos)
      (reSelectorScene tda pos)
      )
  )

#|TDA of Player

 A player has:
 * Position in X: Not can be more than the tdaScene.X
 * Position in y: Not can be more than the tdaScene.Y
 * Life: Positive numbers
 * The turn in 1 or 0
 * The ultimate sense for their next turn: Between 0 and 360

|#

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

(define (reSelectorPlayer tda pos)
  (diplay "The position must be less than 2.")
  (newline)
  (display "Position, enter:")
  (selectorScene tda (read))
  )

(define (selectorPlayer tda Pos)
  (if (< Pos 5)
      (if (< Pos 1) (car tda) (selector (cdr tda) (- Pos 1)))
      (reSelectorScene tda pos)
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



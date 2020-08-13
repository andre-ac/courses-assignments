;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 1a) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))

(+ 3 4)

(+ 3 (* 2 3))

(/ 12 (* 2 3))

(sqr 3)

(sqrt 16)

;comment

(sqrt (+(sqr 3)(sqr 4)))

(+ 2  (* 3 4) (- (+ 1 2) 3))

"apple"

(string-append "Ada" " " "Lovelace")

(string-length "apple")

(substring "Caribou" 2 4)

(require 2htdp/image)

(circle 10 "solid" "red")
(rectangle 30 60 "outline" "blue")
(text "hello" 24 "orange")

(overlay (circle 10 "solid" "red")
         (circle 20 "solid" "yellow")
         (circle 30 "solid" "green"))

(define (bulb c)
  (circle 40 "solid" c))

(above (bulb "red")
       (bulb "yellow")
       (bulb "green"))

(define (light c)
  (circle 40 "solid" c))

(light (string-append "re" "d"))
(light "red")
(circle 40 "solid" "red")

(define WIDTH 100)
(define HEIGHT 200)

(> WIDTH HEIGHT)
(= WIDTH 100)

(define I1 (rectangle 10 20 "solid" "red"))
(define I2 (rectangle 20 10 "solid" "blue"))

I1
I2

(if (< (image-width I1)
      (image-width I2))
    "I1 is wider"
    "I2 is wider")


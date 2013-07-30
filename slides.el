;;; slides.el -- Slide definitions
;;
;; Presentation given using Emacs and bufshow.  For more info see:
;;
;;   http://github.com/pjones/bufshow
;;
(bufshow-start ;; 30-minute version.
 [
  ;; Introduction (5 minutes)
  ("banners/intro.png")

  ;; What is Haskell? (5 minutes)
  (bufshow-center-text  "banners/haskell.txt" "def")
  (bufshow-center-text  "banners/haskell.txt" "gp")
  (bufshow-center-text  "banners/haskell.txt" "others")

  ;; Haskell compared to C (5 minutes)
  (bufshow-center-text  "banners/compare.txt" "abstract")
  ("src/csum.c"         "sum")
  ("src/hssum.hs"       "sum")

  ;; Idiomatic Haskell (5 minutes)
  (bufshow-center-text  "banners/compare.txt" "poly")
  ("src/hssum.hs"       "genericSum")
  (bufshow-center-text  "banners/compare.txt" "functional")
  ("src/fold.hs"        "fold")

  ;; Showing Haskell Off (5 minutes)
  (bufshow-center-text  "banners/haskell.txt" "maybe")
  (bufshow-reveal-begin "src/age.hs" "maybe")
  (bufshow-reveal-add   "src/age.hs" "personAge")
  (bufshow-reveal-add   "src/age.hs" "main")

  ;; Questions and Answers (5 minutes)
  ;; -- Back to main intro banner.
  ])

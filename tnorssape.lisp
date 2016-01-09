(in-package #:tnorssape)

(defun transpose-seq (thing)
  (concatenate
   (type-of thing)
   (let ((i (sqrt (length thing))))
     (assert (= i (floor i)))
     (labels ((f (x y) (+ y (* x (floor i)))))
       (loop :for x :below i :append
	  (loop :for y :below i :collect
	     (elt thing (f y x))))))))

#!/usr/bin/env clojure

(defn rev []
  (let [collection '(1 2 3 4 5)
        initial-accumulator []
        combining-function (fn [current-accumulator current-item]
                             (cons current-item current-accumulator))]
    (reduce
     combining-function
     initial-accumulator
     collection)))

(println (rev))

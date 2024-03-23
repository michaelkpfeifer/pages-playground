(ns clojurex.core
  (:gen-class))

(defn rev []
  (let [collection '(1 2 3 4 5)
        initial-accumulator []
        combining-function (fn [current-accumulator current-item]
                             (cons current-item current-accumulator))]
    (reduce
     combining-function
     initial-accumulator
     collection)))

(defn -main [& args]
  (println (rev)))

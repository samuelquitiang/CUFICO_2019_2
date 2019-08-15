;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

for i in {1..7}; do mkdir FOLDER$i; cd FOLDER$i; for j in {1..10}; do touch ARCHIVO${j}.txt;  a="esta es la palabra más linda del mundo :P"; echo $a > ARCHIVO${j}.txt; done;  cd ..; done


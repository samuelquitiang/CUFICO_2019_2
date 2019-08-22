for n in {1..7}; do mkdir Folder$n; cd Folder$n; for m in {1..10}; do echo buenas >> Archivo${m}.txt; done; cd ..; done


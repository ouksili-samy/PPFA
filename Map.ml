(* Definition d'une case *)
type case = Vide | Mur | Player 
            
  
            
(* Configuration du plateau *)
type paire = {
  nbl : int;
  nbc  : int
} 
    
let p = {nbl = 8 ; nbc = 8} 
    
    
let initialisation paire = 
  let map = Array.make_matrix paire.nbl paire.nbc " " in 
  for i = 0 to paire.nbl do 
    for j = 0 to  paire.nbc do
      if (i = 0 || i = paire.nbl - 1) then 
        map.(i).(j) <- "#"
      else if (j = 0 || j = paire.nbc - 1) then 
        map.(i).(j) <- "#"
      else
        map.(i).(j) <- " "
    done
  done;
  map
;;

let affichage_map map =
  for i = 0 to p.nbl-1 do 
    for j = 0 to p.nbc-1 do
      Printf.printf "%s" map.(i).(j);
    done;
    Printf.printf "\n"
  done
;; 
let t = initialisation p;; 

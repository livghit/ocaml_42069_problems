let list = [1;2;3;4;5;6] 

(** function to return last index element *)
let rec last = function 
| []-> None
| [y] -> Some y
| _ :: t ->last t;;

(** function to return last two index elements *)
let rec last_two = function 
| [] -> None
| [x; y] -> Some (x,y)
| _ :: t -> last_two t;;


(** function to return the n'th index element *)

let rec find x  = function 
        | [] -> None
        | i :: j ->if x = 0 then Some i else find (x - 1) j;; 

let result = last list;;
let result_two = last_two list;;
let result_find = find 2 list;;



match result with
| None -> print_string "The list is empty."
| Some(last_element) -> print_string "Last int -> " ; print_int last_element;;

match result_two with
| None -> print_string "The list is empty."
| Some(x , y) -> print_string "Last ints -> " ; print_int x ; print_int y;;


match result_find with
| None -> print_string "The list is empty."
| Some(n) -> print_string "n'th element -> " ; print_int n;;



let list = [1;2;3;4;5;6] 

let rec last = function 
| []-> None
| [y] -> Some y
| _ :: t ->last t;;
let result = last list;;


match result with
| None -> print_string "The list is empty."
| Some(last_element) -> print_string "Last int -> " ; print_int last_element;;

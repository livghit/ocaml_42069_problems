let list = [1;2;3;4;5;6] 

let rec last = function 
| []-> None
| [y] -> Some y
| _ :: t ->last t;;

let rec last_two = function 
| [] -> None
| [x; y] -> Some (x,y)
| _ :: t -> last_two t;;

let result = last list;;
let result_two = last_two list;;


match result with
| None -> print_string "The list is empty."
| Some(last_element) -> print_string "Last int -> " ; print_int last_element;;

match result_two with
| None -> print_string "The list is empty."
| Some(x , y) -> print_string "Last ints -> " ; print_int x ; print_int y;;

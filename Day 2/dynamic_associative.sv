module assoc_arr;
 //Create a dynamic array whose elements are associative arrays
 int games [ ] [string];
 initial begin
 //Create a dynamic array with size of 3 elements
 games = new [3];

 //Initialize the associative array inside each dynamic
 //array element
 games [0] = '{ "football" : 10,"baseball" : 20,"hututu":70 };
 games [1] = '{ "cricket" : 30, "ice hockey" : 40 };
 games [2] = '{ "soccer" : 50, "rugby" : 60 };
 
 // Iterate through each element of dynamic array
 foreach (games[element])
 
 // Iterate through each index of the current element in
 
 // dynamic array
 foreach (games[element][index])
 $display ("games[%0d][%s] = %0d",element,index,games[element][index]);
   end
 endmodule

// # KERNEL: games[0][baseball] = 20
// # KERNEL: games[0][football] = 10
// # KERNEL: games[0][hututu] = 70
// # KERNEL: games[1][cricket] = 30
// # KERNEL: games[1][ice hockey] = 40
// # KERNEL: games[2][rugby] = 60
// # KERNEL: games[2][soccer] = 50

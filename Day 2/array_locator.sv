module arrayLocator;
 string str[5] = '{"bob", "kim", "derek", "bob", "kim"};
 string ques[$]; //queue of string type
 int intA[int]; //associative array
 int quei[$]; //queue of int type
 int x;
 initial begin
 intA[1] = 3;
 intA[2] = 2;
 intA[3] = 6;
 intA[4] = 7;
 intA[5] = 3;
 //returns all elements stratifying the 'with' expression
 quei = intA.fnd( x ) with ( x > 5 );
 $display("fnd(x)::quei=%0p",quei);
 //returns all elements stratifying the 'with' expression
 quei = intA.fnd( x ) with ( x < 5 );
 $display("fnd(x)::quei=%0p",quei);
 //returns the indices of all elements
 //that satisfy the 'with' expression
 //quei = intA.fnd_index with (item == 3);
 quei = intA.fnd_index with (item > 1);
 $display("fnd_index::quei=%0p",quei);
 //returns the frst element satisfying 'with' expression
 quei = intA.fnd_frst with (item > 3);
 $display("fnd_frst::quei=%0p",quei);
 //returns the frst element satisfying 'with' expression
   ques = str.fnd_frst with (item > "bob");
 $display("fnd_frst::ques=%0p",ques);
 //returns the last element satisfying 'with' expression
 ques = str.fnd_last with (item < "kim");
 $display("fnd_last::ques=%0p",ques);
 //returns index of the frst element satisfying 'with'
 //expression
 quei = intA.fnd_frst_index (s) with (s<5);
 $display("fnd_frst_index::quei=%0p",quei);
 //returns index of the last element satisfying 'with'
 //expression
 quei = intA.fnd_last_index (s) with (s<5);
 $display("fnd_last_index::quei=%0p",quei);
 end
 endmodule

//  fnd(x)::quei='{6, 7}
// fnd(x)::quei='{3, 2, 3}
// fnd_index::quei='{1, 2, 3, 4, 5}
// fnd_frst::quei='{6}
// fnd_frst::ques='{"kim"}
// fnd_last::ques='{"bob"}
// fnd_frst_index::quei='{1}
// fnd_last_index::quei='{5}

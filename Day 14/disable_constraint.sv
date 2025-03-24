class inline;
  rand bit[2:0]value;
  constraint va { value >2;}

endclass : inline

module inline_constraint;

   
  int valan;
    initial begin 
      inline gen = new(); 
     
      for (int i = 1; i <=5 ; i++) begin  
        gen.va.constraint_mode(1);
        valan = (gen.randomize() with { value == 1; });  
      $display("-------------------------------------------------------------");
        
        
        #1 $display("\t[%0t] @ iteration: %0d -----> value: %0d,gen.randomize=%0d", $time, i, gen.value,valan); 
      
      $display("-------------------------------------------------------------");
    end

  end
    
endmodule


//-------------------------------------------------------------
// [5] @ iteration: 5 -----> value: 0,gen.randomize=0
//-------------------------------------------------------------


//-----------------------------------------------------------------------------------------------------------------------------------------
//constraint mode off

class inline;
  rand bit[2:0]value;
  constraint va { value >2;}

endclass : inline

module inline_constraint;

   
  int valan;
    initial begin 
      inline gen = new(); 
     
      for (int i = 1; i <=5 ; i++) begin  
        gen.va.constraint_mode(0);
        valan = (gen.randomize() with { value == 1; });  
      $display("-------------------------------------------------------------");
        
        
        #1 $display("\t[%0t] @ iteration: %0d -----> value: %0d,gen.randomize=%0d", $time, i, gen.value,valan); 
      
      $display("-------------------------------------------------------------");
    end

  end
    
endmodule

// -------------------------------------------------------------
//   [1] @ iteration: 1 -----> value: 1,gen.randomize=1
// -------------------------------------------------------------
// -------------------------------------------------------------
//   [2] @ iteration: 2 -----> value: 1,gen.randomize=1
// -------------------------------------------------------------
// -------------------------------------------------------------
//   [3] @ iteration: 3 -----> value: 1,gen.randomize=1
// -------------------------------------------------------------
// -------------------------------------------------------------
//   [4] @ iteration: 4 -----> value: 1,gen.randomize=1
// -------------------------------------------------------------
// -------------------------------------------------------------
//   [5] @ iteration: 5 -----> value: 1,gen.randomize=1
// -------------------------------------------------------------

class seq_item;
	rand bit[5:0] value;
	rand bit sel;

	constraint value1 { value == get_values(sel);}

	function bit [5:0]get_values(bit sel);
		return (sel?'h10:'h20);
	endfunction 

endclass : seq_item

module function_constraint;
  seq_item item;
  
  initial begin
    item = new();
    
    repeat(3) begin
      item.randomize();
      $display("constraint value = %0h", item.value);
    end
    $display("On functiopn call: value = %0h", item.get_values(1));
  end
endmodule

// //output
// constraint value = 10
// constraint value = 20
// constraint value = 10
// On functiopn call: value = 10

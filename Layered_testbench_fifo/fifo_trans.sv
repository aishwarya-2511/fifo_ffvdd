class fifo_trans;
rand bit wr_en;
rand bit rd_en;
rand bit [7:0] buf_in;
bit [7:0] buf_out;
bit buf_empty;
bit buf_full;
bit [3:0] fifo_counter;
function void display();
$display(" ");
$display("\t wr_en = %0b, \t rd_en = %0b, \t buf_in = %0b, \t buf_out = %0b, \t buf_empty = %0b, \t buf_full = %0b, \t fifo_counter = %0b",wr_en,rd_en,buf_in,buf_out,buf_empty,buf_full,fifo_counter);
$display(" ");

endfunction
endclass

class fifo_cov;
fifo_trans trans = new();
covergroup cov_inst;
option.per_instance = 1;


ren:coverpoint trans.wr_en {bins wr_en = {0,1};}
wen: coverpoint trans.rd_en {bins rd_en = {0,1};}
full:coverpoint trans.buf_full {bins buf_full = {0,1};}
empty: coverpoint trans.buf_empty {bins buf_empty = {0,1};}
counter: coverpoint trans.fifo_counter {bins fifo_counter = { [0: 7]}; }  
bufin: coverpoint trans.buf_in {bins buf_in = { [0: 127]}; } 
bufout: coverpoint trans.buf_out{bins buf_out = { [0: 127]}; }  
endgroup
function new();
cov_inst = new;
endfunction
task main;
cov_inst. sample();
endtask
endclass

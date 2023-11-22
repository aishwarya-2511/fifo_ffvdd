interface fifo_intf(input logic clk,rst);

logic wr_en, rd_en;  
logic [7:0] buf_in;  
logic [7:0] buf_out;     
logic buf_empty, buf_full;      
logic [3 :0] fifo_counter;      

clocking bfm_cb @(posedge clk);
default input #1 output #1;
output wr_en, rd_en;
output buf_in;                  
input buf_out;                  
input buf_empty, buf_full;      
input fifo_counter;
endclocking

clocking monitor_cb @(posedge clk);
default input #1 output #1;
input wr_en, rd_en;
input buf_in;                  
input buf_out;                  
input buf_empty, buf_full;      
input fifo_counter;
endclocking
modport BFM (clocking bfm_cb, input clk,rst);
modport MONITOR (clocking monitor_cb, input clk, rst);
endinterface

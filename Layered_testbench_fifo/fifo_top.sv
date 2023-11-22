
module fifo_top;
    bit clk,rst;

   
 fifo_intf intf(clk,rst);
 fifo_test t1(intf);
 Sync_FIFO DUT(.buf_in(intf.buf_in),
                .rst(intf.rst),
                .clk(intf.clk),
                .wr_en(intf.wr_en),
                .rd_en(intf.rd_en),
                .buf_out(intf.buf_out),
                .buf_empty(intf.buf_empty),
                .buf_full(intf.buf_full),
                .fifo_counter(intf.fifo_counter));
always #5 clk=~clk;
   
initial begin
    rst=1;
    #5 rst=0;
    end
 
 
  endmodule

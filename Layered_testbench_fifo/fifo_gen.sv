class fifo_gen;
rand fifo_trans trans;
mailbox gen2bfm;
event ended;
int repeat_count;
function new(mailbox gen2bfm, event ended);
this.gen2bfm = gen2bfm;
this.ended = ended;
endfunction
task main;
repeat(repeat_count) begin
trans = new();
if(!trans.randomize()) $display("Randomization Failed");
gen2bfm.put(trans);
end
->ended;
endtask
endclass

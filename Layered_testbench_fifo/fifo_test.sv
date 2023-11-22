program fifo_test(fifo_intf intf);
fifo_env env;
initial begin
env = new(intf);
env.gen.repeat_count = 200;
env.run();
end
endprogram
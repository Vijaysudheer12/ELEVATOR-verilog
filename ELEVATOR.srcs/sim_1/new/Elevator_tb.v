`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2023 00:54:49
// Design Name: 
// Module Name: Elevator_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module smartelevator_tb;
    reg clk;
    reg sos;
    reg fan;
    reg [3:0]switch;
 
    reg light;
    reg rst;
    reg dooropen;
     //reg doorclose;
    //wire [2:0]ofloor,
     wire osos;
    wire olight;
     wire ofan;
     wire odooropen;
     wire [3:0]ofloor;
     wire[7:0]l;
    
smartelevator dut(
     .clk(clk),
     .sos(sos),
     .fan( fan),
     .switch(switch),
     .light(light),
     .rst(rst),
     .dooropen(dooropen),
     // .doorclose(doorclose),
    //wire [2:0]ofloor,
      .osos (osos),
      .olight(olight),
      .ofan(ofan),
      .odooropen(odooropen),
      .ofloor(ofloor),
      .l(l)
    );
    initial 
    begin 
    clk=1'b0;
  #10 switch=4'b0000;
  #10 switch=4'b0001;
  #10 switch=4'b0010;#10 switch=4'b0011;#10 switch=4'b0100;#10 switch=4'b0101;
  
  
  
  
  #5 switch=4'b1011;
    end
    always #5clk=~clk;
    
endmodule

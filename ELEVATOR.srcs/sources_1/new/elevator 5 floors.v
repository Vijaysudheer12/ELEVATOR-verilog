`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2023 15:48:15
// Design Name: 
// Module Name: elevator 5 floors
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


module smartelevator(
    input clk,
    input sos,
    input fan,
    input[3:0]switch,
   
    input light,
    input rst,
    input dooropen,
    
    //input doorclose,
    //output [2:0]floor,
    output reg osos,
    output reg olight,
    output reg ofan,
    output reg odooropen,
    output reg[3:0]ofloor,
    output reg[7:0]l
    );
    


    localparam[3:0]
    Groundfloor=4'b0000,
    Firstfloor=4'b0001,
    Secondfloor=4'b0010,
    Thirdfloor=4'b0011,
    Fourthfloor=4'b0100,
    Fifthfloor=4'b0101,
    OGroundfloor=4'b0110,
    OFirstfloor=4'b0111,
    OSecondfloor=4'b1000,
    OThirdfloor=4'b1001,
    OFourthfloor=4'b1010,
    OFifthfloor=4'b1011;
//    localparam[2:0]
//    Groundswitch=4'b0000,
//    Firstswitch=4'b0001,
//    Secondswitch=4'b0010,
//    Thirdfswitch=4'b0011,
//    Fourthswitch=4'b0100,
//    Fifthswitch=4'b0101;
//    localparam[2:0]
//    Groundswitch=4'b0000,
//    Firstswitch=4'b0001,
//    Secondswitch=4'b0010,
//    Thirdfswitch=4'b0011,
//    Fourthswitch=4'b0100,
//    Fifthswitch=4'b0101;

  reg[3:0]present_state,next_state;
    //reg sos,light,fan,dooropen,doorclose;
 
    always@(posedge clk)
    begin
    if(rst)
    begin
    present_state=Groundfloor;
    //next_state=Firstfloor;
    end 
    else
    begin//1
    
    case(switch)
    Groundfloor:begin
                 ofloor=4'b0000;
                 l=8'b01000011;
               // display d1 (ofloor,G);
                 odooropen=1'b1;
                 
                 if(switch == Firstfloor)
                      next_state=Firstfloor;
                 else if(switch == Secondfloor)
                          next_state=Secondfloor;
                  else if(switch == Thirdfloor)
                          next_state=Thirdfloor;
                  else if(switch==Fourthfloor)
                          next_state= Fourthfloor;
                  
                  else if(switch==Fifthfloor)
                       next_state=Fifthfloor;
                 
                 else if(switch==OFifthfloor)
                       next_state=Fifthfloor;
                 else if(switch==OFourthfloor)
                          next_state= Fourthfloor;
                 else if(switch == OThirdfloor)
                          next_state=Thirdfloor;
                  else if(switch == OSecondfloor)
                          next_state=Secondfloor;
                   else if(switch == OFirstfloor)
                          next_state=Firstfloor;
                          
                   else next_state=present_state;
                          
    
    end
    Firstfloor: begin
                ofloor=4'b0001;
                odooropen=1'b1;
                l=8'b10011111;
                 if(switch == Groundfloor)
                      next_state=Groundfloor;
                      else if(switch == Secondfloor)
                          next_state=Secondfloor;
                      else if(switch == Thirdfloor)
                          next_state=Thirdfloor;
                          else if(switch==Fourthfloor)
                          next_state= Fourthfloor;
                else if(switch==Fifthfloor)
                       next_state=Fifthfloor;
                 
                 
                  
                    
                   else  if(switch==OFifthfloor)
                      next_state =Fifthfloor;
                 else if(switch==OFourthfloor)
                          next_state= Fourthfloor;
                 else if(switch == OThirdfloor)
                          next_state=Thirdfloor;
                  else if(switch == OSecondfloor)
                          next_state=Secondfloor;
                   else if(switch == OGroundfloor)
                          next_state=Groundfloor;
                          
                          
                  

                     else next_state=present_state;
                end
        Secondfloor: begin
                   ofloor=4'b0010;
                   odooropen=1'b1;
                 l=8'b00100101;
                  if(switch == Firstfloor)
                      next_state=Firstfloor;
                 else if(switch == Groundfloor)
                      next_state=Groundfloor;
                  else if(switch == Thirdfloor)
                          next_state=Thirdfloor;
                          else if(switch==Fourthfloor)
                          next_state= Fourthfloor;
                   else if(switch==Fifthfloor)
                       next_state=Fifthfloor;
                       
                                     else  if(switch==OFifthfloor)
                       next_state =Fifthfloor;
                 else if(switch==OFourthfloor)
                          next_state= Fourthfloor;
                 else if(switch == OThirdfloor)
                          next_state=Thirdfloor;
                 // else if(switch == OSecondfloor)
                         // next_state=Secondfloor;
                  else if(switch == OFirstfloor)
                      next_state=OFirstfloor;
                   else if(switch == OGroundfloor)
                          next_state=Groundfloor;
                          
                          
                           else next_state=present_state;
                      end
                 Thirdfloor: begin
                           ofloor=4'b0011;
                           odooropen=1'b1;
                           l=8'b00001101;
                  if(switch == Secondfloor)
                          next_state=Secondfloor;
                  else if(switch == Firstfloor)
                      next_state=Firstfloor;
                  else if(switch == Groundfloor)
                      next_state=Groundfloor;
                      else if(switch == Thirdfloor)
                          next_state=Thirdfloor;
                      else if(switch==Fourthfloor)
                          next_state= Fourthfloor;
                  else if(switch==Fifthfloor)
                       next_state=Fifthfloor;
                  
                  
                                     else  if(switch==OFifthfloor)
                       next_state =Fifthfloor;
                 else if(switch==OFourthfloor)
                          next_state= Fourthfloor;
                 //else if(switch == OThirdfloor)
                         // next_state=Thirdfloor;
                  else if(switch == OSecondfloor)
                          next_state=Secondfloor;
                  else if(switch == OFirstfloor)
                      next_state=OFirstfloor;
                   else if(switch == OGroundfloor)
                          next_state=Groundfloor;
                          
                          
                          
                           else next_state=present_state;
                  end
                Fourthfloor:begin
                ofloor=4'b0100;
                odooropen=1'b1;
                 l=8'b10011001;
                 if(switch==Fifthfloor)
                       next_state=Fifthfloor;
                   else if(switch == Thirdfloor)
                          next_state=Thirdfloor;
                  else if(switch == Secondfloor)
                        next_state=Secondfloor;
                  else if(switch == Firstfloor)
                      next_state=Firstfloor;
                  else if(switch == Groundfloor)
                      next_state=Groundfloor;
                               else  if(switch==OFifthfloor)
                       next_state =Fifthfloor;
                 //else if(switch==OFourthfloor)
                          //next_state= Fourthfloor;
                 else if(switch == OThirdfloor)
                          next_state=Thirdfloor;
                  else if(switch == OSecondfloor)
                          next_state=Secondfloor;
                  else if(switch == OFirstfloor)
                      next_state=OFirstfloor;
                   else if(switch == OGroundfloor)
                          next_state=Groundfloor;
                          
                          
                           else next_state=present_state;
                  end
                 Fifthfloor:
                 begin
                 ofloor=4'b0101;
                 odooropen=1'b1;
                 l=8'b01001001;
                 if(switch==Fourthfloor)
                       next_state=Fourthfloor;
                   else if(switch == Thirdfloor)
                          next_state=Thirdfloor;
                  else if(switch == Secondfloor)
                        next_state=Secondfloor;
                  else if(switch == Firstfloor)
                      next_state=Firstfloor;
                  else if(switch == Groundfloor)
                      next_state=Groundfloor;
                                           //       else  if(switch==OFifthfloor)
                      // next_state =Fifthfloor;
                 else if(switch==OFourthfloor)
                          next_state= Fourthfloor;
                 else if(switch == OThirdfloor)
                          next_state=Thirdfloor;
                  else if(switch == OSecondfloor)
                          next_state=Secondfloor;
                  else if(switch == OFirstfloor)
                      next_state=OFirstfloor;
                   else if(switch == OGroundfloor)
                          next_state=Groundfloor;
                          
                          
                   else next_state=present_state;
                 end
                 
           default:
            begin
            ofloor=Groundfloor;
            end
    endcase
    end
    end
    always@(*)
    begin
    if (sos) osos=1'b1;
    else osos=1'b0;
     if(light) olight=1'b1;
     else olight=1'b0;
     
     if(Groundfloor || Firstfloor || Secondfloor || Thirdfloor || Fourthfloor || Fifthfloor )
     begin
     if(fan)
      ofan=1'b1;
      else 
     ofan=1'b0;
     end 
    end
    
 
endmodule


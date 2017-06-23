//-----------------------------------------------------------------------------
// Company: 			                                                              
// Author:				Andy                                                          
// Date:                                                                       
// Module Name:       full_st1_mem_data
// Description:                                                                
//                                                                             
//-----------------------------------------------------------------------------

`ifndef TYPES
  `include "types.v"
  `define TYPES
`endif

    module full_st1_mem_data(
  input                         clk,
  input data_int_32_7           data_int,
  input                 [31:0]  data_int_wr_data,
  input                         reset,
  output                [31:0]  data_int_rd_data);

// Parameters 



// Wires 

  mem_int_0_32_7                mem_int_0;  // <1,0>
  wire                  [31:0]  read_0            ;  // <32,0>
  wire                  [31:0]  write_0           ;  // <32,0>
  wire                          write_sub         ;  // <1,1>


// Registers 



// Other



////////////////////////////////////////////////////////////////////////////////
// full_st1_mem_data_0
////////////////////////////////////////////////////////////////////////////////

memory_32_7 full_st1_mem_data_0 (
    .clk(clk),
    .m(mem_int_0),
    .m_rd_data(read_0),
    .m_wr_data(write_0),
    .reset(reset));

assign write_0 = data_int_wr_data[31:0];
assign mem_int_0 = data_int;
assign data_int_rd_data[31:0] = read_0;
endmodule


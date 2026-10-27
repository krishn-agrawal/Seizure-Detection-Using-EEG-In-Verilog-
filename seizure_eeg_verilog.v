// Generated from the trained scikit-learn Random Forest
// Inputs: 16 selected EEG values, signed Q8.8
// Leaf probabilities: unsigned Q0.12-style integer scale 4095
module rf_eeg(
    input wire signed [15:0] x0,
    input wire signed [15:0] x1,
    input wire signed [15:0] x2,
    input wire signed [15:0] x3,
    input wire signed [15:0] x4,
    input wire signed [15:0] x5,
    input wire signed [15:0] x6,
    input wire signed [15:0] x7,
    input wire signed [15:0] x8,
    input wire signed [15:0] x9,
    input wire signed [15:0] x10,
    input wire signed [15:0] x11,
    input wire signed [15:0] x12,
    input wire signed [15:0] x13,
    input wire signed [15:0] x14,
    input wire signed [15:0] x15,
    output reg seizure_detected
);

reg [11:0] p0;
reg [11:0] p1;
reg [11:0] p2;
reg [11:0] p3;
reg [11:0] p4;
reg [11:0] p5;
reg [11:0] p6;
reg [11:0] p7;
reg [11:0] p8;
reg [11:0] p9;
reg [11:0] p10;
reg [11:0] p11;
reg [11:0] p12;
reg [11:0] p13;
reg [11:0] p14;
reg [11:0] p15;
reg [11:0] p16;
reg [11:0] p17;
reg [11:0] p18;
reg [11:0] p19;
reg [11:0] p20;
reg [11:0] p21;
reg [11:0] p22;
reg [11:0] p23;
reg [11:0] p24;
reg [17:0] prob_sum;

always @* begin
  if (x1 <= 16'sd109) begin
    if (x10 <= -16'sd105) begin
      if (x3 <= -16'sd143) begin
        p0 = 12'd3329;
      end else begin
        p0 = 12'd2352;
      end
    end else begin
      if (x1 <= -16'sd60) begin
        p0 = 12'd2331;
      end else begin
        p0 = 12'd938;
      end
    end
  end else begin
    if (x0 <= 16'sd142) begin
      if (x10 <= -16'sd124) begin
        p0 = 12'd3412;
      end else begin
        p0 = 12'd2609;
      end
    end else begin
      if (x9 <= -16'sd293) begin
        p0 = 12'd4033;
      end else begin
        p0 = 12'd3369;
      end
    end
  end
end

always @* begin
  if (x15 <= 16'sd96) begin
    if (x4 <= 16'sd140) begin
      if (x11 <= -16'sd99) begin
        p1 = 12'd2478;
      end else begin
        p1 = 12'd1174;
      end
    end else begin
      if (x2 <= 16'sd102) begin
        p1 = 12'd2395;
      end else begin
        p1 = 12'd3429;
      end
    end
  end else begin
    if (x9 <= -16'sd444) begin
      if (x0 <= 16'sd110) begin
        p1 = 12'd3500;
      end else begin
        p1 = 12'd4072;
      end
    end else begin
      if (x2 <= 16'sd211) begin
        p1 = 12'd2795;
      end else begin
        p1 = 12'd3648;
      end
    end
  end
end

always @* begin
  if (x9 <= -16'sd106) begin
    if (x6 <= 16'sd195) begin
      if (x2 <= 16'sd150) begin
        p2 = 12'd2528;
      end else begin
        p2 = 12'd3500;
      end
    end else begin
      if (x5 <= 16'sd278) begin
        p2 = 12'd3141;
      end else begin
        p2 = 12'd3850;
      end
    end
  end else begin
    if (x15 <= 16'sd63) begin
      if (x15 <= -16'sd134) begin
        p2 = 12'd2684;
      end else begin
        p2 = 12'd919;
      end
    end else begin
      if (x12 <= -16'sd268) begin
        p2 = 12'd3799;
      end else begin
        p2 = 12'd2594;
      end
    end
  end
end

always @* begin
  if (x0 <= 16'sd139) begin
    if (x5 <= 16'sd271) begin
      if (x8 <= 16'sd253) begin
        p3 = 12'd1301;
      end else begin
        p3 = 12'd3195;
      end
    end else begin
      if (x4 <= -16'sd209) begin
        p3 = 12'd0;
      end else begin
        p3 = 12'd3457;
      end
    end
  end else begin
    if (x9 <= -16'sd331) begin
      if (x9 <= -16'sd503) begin
        p3 = 12'd4031;
      end else begin
        p3 = 12'd3673;
      end
    end else begin
      if (x10 <= 16'sd312) begin
        p3 = 12'd2655;
      end else begin
        p3 = 12'd3899;
      end
    end
  end
end

always @* begin
  if (x2 <= 16'sd94) begin
    if (x14 <= 16'sd123) begin
      if (x3 <= -16'sd135) begin
        p4 = 12'd2693;
      end else begin
        p4 = 12'd905;
      end
    end else begin
      if (x0 <= 16'sd173) begin
        p4 = 12'd2722;
      end else begin
        p4 = 12'd3620;
      end
    end
  end else begin
    if (x1 <= 16'sd263) begin
      if (x5 <= 16'sd271) begin
        p4 = 12'd2438;
      end else begin
        p4 = 12'd3695;
      end
    end else begin
      if (x12 <= 16'sd451) begin
        p4 = 12'd3389;
      end else begin
        p4 = 12'd4035;
      end
    end
  end
end

always @* begin
  if (x11 <= -16'sd107) begin
    if (x15 <= 16'sd407) begin
      if (x9 <= -16'sd296) begin
        p5 = 12'd3857;
      end else begin
        p5 = 12'd2784;
      end
    end else begin
      if (x14 <= -16'sd4) begin
        p5 = 12'd3634;
      end else begin
        p5 = 12'd4036;
      end
    end
  end else begin
    if (x12 <= 16'sd56) begin
      if (x14 <= 16'sd120) begin
        p5 = 12'd806;
      end else begin
        p5 = 12'd2715;
      end
    end else begin
      if (x0 <= 16'sd117) begin
        p5 = 12'd2267;
      end else begin
        p5 = 12'd3252;
      end
    end
  end
end

always @* begin
  if (x3 <= 16'sd91) begin
    if (x11 <= -16'sd110) begin
      if (x2 <= -16'sd176) begin
        p6 = 12'd3599;
      end else begin
        p6 = 12'd2502;
      end
    end else begin
      if (x1 <= -16'sd96) begin
        p6 = 12'd2506;
      end else begin
        p6 = 12'd881;
      end
    end
  end else begin
    if (x0 <= 16'sd146) begin
      if (x9 <= -16'sd129) begin
        p6 = 12'd3303;
      end else begin
        p6 = 12'd2378;
      end
    end else begin
      if (x9 <= 16'sd423) begin
        p6 = 12'd3641;
      end else begin
        p6 = 12'd4095;
      end
    end
  end
end

always @* begin
  if (x5 <= 16'sd269) begin
    if (x2 <= 16'sd95) begin
      if (x0 <= 16'sd92) begin
        p7 = 12'd1152;
      end else begin
        p7 = 12'd2564;
      end
    end else begin
      if (x3 <= 16'sd610) begin
        p7 = 12'd2794;
      end else begin
        p7 = 12'd3831;
      end
    end
  end else begin
    if (x11 <= -16'sd229) begin
      if (x8 <= 16'sd129) begin
        p7 = 12'd3771;
      end else begin
        p7 = 12'd4063;
      end
    end else begin
      if (x12 <= -16'sd172) begin
        p7 = 12'd1082;
      end else begin
        p7 = 12'd3357;
      end
    end
  end
end

always @* begin
  if (x0 <= 16'sd139) begin
    if (x0 <= -16'sd164) begin
      if (x11 <= -16'sd110) begin
        p8 = 12'd3488;
      end else begin
        p8 = 12'd2662;
      end
    end else begin
      if (x15 <= 16'sd76) begin
        p8 = 12'd967;
      end else begin
        p8 = 12'd2506;
      end
    end
  end else begin
    if (x1 <= 16'sd139) begin
      if (x3 <= -16'sd260) begin
        p8 = 12'd3734;
      end else begin
        p8 = 12'd2630;
      end
    end else begin
      if (x2 <= -16'sd84) begin
        p8 = 12'd0;
      end else begin
        p8 = 12'd3810;
      end
    end
  end
end

always @* begin
  if (x3 <= 16'sd94) begin
    if (x0 <= 16'sd139) begin
      if (x2 <= -16'sd135) begin
        p9 = 12'd2777;
      end else begin
        p9 = 12'd1023;
      end
    end else begin
      if (x12 <= -16'sd41) begin
        p9 = 12'd3511;
      end else begin
        p9 = 12'd2443;
      end
    end
  end else begin
    if (x14 <= 16'sd126) begin
      if (x1 <= 16'sd262) begin
        p9 = 12'd2519;
      end else begin
        p9 = 12'd3378;
      end
    end else begin
      if (x2 <= -16'sd118) begin
        p9 = 12'd0;
      end else begin
        p9 = 12'd3625;
      end
    end
  end
end

always @* begin
  if (x3 <= 16'sd94) begin
    if (x1 <= -16'sd113) begin
      if (x2 <= -16'sd364) begin
        p10 = 12'd3586;
      end else begin
        p10 = 12'd2487;
      end
    end else begin
      if (x12 <= -16'sd101) begin
        p10 = 12'd2571;
      end else begin
        p10 = 12'd842;
      end
    end
  end else begin
    if (x14 <= 16'sd158) begin
      if (x11 <= -16'sd336) begin
        p10 = 12'd3747;
      end else begin
        p10 = 12'd2702;
      end
    end else begin
      if (x5 <= 16'sd312) begin
        p10 = 12'd3535;
      end else begin
        p10 = 12'd4009;
      end
    end
  end
end

always @* begin
  if (x0 <= 16'sd130) begin
    if (x12 <= -16'sd127) begin
      if (x9 <= -16'sd111) begin
        p11 = 12'd3579;
      end else begin
        p11 = 12'd2602;
      end
    end else begin
      if (x3 <= 16'sd95) begin
        p11 = 12'd1041;
      end else begin
        p11 = 12'd2651;
      end
    end
  end else begin
    if (x10 <= -16'sd348) begin
      if (x9 <= -16'sd312) begin
        p11 = 12'd3963;
      end else begin
        p11 = 12'd2146;
      end
    end else begin
      if (x14 <= 16'sd181) begin
        p11 = 12'd2746;
      end else begin
        p11 = 12'd3685;
      end
    end
  end
end

always @* begin
  if (x14 <= 16'sd123) begin
    if (x3 <= 16'sd94) begin
      if (x8 <= 16'sd160) begin
        p12 = 12'd1118;
      end else begin
        p12 = 12'd2817;
      end
    end else begin
      if (x5 <= 16'sd266) begin
        p12 = 12'd2622;
      end else begin
        p12 = 12'd3676;
      end
    end
  end else begin
    if (x10 <= -16'sd203) begin
      if (x14 <= 16'sd176) begin
        p12 = 12'd2974;
      end else begin
        p12 = 12'd3849;
      end
    end else begin
      if (x3 <= 16'sd126) begin
        p12 = 12'd2801;
      end else begin
        p12 = 12'd3570;
      end
    end
  end
end

always @* begin
  if (x15 <= 16'sd98) begin
    if (x4 <= 16'sd119) begin
      if (x1 <= 16'sd139) begin
        p13 = 12'd1091;
      end else begin
        p13 = 12'd2668;
      end
    end else begin
      if (x6 <= 16'sd537) begin
        p13 = 12'd2703;
      end else begin
        p13 = 12'd3742;
      end
    end
  end else begin
    if (x12 <= -16'sd249) begin
      if (x8 <= 16'sd282) begin
        p13 = 12'd3758;
      end else begin
        p13 = 12'd4095;
      end
    end else begin
      if (x7 <= -16'sd304) begin
        p13 = 12'd3626;
      end else begin
        p13 = 12'd2742;
      end
    end
  end
end

always @* begin
  if (x0 <= 16'sd92) begin
    if (x9 <= -16'sd106) begin
      if (x0 <= -16'sd173) begin
        p14 = 12'd3454;
      end else begin
        p14 = 12'd2551;
      end
    end else begin
      if (x11 <= -16'sd94) begin
        p14 = 12'd2535;
      end else begin
        p14 = 12'd1033;
      end
    end
  end else begin
    if (x11 <= -16'sd332) begin
      if (x9 <= -16'sd402) begin
        p14 = 12'd4069;
      end else begin
        p14 = 12'd3738;
      end
    end else begin
      if (x3 <= 16'sd94) begin
        p14 = 12'd2655;
      end else begin
        p14 = 12'd3437;
      end
    end
  end
end

always @* begin
  if (x10 <= -16'sd116) begin
    if (x1 <= 16'sd225) begin
      if (x4 <= 16'sd268) begin
        p15 = 12'd2706;
      end else begin
        p15 = 12'd3728;
      end
    end else begin
      if (x14 <= -16'sd244) begin
        p15 = 12'd2445;
      end else begin
        p15 = 12'd3859;
      end
    end
  end else begin
    if (x0 <= 16'sd83) begin
      if (x2 <= 16'sd86) begin
        p15 = 12'd989;
      end else begin
        p15 = 12'd2635;
      end
    end else begin
      if (x10 <= 16'sd153) begin
        p15 = 12'd2346;
      end else begin
        p15 = 12'd3488;
      end
    end
  end
end

always @* begin
  if (x10 <= -16'sd105) begin
    if (x2 <= 16'sd115) begin
      if (x3 <= -16'sd143) begin
        p16 = 12'd3413;
      end else begin
        p16 = 12'd2315;
      end
    end else begin
      if (x10 <= -16'sd796) begin
        p16 = 12'd4095;
      end else begin
        p16 = 12'd3520;
      end
    end
  end else begin
    if (x0 <= 16'sd76) begin
      if (x10 <= 16'sd101) begin
        p16 = 12'd875;
      end else begin
        p16 = 12'd2479;
      end
    end else begin
      if (x10 <= 16'sd47) begin
        p16 = 12'd1723;
      end else begin
        p16 = 12'd3143;
      end
    end
  end
end

always @* begin
  if (x9 <= -16'sd152) begin
    if (x1 <= 16'sd136) begin
      if (x12 <= -16'sd126) begin
        p17 = 12'd3660;
      end else begin
        p17 = 12'd2489;
      end
    end else begin
      if (x7 <= 16'sd70) begin
        p17 = 12'd3886;
      end else begin
        p17 = 12'd3487;
      end
    end
  end else begin
    if (x1 <= 16'sd162) begin
      if (x15 <= 16'sd128) begin
        p17 = 12'd1186;
      end else begin
        p17 = 12'd2894;
      end
    end else begin
      if (x10 <= 16'sd73) begin
        p17 = 12'd2702;
      end else begin
        p17 = 12'd3490;
      end
    end
  end
end

always @* begin
  if (x0 <= 16'sd92) begin
    if (x0 <= -16'sd174) begin
      if (x5 <= 16'sd305) begin
        p18 = 12'd2480;
      end else begin
        p18 = 12'd3766;
      end
    end else begin
      if (x2 <= 16'sd70) begin
        p18 = 12'd1018;
      end else begin
        p18 = 12'd2431;
      end
    end
  end else begin
    if (x15 <= 16'sd104) begin
      if (x15 <= -16'sd311) begin
        p18 = 12'd3776;
      end else begin
        p18 = 12'd2373;
      end
    end else begin
      if (x11 <= -16'sd343) begin
        p18 = 12'd3980;
      end else begin
        p18 = 12'd3507;
      end
    end
  end
end

always @* begin
  if (x10 <= -16'sd112) begin
    if (x11 <= -16'sd301) begin
      if (x0 <= -16'sd67) begin
        p19 = 12'd3543;
      end else begin
        p19 = 12'd4013;
      end
    end else begin
      if (x8 <= 16'sd532) begin
        p19 = 12'd2834;
      end else begin
        p19 = 12'd3977;
      end
    end
  end else begin
    if (x10 <= 16'sd100) begin
      if (x11 <= -16'sd115) begin
        p19 = 12'd2505;
      end else begin
        p19 = 12'd936;
      end
    end else begin
      if (x15 <= 16'sd63) begin
        p19 = 12'd2420;
      end else begin
        p19 = 12'd3292;
      end
    end
  end
end

always @* begin
  if (x5 <= 16'sd269) begin
    if (x12 <= -16'sd99) begin
      if (x15 <= 16'sd197) begin
        p20 = 12'd2618;
      end else begin
        p20 = 12'd3688;
      end
    end else begin
      if (x12 <= 16'sd53) begin
        p20 = 12'd856;
      end else begin
        p20 = 12'd2246;
      end
    end
  end else begin
    if (x4 <= 16'sd681) begin
      if (x1 <= 16'sd17) begin
        p20 = 12'd2897;
      end else begin
        p20 = 12'd3564;
      end
    end else begin
      if (x5 <= 16'sd1402) begin
        p20 = 12'd4047;
      end else begin
        p20 = 12'd3494;
      end
    end
  end
end

always @* begin
  if (x10 <= -16'sd117) begin
    if (x10 <= -16'sd651) begin
      if (x15 <= 16'sd298) begin
        p21 = 12'd3779;
      end else begin
        p21 = 12'd4054;
      end
    end else begin
      if (x7 <= -16'sd709) begin
        p21 = 12'd4024;
      end else begin
        p21 = 12'd2966;
      end
    end
  end else begin
    if (x1 <= 16'sd110) begin
      if (x15 <= 16'sd105) begin
        p21 = 12'd1010;
      end else begin
        p21 = 12'd2776;
      end
    end else begin
      if (x10 <= 16'sd338) begin
        p21 = 12'd2692;
      end else begin
        p21 = 12'd3753;
      end
    end
  end
end

always @* begin
  if (x3 <= 16'sd91) begin
    if (x3 <= -16'sd135) begin
      if (x7 <= -16'sd114) begin
        p22 = 12'd3426;
      end else begin
        p22 = 12'd2617;
      end
    end else begin
      if (x14 <= 16'sd94) begin
        p22 = 12'd944;
      end else begin
        p22 = 12'd2694;
      end
    end
  end else begin
    if (x0 <= 16'sd160) begin
      if (x5 <= 16'sd292) begin
        p22 = 12'd2502;
      end else begin
        p22 = 12'd3666;
      end
    end else begin
      if (x1 <= 16'sd513) begin
        p22 = 12'd3569;
      end else begin
        p22 = 12'd4019;
      end
    end
  end
end

always @* begin
  if (x14 <= 16'sd145) begin
    if (x9 <= -16'sd99) begin
      if (x5 <= 16'sd322) begin
        p23 = 12'd2696;
      end else begin
        p23 = 12'd3734;
      end
    end else begin
      if (x15 <= 16'sd94) begin
        p23 = 12'd1003;
      end else begin
        p23 = 12'd2747;
      end
    end
  end else begin
    if (x0 <= 16'sd196) begin
      if (x2 <= 16'sd95) begin
        p23 = 12'd2724;
      end else begin
        p23 = 12'd3530;
      end
    end else begin
      if (x9 <= -16'sd308) begin
        p23 = 12'd4095;
      end else begin
        p23 = 12'd3615;
      end
    end
  end
end

always @* begin
  if (x1 <= 16'sd108) begin
    if (x2 <= -16'sd65) begin
      if (x1 <= -16'sd230) begin
        p24 = 12'd3149;
      end else begin
        p24 = 12'd2126;
      end
    end else begin
      if (x9 <= -16'sd118) begin
        p24 = 12'd2585;
      end else begin
        p24 = 12'd940;
      end
    end
  end else begin
    if (x15 <= 16'sd113) begin
      if (x4 <= 16'sd130) begin
        p24 = 12'd2298;
      end else begin
        p24 = 12'd3529;
      end
    end else begin
      if (x0 <= 16'sd61) begin
        p24 = 12'd3304;
      end else begin
        p24 = 12'd3839;
      end
    end
  end
end

always @* begin
    prob_sum = 18'd0;
    prob_sum = prob_sum + p0;
    prob_sum = prob_sum + p1;
    prob_sum = prob_sum + p2;
    prob_sum = prob_sum + p3;
    prob_sum = prob_sum + p4;
    prob_sum = prob_sum + p5;
    prob_sum = prob_sum + p6;
    prob_sum = prob_sum + p7;
    prob_sum = prob_sum + p8;
    prob_sum = prob_sum + p9;
    prob_sum = prob_sum + p10;
    prob_sum = prob_sum + p11;
    prob_sum = prob_sum + p12;
    prob_sum = prob_sum + p13;
    prob_sum = prob_sum + p14;
    prob_sum = prob_sum + p15;
    prob_sum = prob_sum + p16;
    prob_sum = prob_sum + p17;
    prob_sum = prob_sum + p18;
    prob_sum = prob_sum + p19;
    prob_sum = prob_sum + p20;
    prob_sum = prob_sum + p21;
    prob_sum = prob_sum + p22;
    prob_sum = prob_sum + p23;
    prob_sum = prob_sum + p24;
    seizure_detected = (prob_sum >= 18'd38391);
end

endmodule
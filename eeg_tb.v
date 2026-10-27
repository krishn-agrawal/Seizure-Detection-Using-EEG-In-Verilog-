`timescale 1ns/1ps
module tb_rf_eeg_3;
reg signed [15:0] x0;
reg signed [15:0] x1;
reg signed [15:0] x2;
reg signed [15:0] x3;
reg signed [15:0] x4;
reg signed [15:0] x5;
reg signed [15:0] x6;
reg signed [15:0] x7;
reg signed [15:0] x8;
reg signed [15:0] x9;
reg signed [15:0] x10;
reg signed [15:0] x11;
reg signed [15:0] x12;
reg signed [15:0] x13;
reg signed [15:0] x14;
reg signed [15:0] x15;
wire seizure_detected;

rf_eeg dut (
    .x0(x0),
    .x1(x1),
    .x2(x2),
    .x3(x3),
    .x4(x4),
    .x5(x5),
    .x6(x6),
    .x7(x7),
    .x8(x8),
    .x9(x9),
    .x10(x10),
    .x11(x11),
    .x12(x12),
    .x13(x13),
    .x14(x14),
    .x15(x15),
    .seizure_detected(seizure_detected)
);

initial begin
    x0 = -16'sd173;
    x1 = -16'sd305;
    x2 = -16'sd311;
    x3 = -16'sd342;
    x4 = -16'sd42;
    x5 = -16'sd58;
    x6 = -16'sd96;
    x7 = 16'sd196;
    x8 = -16'sd499;
    x9 = 16'sd863;
    x10 = 16'sd900;
    x11 = 16'sd1;
    x12 = 16'sd2;
    x13 = -16'sd166;
    x14 = -16'sd319;
    x15 = -16'sd249;
    #10;
    $display("Sample 1: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 1 mismatch");

    x0 = -16'sd2;
    x1 = -16'sd61;
    x2 = -16'sd32;
    x3 = -16'sd7;
    x4 = -16'sd36;
    x5 = -16'sd41;
    x6 = -16'sd49;
    x7 = 16'sd66;
    x8 = -16'sd90;
    x9 = -16'sd13;
    x10 = -16'sd17;
    x11 = 16'sd45;
    x12 = 16'sd56;
    x13 = 16'sd27;
    x14 = -16'sd163;
    x15 = 16'sd4;
    #10;
    $display("Sample 2: expected=0, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b0) $display("ERROR: Sample 2 mismatch");

    x0 = 16'sd120;
    x1 = -16'sd282;
    x2 = -16'sd299;
    x3 = -16'sd295;
    x4 = 16'sd494;
    x5 = 16'sd473;
    x6 = 16'sd515;
    x7 = -16'sd276;
    x8 = 16'sd104;
    x9 = -16'sd189;
    x10 = -16'sd223;
    x11 = 16'sd18;
    x12 = 16'sd22;
    x13 = 16'sd64;
    x14 = 16'sd167;
    x15 = -16'sd206;
    #10;
    $display("Sample 3: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 3 mismatch");

    x0 = -16'sd35;
    x1 = 16'sd44;
    x2 = 16'sd13;
    x3 = -16'sd10;
    x4 = -16'sd87;
    x5 = 16'sd4;
    x6 = -16'sd11;
    x7 = -16'sd19;
    x8 = -16'sd221;
    x9 = 16'sd129;
    x10 = 16'sd147;
    x11 = -16'sd25;
    x12 = -16'sd4;
    x13 = -16'sd174;
    x14 = -16'sd37;
    x15 = -16'sd4;
    #10;
    $display("Sample 4: expected=0, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b0) $display("ERROR: Sample 4 mismatch");

    x0 = 16'sd15;
    x1 = 16'sd175;
    x2 = 16'sd174;
    x3 = 16'sd184;
    x4 = -16'sd46;
    x5 = -16'sd4;
    x6 = 16'sd19;
    x7 = -16'sd39;
    x8 = 16'sd4;
    x9 = -16'sd110;
    x10 = -16'sd81;
    x11 = -16'sd73;
    x12 = -16'sd89;
    x13 = 16'sd48;
    x14 = 16'sd17;
    x15 = 16'sd15;
    #10;
    $display("Sample 5: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 5 mismatch");

    x0 = 16'sd368;
    x1 = -16'sd457;
    x2 = 16'sd169;
    x3 = 16'sd262;
    x4 = 16'sd225;
    x5 = -16'sd532;
    x6 = -16'sd313;
    x7 = -16'sd214;
    x8 = -16'sd227;
    x9 = 16'sd174;
    x10 = -16'sd99;
    x11 = -16'sd115;
    x12 = 16'sd581;
    x13 = -16'sd518;
    x14 = -16'sd737;
    x15 = -16'sd56;
    #10;
    $display("Sample 6: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 6 mismatch");

    x0 = -16'sd16;
    x1 = -16'sd7;
    x2 = -16'sd6;
    x3 = 16'sd8;
    x4 = 16'sd51;
    x5 = -16'sd10;
    x6 = 16'sd5;
    x7 = 16'sd24;
    x8 = 16'sd28;
    x9 = 16'sd45;
    x10 = 16'sd40;
    x11 = 16'sd36;
    x12 = 16'sd31;
    x13 = -16'sd3;
    x14 = -16'sd44;
    x15 = 16'sd103;
    #10;
    $display("Sample 7: expected=0, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b0) $display("ERROR: Sample 7 mismatch");

    x0 = 16'sd1216;
    x1 = -16'sd599;
    x2 = -16'sd610;
    x3 = -16'sd286;
    x4 = 16'sd674;
    x5 = 16'sd126;
    x6 = -16'sd601;
    x7 = -16'sd278;
    x8 = -16'sd226;
    x9 = 16'sd280;
    x10 = 16'sd188;
    x11 = 16'sd161;
    x12 = 16'sd183;
    x13 = -16'sd635;
    x14 = -16'sd1046;
    x15 = 16'sd21;
    #10;
    $display("Sample 8: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 8 mismatch");

    x0 = 16'sd60;
    x1 = 16'sd135;
    x2 = 16'sd114;
    x3 = 16'sd99;
    x4 = -16'sd73;
    x5 = 16'sd13;
    x6 = 16'sd37;
    x7 = 16'sd198;
    x8 = 16'sd122;
    x9 = 16'sd39;
    x10 = 16'sd48;
    x11 = -16'sd20;
    x12 = -16'sd12;
    x13 = -16'sd42;
    x14 = -16'sd14;
    x15 = 16'sd436;
    #10;
    $display("Sample 9: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 9 mismatch");

    x0 = -16'sd76;
    x1 = -16'sd1;
    x2 = 16'sd5;
    x3 = 16'sd6;
    x4 = 16'sd58;
    x5 = 16'sd70;
    x6 = 16'sd79;
    x7 = -16'sd28;
    x8 = 16'sd26;
    x9 = -16'sd98;
    x10 = -16'sd102;
    x11 = 16'sd112;
    x12 = 16'sd110;
    x13 = 16'sd3;
    x14 = -16'sd32;
    x15 = 16'sd103;
    #10;
    $display("Sample 10: expected=0, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b0) $display("ERROR: Sample 10 mismatch");

    x0 = 16'sd311;
    x1 = 16'sd198;
    x2 = 16'sd187;
    x3 = 16'sd160;
    x4 = -16'sd71;
    x5 = -16'sd17;
    x6 = 16'sd12;
    x7 = 16'sd928;
    x8 = -16'sd238;
    x9 = 16'sd125;
    x10 = 16'sd137;
    x11 = 16'sd195;
    x12 = 16'sd237;
    x13 = 16'sd12;
    x14 = -16'sd90;
    x15 = -16'sd538;
    #10;
    $display("Sample 11: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 11 mismatch");

    x0 = 16'sd220;
    x1 = -16'sd1210;
    x2 = -16'sd1193;
    x3 = -16'sd1133;
    x4 = -16'sd458;
    x5 = -16'sd597;
    x6 = -16'sd631;
    x7 = 16'sd615;
    x8 = -16'sd512;
    x9 = -16'sd1689;
    x10 = -16'sd1576;
    x11 = -16'sd3;
    x12 = -16'sd1;
    x13 = 16'sd427;
    x14 = 16'sd424;
    x15 = -16'sd803;
    #10;
    $display("Sample 12: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 12 mismatch");

    x0 = 16'sd12;
    x1 = 16'sd397;
    x2 = 16'sd390;
    x3 = 16'sd340;
    x4 = 16'sd13;
    x5 = -16'sd3;
    x6 = -16'sd7;
    x7 = 16'sd25;
    x8 = -16'sd97;
    x9 = 16'sd42;
    x10 = -16'sd13;
    x11 = 16'sd34;
    x12 = 16'sd10;
    x13 = 16'sd56;
    x14 = 16'sd57;
    x15 = -16'sd123;
    #10;
    $display("Sample 13: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 13 mismatch");

    x0 = 16'sd507;
    x1 = 16'sd94;
    x2 = -16'sd210;
    x3 = -16'sd170;
    x4 = 16'sd77;
    x5 = 16'sd149;
    x6 = -16'sd135;
    x7 = -16'sd1655;
    x8 = -16'sd342;
    x9 = 16'sd96;
    x10 = 16'sd364;
    x11 = -16'sd438;
    x12 = -16'sd469;
    x13 = -16'sd55;
    x14 = 16'sd73;
    x15 = 16'sd1970;
    #10;
    $display("Sample 14: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 14 mismatch");

    x0 = -16'sd111;
    x1 = 16'sd297;
    x2 = 16'sd309;
    x3 = 16'sd311;
    x4 = -16'sd101;
    x5 = -16'sd139;
    x6 = -16'sd152;
    x7 = -16'sd123;
    x8 = 16'sd29;
    x9 = -16'sd228;
    x10 = -16'sd218;
    x11 = 16'sd140;
    x12 = 16'sd138;
    x13 = -16'sd493;
    x14 = 16'sd4;
    x15 = -16'sd115;
    #10;
    $display("Sample 15: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 15 mismatch");

    x0 = 16'sd188;
    x1 = 16'sd31;
    x2 = -16'sd14;
    x3 = 16'sd58;
    x4 = -16'sd74;
    x5 = -16'sd163;
    x6 = -16'sd60;
    x7 = -16'sd19;
    x8 = -16'sd11;
    x9 = 16'sd293;
    x10 = 16'sd258;
    x11 = -16'sd309;
    x12 = -16'sd299;
    x13 = -16'sd32;
    x14 = 16'sd14;
    x15 = 16'sd106;
    #10;
    $display("Sample 16: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 16 mismatch");

    x0 = -16'sd31;
    x1 = 16'sd110;
    x2 = 16'sd57;
    x3 = 16'sd53;
    x4 = 16'sd146;
    x5 = 16'sd162;
    x6 = 16'sd179;
    x7 = 16'sd271;
    x8 = 16'sd48;
    x9 = 16'sd203;
    x10 = 16'sd230;
    x11 = -16'sd148;
    x12 = -16'sd166;
    x13 = 16'sd188;
    x14 = -16'sd103;
    x15 = -16'sd206;
    #10;
    $display("Sample 17: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 17 mismatch");

    x0 = 16'sd1156;
    x1 = -16'sd79;
    x2 = 16'sd298;
    x3 = 16'sd662;
    x4 = 16'sd1691;
    x5 = 16'sd745;
    x6 = 16'sd291;
    x7 = -16'sd100;
    x8 = -16'sd425;
    x9 = -16'sd328;
    x10 = -16'sd469;
    x11 = 16'sd1295;
    x12 = 16'sd1402;
    x13 = -16'sd1229;
    x14 = 16'sd193;
    x15 = -16'sd504;
    #10;
    $display("Sample 18: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 18 mismatch");

    x0 = 16'sd148;
    x1 = -16'sd401;
    x2 = -16'sd403;
    x3 = -16'sd385;
    x4 = 16'sd995;
    x5 = 16'sd1044;
    x6 = 16'sd1089;
    x7 = 16'sd41;
    x8 = 16'sd457;
    x9 = 16'sd147;
    x10 = 16'sd186;
    x11 = 16'sd2;
    x12 = 16'sd12;
    x13 = -16'sd120;
    x14 = 16'sd291;
    x15 = -16'sd313;
    #10;
    $display("Sample 19: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 19 mismatch");

    x0 = 16'sd607;
    x1 = 16'sd323;
    x2 = 16'sd293;
    x3 = 16'sd182;
    x4 = 16'sd19;
    x5 = 16'sd37;
    x6 = 16'sd66;
    x7 = -16'sd91;
    x8 = -16'sd160;
    x9 = -16'sd316;
    x10 = -16'sd350;
    x11 = -16'sd71;
    x12 = -16'sd129;
    x13 = -16'sd94;
    x14 = -16'sd90;
    x15 = 16'sd238;
    #10;
    $display("Sample 20: expected=1, actual=%0d", seizure_detected);
    if (seizure_detected !== 1'b1) $display("ERROR: Sample 20 mismatch");

    $display("Testbench finished.");
    $finish;
end
endmodule

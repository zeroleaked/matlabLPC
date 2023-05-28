function r = my_autocorr(x)
% Menghitung Autokorelasi dari sinyal x sampai dengan maxlag lag value menggunakan konstruk dasar
% Inputs:
%   - x: sinyal pertama
%   - maxlag : 
% Outputs:
%   - r : hasil autokorelasi
%   - lags: time lags yang diasosiasikan dengan setiap nilai korelasi
r_local = zeros(1, 11);
output_length = 11;

r_local(1) = x(1) * x(1) + x(2) * x(2) + x(3) * x(3) + x(4) * x(4) + x(5) * x(5) + x(6) * x(6) + x(7) * x(7) + x(8) * x(8) + x(9) * x(9) + x(10) * x(10) + x(11) * x(11) + x(12) * x(12) + x(13) * x(13) + x(14) * x(14) + x(15) * x(15) + x(16) * x(16) + x(17) * x(17) + x(18) * x(18) + x(19) * x(19) + x(20) * x(20) + x(21) * x(21) + x(22) * x(22) + x(23) * x(23) + x(24) * x(24) + x(25) * x(25) + x(26) * x(26) + x(27) * x(27) + x(28) * x(28) + x(29) * x(29) + x(30) * x(30) + x(31) * x(31) + x(32) * x(32) + x(33) * x(33) + x(34) * x(34) + x(35) * x(35) + x(36) * x(36) + x(37) * x(37) + x(38) * x(38) + x(39) * x(39) + x(40) * x(40) + x(41) * x(41) + x(42) * x(42) + x(43) * x(43) + x(44) * x(44) + x(45) * x(45) + x(46) * x(46) + x(47) * x(47) + x(48) * x(48) + x(49) * x(49) + x(50) * x(50) + x(51) * x(51) + x(52) * x(52) + x(53) * x(53) + x(54) * x(54) + x(55) * x(55) + x(56) * x(56) + x(57) * x(57) + x(58) * x(58) + x(59) * x(59) + x(60) * x(60) + x(61) * x(61) + x(62) * x(62) + x(63) * x(63) + x(64) * x(64) + x(65) * x(65) + x(66) * x(66) + x(67) * x(67) + x(68) * x(68) + x(69) * x(69) + x(70) * x(70) + x(71) * x(71) + x(72) * x(72) + x(73) * x(73) + x(74) * x(74) + x(75) * x(75) + x(76) * x(76) + x(77) * x(77) + x(78) * x(78) + x(79) * x(79) + x(80) * x(80) + x(81) * x(81) + x(82) * x(82) + x(83) * x(83) + x(84) * x(84) + x(85) * x(85) + x(86) * x(86) + x(87) * x(87) + x(88) * x(88) + x(89) * x(89) + x(90) * x(90) + x(91) * x(91) + x(92) * x(92) + x(93) * x(93) + x(94) * x(94) + x(95) * x(95) + x(96) * x(96) + x(97) * x(97) + x(98) * x(98) + x(99) * x(99) + x(100) * x(100) + x(101) * x(101) + x(102) * x(102) + x(103) * x(103) + x(104) * x(104) + x(105) * x(105) + x(106) * x(106) + x(107) * x(107) + x(108) * x(108) + x(109) * x(109) + x(110) * x(110) + x(111) * x(111) + x(112) * x(112) + x(113) * x(113) + x(114) * x(114) + x(115) * x(115) + x(116) * x(116) + x(117) * x(117) + x(118) * x(118) + x(119) * x(119) + x(120) * x(120) + x(121) * x(121) + x(122) * x(122) + x(123) * x(123) + x(124) * x(124) + x(125) * x(125) + x(126) * x(126) + x(127) * x(127) + x(128) * x(128) + x(129) * x(129) + x(130) * x(130) + x(131) * x(131) + x(132) * x(132) + x(133) * x(133) + x(134) * x(134) + x(135) * x(135) + x(136) * x(136) + x(137) * x(137) + x(138) * x(138) + x(139) * x(139) + x(140) * x(140) + x(141) * x(141) + x(142) * x(142) + x(143) * x(143) + x(144) * x(144) + x(145) * x(145) + x(146) * x(146) + x(147) * x(147) + x(148) * x(148) + x(149) * x(149) + x(150) * x(150) + x(151) * x(151) + x(152) * x(152) + x(153) * x(153) + x(154) * x(154) + x(155) * x(155) + x(156) * x(156) + x(157) * x(157) + x(158) * x(158) + x(159) * x(159) + x(160) * x(160);
r_local(2) = x(1) * x(2) + x(2) * x(3) + x(3) * x(4) + x(4) * x(5) + x(5) * x(6) + x(6) * x(7) + x(7) * x(8) + x(8) * x(9) + x(9) * x(10) + x(10) * x(11) + x(11) * x(12) + x(12) * x(13) + x(13) * x(14) + x(14) * x(15) + x(15) * x(16) + x(16) * x(17) + x(17) * x(18) + x(18) * x(19) + x(19) * x(20) + x(20) * x(21) + x(21) * x(22) + x(22) * x(23) + x(23) * x(24) + x(24) * x(25) + x(25) * x(26) + x(26) * x(27) + x(27) * x(28) + x(28) * x(29) + x(29) * x(30) + x(30) * x(31) + x(31) * x(32) + x(32) * x(33) + x(33) * x(34) + x(34) * x(35) + x(35) * x(36) + x(36) * x(37) + x(37) * x(38) + x(38) * x(39) + x(39) * x(40) + x(40) * x(41) + x(41) * x(42) + x(42) * x(43) + x(43) * x(44) + x(44) * x(45) + x(45) * x(46) + x(46) * x(47) + x(47) * x(48) + x(48) * x(49) + x(49) * x(50) + x(50) * x(51) + x(51) * x(52) + x(52) * x(53) + x(53) * x(54) + x(54) * x(55) + x(55) * x(56) + x(56) * x(57) + x(57) * x(58) + x(58) * x(59) + x(59) * x(60) + x(60) * x(61) + x(61) * x(62) + x(62) * x(63) + x(63) * x(64) + x(64) * x(65) + x(65) * x(66) + x(66) * x(67) + x(67) * x(68) + x(68) * x(69) + x(69) * x(70) + x(70) * x(71) + x(71) * x(72) + x(72) * x(73) + x(73) * x(74) + x(74) * x(75) + x(75) * x(76) + x(76) * x(77) + x(77) * x(78) + x(78) * x(79) + x(79) * x(80) + x(80) * x(81) + x(81) * x(82) + x(82) * x(83) + x(83) * x(84) + x(84) * x(85) + x(85) * x(86) + x(86) * x(87) + x(87) * x(88) + x(88) * x(89) + x(89) * x(90) + x(90) * x(91) + x(91) * x(92) + x(92) * x(93) + x(93) * x(94) + x(94) * x(95) + x(95) * x(96) + x(96) * x(97) + x(97) * x(98) + x(98) * x(99) + x(99) * x(100) + x(100) * x(101) + x(101) * x(102) + x(102) * x(103) + x(103) * x(104) + x(104) * x(105) + x(105) * x(106) + x(106) * x(107) + x(107) * x(108) + x(108) * x(109) + x(109) * x(110) + x(110) * x(111) + x(111) * x(112) + x(112) * x(113) + x(113) * x(114) + x(114) * x(115) + x(115) * x(116) + x(116) * x(117) + x(117) * x(118) + x(118) * x(119) + x(119) * x(120) + x(120) * x(121) + x(121) * x(122) + x(122) * x(123) + x(123) * x(124) + x(124) * x(125) + x(125) * x(126) + x(126) * x(127) + x(127) * x(128) + x(128) * x(129) + x(129) * x(130) + x(130) * x(131) + x(131) * x(132) + x(132) * x(133) + x(133) * x(134) + x(134) * x(135) + x(135) * x(136) + x(136) * x(137) + x(137) * x(138) + x(138) * x(139) + x(139) * x(140) + x(140) * x(141) + x(141) * x(142) + x(142) * x(143) + x(143) * x(144) + x(144) * x(145) + x(145) * x(146) + x(146) * x(147) + x(147) * x(148) + x(148) * x(149) + x(149) * x(150) + x(150) * x(151) + x(151) * x(152) + x(152) * x(153) + x(153) * x(154) + x(154) * x(155) + x(155) * x(156) + x(156) * x(157) + x(157) * x(158) + x(158) * x(159) + x(159) * x(160);
r_local(3) = x(1) * x(3) + x(2) * x(4) + x(3) * x(5) + x(4) * x(6) + x(5) * x(7) + x(6) * x(8) + x(7) * x(9) + x(8) * x(10) + x(9) * x(11) + x(10) * x(12) + x(11) * x(13) + x(12) * x(14) + x(13) * x(15) + x(14) * x(16) + x(15) * x(17) + x(16) * x(18) + x(17) * x(19) + x(18) * x(20) + x(19) * x(21) + x(20) * x(22) + x(21) * x(23) + x(22) * x(24) + x(23) * x(25) + x(24) * x(26) + x(25) * x(27) + x(26) * x(28) + x(27) * x(29) + x(28) * x(30) + x(29) * x(31) + x(30) * x(32) + x(31) * x(33) + x(32) * x(34) + x(33) * x(35) + x(34) * x(36) + x(35) * x(37) + x(36) * x(38) + x(37) * x(39) + x(38) * x(40) + x(39) * x(41) + x(40) * x(42) + x(41) * x(43) + x(42) * x(44) + x(43) * x(45) + x(44) * x(46) + x(45) * x(47) + x(46) * x(48) + x(47) * x(49) + x(48) * x(50) + x(49) * x(51) + x(50) * x(52) + x(51) * x(53) + x(52) * x(54) + x(53) * x(55) + x(54) * x(56) + x(55) * x(57) + x(56) * x(58) + x(57) * x(59) + x(58) * x(60) + x(59) * x(61) + x(60) * x(62) + x(61) * x(63) + x(62) * x(64) + x(63) * x(65) + x(64) * x(66) + x(65) * x(67) + x(66) * x(68) + x(67) * x(69) + x(68) * x(70) + x(69) * x(71) + x(70) * x(72) + x(71) * x(73) + x(72) * x(74) + x(73) * x(75) + x(74) * x(76) + x(75) * x(77) + x(76) * x(78) + x(77) * x(79) + x(78) * x(80) + x(79) * x(81) + x(80) * x(82) + x(81) * x(83) + x(82) * x(84) + x(83) * x(85) + x(84) * x(86) + x(85) * x(87) + x(86) * x(88) + x(87) * x(89) + x(88) * x(90) + x(89) * x(91) + x(90) * x(92) + x(91) * x(93) + x(92) * x(94) + x(93) * x(95) + x(94) * x(96) + x(95) * x(97) + x(96) * x(98) + x(97) * x(99) + x(98) * x(100) + x(99) * x(101) + x(100) * x(102) + x(101) * x(103) + x(102) * x(104) + x(103) * x(105) + x(104) * x(106) + x(105) * x(107) + x(106) * x(108) + x(107) * x(109) + x(108) * x(110) + x(109) * x(111) + x(110) * x(112) + x(111) * x(113) + x(112) * x(114) + x(113) * x(115) + x(114) * x(116) + x(115) * x(117) + x(116) * x(118) + x(117) * x(119) + x(118) * x(120) + x(119) * x(121) + x(120) * x(122) + x(121) * x(123) + x(122) * x(124) + x(123) * x(125) + x(124) * x(126) + x(125) * x(127) + x(126) * x(128) + x(127) * x(129) + x(128) * x(130) + x(129) * x(131) + x(130) * x(132) + x(131) * x(133) + x(132) * x(134) + x(133) * x(135) + x(134) * x(136) + x(135) * x(137) + x(136) * x(138) + x(137) * x(139) + x(138) * x(140) + x(139) * x(141) + x(140) * x(142) + x(141) * x(143) + x(142) * x(144) + x(143) * x(145) + x(144) * x(146) + x(145) * x(147) + x(146) * x(148) + x(147) * x(149) + x(148) * x(150) + x(149) * x(151) + x(150) * x(152) + x(151) * x(153) + x(152) * x(154) + x(153) * x(155) + x(154) * x(156) + x(155) * x(157) + x(156) * x(158) + x(157) * x(159) + x(158) * x(160);
r_local(4) = x(1) * x(4) + x(2) * x(5) + x(3) * x(6) + x(4) * x(7) + x(5) * x(8) + x(6) * x(9) + x(7) * x(10) + x(8) * x(11) + x(9) * x(12) + x(10) * x(13) + x(11) * x(14) + x(12) * x(15) + x(13) * x(16) + x(14) * x(17) + x(15) * x(18) + x(16) * x(19) + x(17) * x(20) + x(18) * x(21) + x(19) * x(22) + x(20) * x(23) + x(21) * x(24) + x(22) * x(25) + x(23) * x(26) + x(24) * x(27) + x(25) * x(28) + x(26) * x(29) + x(27) * x(30) + x(28) * x(31) + x(29) * x(32) + x(30) * x(33) + x(31) * x(34) + x(32) * x(35) + x(33) * x(36) + x(34) * x(37) + x(35) * x(38) + x(36) * x(39) + x(37) * x(40) + x(38) * x(41) + x(39) * x(42) + x(40) * x(43) + x(41) * x(44) + x(42) * x(45) + x(43) * x(46) + x(44) * x(47) + x(45) * x(48) + x(46) * x(49) + x(47) * x(50) + x(48) * x(51) + x(49) * x(52) + x(50) * x(53) + x(51) * x(54) + x(52) * x(55) + x(53) * x(56) + x(54) * x(57) + x(55) * x(58) + x(56) * x(59) + x(57) * x(60) + x(58) * x(61) + x(59) * x(62) + x(60) * x(63) + x(61) * x(64) + x(62) * x(65) + x(63) * x(66) + x(64) * x(67) + x(65) * x(68) + x(66) * x(69) + x(67) * x(70) + x(68) * x(71) + x(69) * x(72) + x(70) * x(73) + x(71) * x(74) + x(72) * x(75) + x(73) * x(76) + x(74) * x(77) + x(75) * x(78) + x(76) * x(79) + x(77) * x(80) + x(78) * x(81) + x(79) * x(82) + x(80) * x(83) + x(81) * x(84) + x(82) * x(85) + x(83) * x(86) + x(84) * x(87) + x(85) * x(88) + x(86) * x(89) + x(87) * x(90) + x(88) * x(91) + x(89) * x(92) + x(90) * x(93) + x(91) * x(94) + x(92) * x(95) + x(93) * x(96) + x(94) * x(97) + x(95) * x(98) + x(96) * x(99) + x(97) * x(100) + x(98) * x(101) + x(99) * x(102) + x(100) * x(103) + x(101) * x(104) + x(102) * x(105) + x(103) * x(106) + x(104) * x(107) + x(105) * x(108) + x(106) * x(109) + x(107) * x(110) + x(108) * x(111) + x(109) * x(112) + x(110) * x(113) + x(111) * x(114) + x(112) * x(115) + x(113) * x(116) + x(114) * x(117) + x(115) * x(118) + x(116) * x(119) + x(117) * x(120) + x(118) * x(121) + x(119) * x(122) + x(120) * x(123) + x(121) * x(124) + x(122) * x(125) + x(123) * x(126) + x(124) * x(127) + x(125) * x(128) + x(126) * x(129) + x(127) * x(130) + x(128) * x(131) + x(129) * x(132) + x(130) * x(133) + x(131) * x(134) + x(132) * x(135) + x(133) * x(136) + x(134) * x(137) + x(135) * x(138) + x(136) * x(139) + x(137) * x(140) + x(138) * x(141) + x(139) * x(142) + x(140) * x(143) + x(141) * x(144) + x(142) * x(145) + x(143) * x(146) + x(144) * x(147) + x(145) * x(148) + x(146) * x(149) + x(147) * x(150) + x(148) * x(151) + x(149) * x(152) + x(150) * x(153) + x(151) * x(154) + x(152) * x(155) + x(153) * x(156) + x(154) * x(157) + x(155) * x(158) + x(156) * x(159) + x(157) * x(160);
r_local(5) = x(1) * x(5) + x(2) * x(6) + x(3) * x(7) + x(4) * x(8) + x(5) * x(9) + x(6) * x(10) + x(7) * x(11) + x(8) * x(12) + x(9) * x(13) + x(10) * x(14) + x(11) * x(15) + x(12) * x(16) + x(13) * x(17) + x(14) * x(18) + x(15) * x(19) + x(16) * x(20) + x(17) * x(21) + x(18) * x(22) + x(19) * x(23) + x(20) * x(24) + x(21) * x(25) + x(22) * x(26) + x(23) * x(27) + x(24) * x(28) + x(25) * x(29) + x(26) * x(30) + x(27) * x(31) + x(28) * x(32) + x(29) * x(33) + x(30) * x(34) + x(31) * x(35) + x(32) * x(36) + x(33) * x(37) + x(34) * x(38) + x(35) * x(39) + x(36) * x(40) + x(37) * x(41) + x(38) * x(42) + x(39) * x(43) + x(40) * x(44) + x(41) * x(45) + x(42) * x(46) + x(43) * x(47) + x(44) * x(48) + x(45) * x(49) + x(46) * x(50) + x(47) * x(51) + x(48) * x(52) + x(49) * x(53) + x(50) * x(54) + x(51) * x(55) + x(52) * x(56) + x(53) * x(57) + x(54) * x(58) + x(55) * x(59) + x(56) * x(60) + x(57) * x(61) + x(58) * x(62) + x(59) * x(63) + x(60) * x(64) + x(61) * x(65) + x(62) * x(66) + x(63) * x(67) + x(64) * x(68) + x(65) * x(69) + x(66) * x(70) + x(67) * x(71) + x(68) * x(72) + x(69) * x(73) + x(70) * x(74) + x(71) * x(75) + x(72) * x(76) + x(73) * x(77) + x(74) * x(78) + x(75) * x(79) + x(76) * x(80) + x(77) * x(81) + x(78) * x(82) + x(79) * x(83) + x(80) * x(84) + x(81) * x(85) + x(82) * x(86) + x(83) * x(87) + x(84) * x(88) + x(85) * x(89) + x(86) * x(90) + x(87) * x(91) + x(88) * x(92) + x(89) * x(93) + x(90) * x(94) + x(91) * x(95) + x(92) * x(96) + x(93) * x(97) + x(94) * x(98) + x(95) * x(99) + x(96) * x(100) + x(97) * x(101) + x(98) * x(102) + x(99) * x(103) + x(100) * x(104) + x(101) * x(105) + x(102) * x(106) + x(103) * x(107) + x(104) * x(108) + x(105) * x(109) + x(106) * x(110) + x(107) * x(111) + x(108) * x(112) + x(109) * x(113) + x(110) * x(114) + x(111) * x(115) + x(112) * x(116) + x(113) * x(117) + x(114) * x(118) + x(115) * x(119) + x(116) * x(120) + x(117) * x(121) + x(118) * x(122) + x(119) * x(123) + x(120) * x(124) + x(121) * x(125) + x(122) * x(126) + x(123) * x(127) + x(124) * x(128) + x(125) * x(129) + x(126) * x(130) + x(127) * x(131) + x(128) * x(132) + x(129) * x(133) + x(130) * x(134) + x(131) * x(135) + x(132) * x(136) + x(133) * x(137) + x(134) * x(138) + x(135) * x(139) + x(136) * x(140) + x(137) * x(141) + x(138) * x(142) + x(139) * x(143) + x(140) * x(144) + x(141) * x(145) + x(142) * x(146) + x(143) * x(147) + x(144) * x(148) + x(145) * x(149) + x(146) * x(150) + x(147) * x(151) + x(148) * x(152) + x(149) * x(153) + x(150) * x(154) + x(151) * x(155) + x(152) * x(156) + x(153) * x(157) + x(154) * x(158) + x(155) * x(159) + x(156) * x(160);
r_local(6) = x(1) * x(6) + x(2) * x(7) + x(3) * x(8) + x(4) * x(9) + x(5) * x(10) + x(6) * x(11) + x(7) * x(12) + x(8) * x(13) + x(9) * x(14) + x(10) * x(15) + x(11) * x(16) + x(12) * x(17) + x(13) * x(18) + x(14) * x(19) + x(15) * x(20) + x(16) * x(21) + x(17) * x(22) + x(18) * x(23) + x(19) * x(24) + x(20) * x(25) + x(21) * x(26) + x(22) * x(27) + x(23) * x(28) + x(24) * x(29) + x(25) * x(30) + x(26) * x(31) + x(27) * x(32) + x(28) * x(33) + x(29) * x(34) + x(30) * x(35) + x(31) * x(36) + x(32) * x(37) + x(33) * x(38) + x(34) * x(39) + x(35) * x(40) + x(36) * x(41) + x(37) * x(42) + x(38) * x(43) + x(39) * x(44) + x(40) * x(45) + x(41) * x(46) + x(42) * x(47) + x(43) * x(48) + x(44) * x(49) + x(45) * x(50) + x(46) * x(51) + x(47) * x(52) + x(48) * x(53) + x(49) * x(54) + x(50) * x(55) + x(51) * x(56) + x(52) * x(57) + x(53) * x(58) + x(54) * x(59) + x(55) * x(60) + x(56) * x(61) + x(57) * x(62) + x(58) * x(63) + x(59) * x(64) + x(60) * x(65) + x(61) * x(66) + x(62) * x(67) + x(63) * x(68) + x(64) * x(69) + x(65) * x(70) + x(66) * x(71) + x(67) * x(72) + x(68) * x(73) + x(69) * x(74) + x(70) * x(75) + x(71) * x(76) + x(72) * x(77) + x(73) * x(78) + x(74) * x(79) + x(75) * x(80) + x(76) * x(81) + x(77) * x(82) + x(78) * x(83) + x(79) * x(84) + x(80) * x(85) + x(81) * x(86) + x(82) * x(87) + x(83) * x(88) + x(84) * x(89) + x(85) * x(90) + x(86) * x(91) + x(87) * x(92) + x(88) * x(93) + x(89) * x(94) + x(90) * x(95) + x(91) * x(96) + x(92) * x(97) + x(93) * x(98) + x(94) * x(99) + x(95) * x(100) + x(96) * x(101) + x(97) * x(102) + x(98) * x(103) + x(99) * x(104) + x(100) * x(105) + x(101) * x(106) + x(102) * x(107) + x(103) * x(108) + x(104) * x(109) + x(105) * x(110) + x(106) * x(111) + x(107) * x(112) + x(108) * x(113) + x(109) * x(114) + x(110) * x(115) + x(111) * x(116) + x(112) * x(117) + x(113) * x(118) + x(114) * x(119) + x(115) * x(120) + x(116) * x(121) + x(117) * x(122) + x(118) * x(123) + x(119) * x(124) + x(120) * x(125) + x(121) * x(126) + x(122) * x(127) + x(123) * x(128) + x(124) * x(129) + x(125) * x(130) + x(126) * x(131) + x(127) * x(132) + x(128) * x(133) + x(129) * x(134) + x(130) * x(135) + x(131) * x(136) + x(132) * x(137) + x(133) * x(138) + x(134) * x(139) + x(135) * x(140) + x(136) * x(141) + x(137) * x(142) + x(138) * x(143) + x(139) * x(144) + x(140) * x(145) + x(141) * x(146) + x(142) * x(147) + x(143) * x(148) + x(144) * x(149) + x(145) * x(150) + x(146) * x(151) + x(147) * x(152) + x(148) * x(153) + x(149) * x(154) + x(150) * x(155) + x(151) * x(156) + x(152) * x(157) + x(153) * x(158) + x(154) * x(159) + x(155) * x(160);
r_local(7) = x(1) * x(7) + x(2) * x(8) + x(3) * x(9) + x(4) * x(10) + x(5) * x(11) + x(6) * x(12) + x(7) * x(13) + x(8) * x(14) + x(9) * x(15) + x(10) * x(16) + x(11) * x(17) + x(12) * x(18) + x(13) * x(19) + x(14) * x(20) + x(15) * x(21) + x(16) * x(22) + x(17) * x(23) + x(18) * x(24) + x(19) * x(25) + x(20) * x(26) + x(21) * x(27) + x(22) * x(28) + x(23) * x(29) + x(24) * x(30) + x(25) * x(31) + x(26) * x(32) + x(27) * x(33) + x(28) * x(34) + x(29) * x(35) + x(30) * x(36) + x(31) * x(37) + x(32) * x(38) + x(33) * x(39) + x(34) * x(40) + x(35) * x(41) + x(36) * x(42) + x(37) * x(43) + x(38) * x(44) + x(39) * x(45) + x(40) * x(46) + x(41) * x(47) + x(42) * x(48) + x(43) * x(49) + x(44) * x(50) + x(45) * x(51) + x(46) * x(52) + x(47) * x(53) + x(48) * x(54) + x(49) * x(55) + x(50) * x(56) + x(51) * x(57) + x(52) * x(58) + x(53) * x(59) + x(54) * x(60) + x(55) * x(61) + x(56) * x(62) + x(57) * x(63) + x(58) * x(64) + x(59) * x(65) + x(60) * x(66) + x(61) * x(67) + x(62) * x(68) + x(63) * x(69) + x(64) * x(70) + x(65) * x(71) + x(66) * x(72) + x(67) * x(73) + x(68) * x(74) + x(69) * x(75) + x(70) * x(76) + x(71) * x(77) + x(72) * x(78) + x(73) * x(79) + x(74) * x(80) + x(75) * x(81) + x(76) * x(82) + x(77) * x(83) + x(78) * x(84) + x(79) * x(85) + x(80) * x(86) + x(81) * x(87) + x(82) * x(88) + x(83) * x(89) + x(84) * x(90) + x(85) * x(91) + x(86) * x(92) + x(87) * x(93) + x(88) * x(94) + x(89) * x(95) + x(90) * x(96) + x(91) * x(97) + x(92) * x(98) + x(93) * x(99) + x(94) * x(100) + x(95) * x(101) + x(96) * x(102) + x(97) * x(103) + x(98) * x(104) + x(99) * x(105) + x(100) * x(106) + x(101) * x(107) + x(102) * x(108) + x(103) * x(109) + x(104) * x(110) + x(105) * x(111) + x(106) * x(112) + x(107) * x(113) + x(108) * x(114) + x(109) * x(115) + x(110) * x(116) + x(111) * x(117) + x(112) * x(118) + x(113) * x(119) + x(114) * x(120) + x(115) * x(121) + x(116) * x(122) + x(117) * x(123) + x(118) * x(124) + x(119) * x(125) + x(120) * x(126) + x(121) * x(127) + x(122) * x(128) + x(123) * x(129) + x(124) * x(130) + x(125) * x(131) + x(126) * x(132) + x(127) * x(133) + x(128) * x(134) + x(129) * x(135) + x(130) * x(136) + x(131) * x(137) + x(132) * x(138) + x(133) * x(139) + x(134) * x(140) + x(135) * x(141) + x(136) * x(142) + x(137) * x(143) + x(138) * x(144) + x(139) * x(145) + x(140) * x(146) + x(141) * x(147) + x(142) * x(148) + x(143) * x(149) + x(144) * x(150) + x(145) * x(151) + x(146) * x(152) + x(147) * x(153) + x(148) * x(154) + x(149) * x(155) + x(150) * x(156) + x(151) * x(157) + x(152) * x(158) + x(153) * x(159) + x(154) * x(160);
r_local(8) = x(1) * x(8) + x(2) * x(9) + x(3) * x(10) + x(4) * x(11) + x(5) * x(12) + x(6) * x(13) + x(7) * x(14) + x(8) * x(15) + x(9) * x(16) + x(10) * x(17) + x(11) * x(18) + x(12) * x(19) + x(13) * x(20) + x(14) * x(21) + x(15) * x(22) + x(16) * x(23) + x(17) * x(24) + x(18) * x(25) + x(19) * x(26) + x(20) * x(27) + x(21) * x(28) + x(22) * x(29) + x(23) * x(30) + x(24) * x(31) + x(25) * x(32) + x(26) * x(33) + x(27) * x(34) + x(28) * x(35) + x(29) * x(36) + x(30) * x(37) + x(31) * x(38) + x(32) * x(39) + x(33) * x(40) + x(34) * x(41) + x(35) * x(42) + x(36) * x(43) + x(37) * x(44) + x(38) * x(45) + x(39) * x(46) + x(40) * x(47) + x(41) * x(48) + x(42) * x(49) + x(43) * x(50) + x(44) * x(51) + x(45) * x(52) + x(46) * x(53) + x(47) * x(54) + x(48) * x(55) + x(49) * x(56) + x(50) * x(57) + x(51) * x(58) + x(52) * x(59) + x(53) * x(60) + x(54) * x(61) + x(55) * x(62) + x(56) * x(63) + x(57) * x(64) + x(58) * x(65) + x(59) * x(66) + x(60) * x(67) + x(61) * x(68) + x(62) * x(69) + x(63) * x(70) + x(64) * x(71) + x(65) * x(72) + x(66) * x(73) + x(67) * x(74) + x(68) * x(75) + x(69) * x(76) + x(70) * x(77) + x(71) * x(78) + x(72) * x(79) + x(73) * x(80) + x(74) * x(81) + x(75) * x(82) + x(76) * x(83) + x(77) * x(84) + x(78) * x(85) + x(79) * x(86) + x(80) * x(87) + x(81) * x(88) + x(82) * x(89) + x(83) * x(90) + x(84) * x(91) + x(85) * x(92) + x(86) * x(93) + x(87) * x(94) + x(88) * x(95) + x(89) * x(96) + x(90) * x(97) + x(91) * x(98) + x(92) * x(99) + x(93) * x(100) + x(94) * x(101) + x(95) * x(102) + x(96) * x(103) + x(97) * x(104) + x(98) * x(105) + x(99) * x(106) + x(100) * x(107) + x(101) * x(108) + x(102) * x(109) + x(103) * x(110) + x(104) * x(111) + x(105) * x(112) + x(106) * x(113) + x(107) * x(114) + x(108) * x(115) + x(109) * x(116) + x(110) * x(117) + x(111) * x(118) + x(112) * x(119) + x(113) * x(120) + x(114) * x(121) + x(115) * x(122) + x(116) * x(123) + x(117) * x(124) + x(118) * x(125) + x(119) * x(126) + x(120) * x(127) + x(121) * x(128) + x(122) * x(129) + x(123) * x(130) + x(124) * x(131) + x(125) * x(132) + x(126) * x(133) + x(127) * x(134) + x(128) * x(135) + x(129) * x(136) + x(130) * x(137) + x(131) * x(138) + x(132) * x(139) + x(133) * x(140) + x(134) * x(141) + x(135) * x(142) + x(136) * x(143) + x(137) * x(144) + x(138) * x(145) + x(139) * x(146) + x(140) * x(147) + x(141) * x(148) + x(142) * x(149) + x(143) * x(150) + x(144) * x(151) + x(145) * x(152) + x(146) * x(153) + x(147) * x(154) + x(148) * x(155) + x(149) * x(156) + x(150) * x(157) + x(151) * x(158) + x(152) * x(159) + x(153) * x(160);
r_local(9) = x(1) * x(9) + x(2) * x(10) + x(3) * x(11) + x(4) * x(12) + x(5) * x(13) + x(6) * x(14) + x(7) * x(15) + x(8) * x(16) + x(9) * x(17) + x(10) * x(18) + x(11) * x(19) + x(12) * x(20) + x(13) * x(21) + x(14) * x(22) + x(15) * x(23) + x(16) * x(24) + x(17) * x(25) + x(18) * x(26) + x(19) * x(27) + x(20) * x(28) + x(21) * x(29) + x(22) * x(30) + x(23) * x(31) + x(24) * x(32) + x(25) * x(33) + x(26) * x(34) + x(27) * x(35) + x(28) * x(36) + x(29) * x(37) + x(30) * x(38) + x(31) * x(39) + x(32) * x(40) + x(33) * x(41) + x(34) * x(42) + x(35) * x(43) + x(36) * x(44) + x(37) * x(45) + x(38) * x(46) + x(39) * x(47) + x(40) * x(48) + x(41) * x(49) + x(42) * x(50) + x(43) * x(51) + x(44) * x(52) + x(45) * x(53) + x(46) * x(54) + x(47) * x(55) + x(48) * x(56) + x(49) * x(57) + x(50) * x(58) + x(51) * x(59) + x(52) * x(60) + x(53) * x(61) + x(54) * x(62) + x(55) * x(63) + x(56) * x(64) + x(57) * x(65) + x(58) * x(66) + x(59) * x(67) + x(60) * x(68) + x(61) * x(69) + x(62) * x(70) + x(63) * x(71) + x(64) * x(72) + x(65) * x(73) + x(66) * x(74) + x(67) * x(75) + x(68) * x(76) + x(69) * x(77) + x(70) * x(78) + x(71) * x(79) + x(72) * x(80) + x(73) * x(81) + x(74) * x(82) + x(75) * x(83) + x(76) * x(84) + x(77) * x(85) + x(78) * x(86) + x(79) * x(87) + x(80) * x(88) + x(81) * x(89) + x(82) * x(90) + x(83) * x(91) + x(84) * x(92) + x(85) * x(93) + x(86) * x(94) + x(87) * x(95) + x(88) * x(96) + x(89) * x(97) + x(90) * x(98) + x(91) * x(99) + x(92) * x(100) + x(93) * x(101) + x(94) * x(102) + x(95) * x(103) + x(96) * x(104) + x(97) * x(105) + x(98) * x(106) + x(99) * x(107) + x(100) * x(108) + x(101) * x(109) + x(102) * x(110) + x(103) * x(111) + x(104) * x(112) + x(105) * x(113) + x(106) * x(114) + x(107) * x(115) + x(108) * x(116) + x(109) * x(117) + x(110) * x(118) + x(111) * x(119) + x(112) * x(120) + x(113) * x(121) + x(114) * x(122) + x(115) * x(123) + x(116) * x(124) + x(117) * x(125) + x(118) * x(126) + x(119) * x(127) + x(120) * x(128) + x(121) * x(129) + x(122) * x(130) + x(123) * x(131) + x(124) * x(132) + x(125) * x(133) + x(126) * x(134) + x(127) * x(135) + x(128) * x(136) + x(129) * x(137) + x(130) * x(138) + x(131) * x(139) + x(132) * x(140) + x(133) * x(141) + x(134) * x(142) + x(135) * x(143) + x(136) * x(144) + x(137) * x(145) + x(138) * x(146) + x(139) * x(147) + x(140) * x(148) + x(141) * x(149) + x(142) * x(150) + x(143) * x(151) + x(144) * x(152) + x(145) * x(153) + x(146) * x(154) + x(147) * x(155) + x(148) * x(156) + x(149) * x(157) + x(150) * x(158) + x(151) * x(159) + x(152) * x(160);
r_local(10) = x(1) * x(10) + x(2) * x(11) + x(3) * x(12) + x(4) * x(13) + x(5) * x(14) + x(6) * x(15) + x(7) * x(16) + x(8) * x(17) + x(9) * x(18) + x(10) * x(19) + x(11) * x(20) + x(12) * x(21) + x(13) * x(22) + x(14) * x(23) + x(15) * x(24) + x(16) * x(25) + x(17) * x(26) + x(18) * x(27) + x(19) * x(28) + x(20) * x(29) + x(21) * x(30) + x(22) * x(31) + x(23) * x(32) + x(24) * x(33) + x(25) * x(34) + x(26) * x(35) + x(27) * x(36) + x(28) * x(37) + x(29) * x(38) + x(30) * x(39) + x(31) * x(40) + x(32) * x(41) + x(33) * x(42) + x(34) * x(43) + x(35) * x(44) + x(36) * x(45) + x(37) * x(46) + x(38) * x(47) + x(39) * x(48) + x(40) * x(49) + x(41) * x(50) + x(42) * x(51) + x(43) * x(52) + x(44) * x(53) + x(45) * x(54) + x(46) * x(55) + x(47) * x(56) + x(48) * x(57) + x(49) * x(58) + x(50) * x(59) + x(51) * x(60) + x(52) * x(61) + x(53) * x(62) + x(54) * x(63) + x(55) * x(64) + x(56) * x(65) + x(57) * x(66) + x(58) * x(67) + x(59) * x(68) + x(60) * x(69) + x(61) * x(70) + x(62) * x(71) + x(63) * x(72) + x(64) * x(73) + x(65) * x(74) + x(66) * x(75) + x(67) * x(76) + x(68) * x(77) + x(69) * x(78) + x(70) * x(79) + x(71) * x(80) + x(72) * x(81) + x(73) * x(82) + x(74) * x(83) + x(75) * x(84) + x(76) * x(85) + x(77) * x(86) + x(78) * x(87) + x(79) * x(88) + x(80) * x(89) + x(81) * x(90) + x(82) * x(91) + x(83) * x(92) + x(84) * x(93) + x(85) * x(94) + x(86) * x(95) + x(87) * x(96) + x(88) * x(97) + x(89) * x(98) + x(90) * x(99) + x(91) * x(100) + x(92) * x(101) + x(93) * x(102) + x(94) * x(103) + x(95) * x(104) + x(96) * x(105) + x(97) * x(106) + x(98) * x(107) + x(99) * x(108) + x(100) * x(109) + x(101) * x(110) + x(102) * x(111) + x(103) * x(112) + x(104) * x(113) + x(105) * x(114) + x(106) * x(115) + x(107) * x(116) + x(108) * x(117) + x(109) * x(118) + x(110) * x(119) + x(111) * x(120) + x(112) * x(121) + x(113) * x(122) + x(114) * x(123) + x(115) * x(124) + x(116) * x(125) + x(117) * x(126) + x(118) * x(127) + x(119) * x(128) + x(120) * x(129) + x(121) * x(130) + x(122) * x(131) + x(123) * x(132) + x(124) * x(133) + x(125) * x(134) + x(126) * x(135) + x(127) * x(136) + x(128) * x(137) + x(129) * x(138) + x(130) * x(139) + x(131) * x(140) + x(132) * x(141) + x(133) * x(142) + x(134) * x(143) + x(135) * x(144) + x(136) * x(145) + x(137) * x(146) + x(138) * x(147) + x(139) * x(148) + x(140) * x(149) + x(141) * x(150) + x(142) * x(151) + x(143) * x(152) + x(144) * x(153) + x(145) * x(154) + x(146) * x(155) + x(147) * x(156) + x(148) * x(157) + x(149) * x(158) + x(150) * x(159) + x(151) * x(160);
r_local(11) = x(1) * x(11) + x(2) * x(12) + x(3) * x(13) + x(4) * x(14) + x(5) * x(15) + x(6) * x(16) + x(7) * x(17) + x(8) * x(18) + x(9) * x(19) + x(10) * x(20) + x(11) * x(21) + x(12) * x(22) + x(13) * x(23) + x(14) * x(24) + x(15) * x(25) + x(16) * x(26) + x(17) * x(27) + x(18) * x(28) + x(19) * x(29) + x(20) * x(30) + x(21) * x(31) + x(22) * x(32) + x(23) * x(33) + x(24) * x(34) + x(25) * x(35) + x(26) * x(36) + x(27) * x(37) + x(28) * x(38) + x(29) * x(39) + x(30) * x(40) + x(31) * x(41) + x(32) * x(42) + x(33) * x(43) + x(34) * x(44) + x(35) * x(45) + x(36) * x(46) + x(37) * x(47) + x(38) * x(48) + x(39) * x(49) + x(40) * x(50) + x(41) * x(51) + x(42) * x(52) + x(43) * x(53) + x(44) * x(54) + x(45) * x(55) + x(46) * x(56) + x(47) * x(57) + x(48) * x(58) + x(49) * x(59) + x(50) * x(60) + x(51) * x(61) + x(52) * x(62) + x(53) * x(63) + x(54) * x(64) + x(55) * x(65) + x(56) * x(66) + x(57) * x(67) + x(58) * x(68) + x(59) * x(69) + x(60) * x(70) + x(61) * x(71) + x(62) * x(72) + x(63) * x(73) + x(64) * x(74) + x(65) * x(75) + x(66) * x(76) + x(67) * x(77) + x(68) * x(78) + x(69) * x(79) + x(70) * x(80) + x(71) * x(81) + x(72) * x(82) + x(73) * x(83) + x(74) * x(84) + x(75) * x(85) + x(76) * x(86) + x(77) * x(87) + x(78) * x(88) + x(79) * x(89) + x(80) * x(90) + x(81) * x(91) + x(82) * x(92) + x(83) * x(93) + x(84) * x(94) + x(85) * x(95) + x(86) * x(96) + x(87) * x(97) + x(88) * x(98) + x(89) * x(99) + x(90) * x(100) + x(91) * x(101) + x(92) * x(102) + x(93) * x(103) + x(94) * x(104) + x(95) * x(105) + x(96) * x(106) + x(97) * x(107) + x(98) * x(108) + x(99) * x(109) + x(100) * x(110) + x(101) * x(111) + x(102) * x(112) + x(103) * x(113) + x(104) * x(114) + x(105) * x(115) + x(106) * x(116) + x(107) * x(117) + x(108) * x(118) + x(109) * x(119) + x(110) * x(120) + x(111) * x(121) + x(112) * x(122) + x(113) * x(123) + x(114) * x(124) + x(115) * x(125) + x(116) * x(126) + x(117) * x(127) + x(118) * x(128) + x(119) * x(129) + x(120) * x(130) + x(121) * x(131) + x(122) * x(132) + x(123) * x(133) + x(124) * x(134) + x(125) * x(135) + x(126) * x(136) + x(127) * x(137) + x(128) * x(138) + x(129) * x(139) + x(130) * x(140) + x(131) * x(141) + x(132) * x(142) + x(133) * x(143) + x(134) * x(144) + x(135) * x(145) + x(136) * x(146) + x(137) * x(147) + x(138) * x(148) + x(139) * x(149) + x(140) * x(150) + x(141) * x(151) + x(142) * x(152) + x(143) * x(153) + x(144) * x(154) + x(145) * x(155) + x(146) * x(156) + x(147) * x(157) + x(148) * x(158) + x(149) * x(159) + x(150) * x(160);

% Normalisasi nilainya
r = transpose(r_local*0.00625);

end

	-- INSERCION DE DATOS EN DETALLE DE VENTA
select *from detalle__venta
select *from producto
select *from venta
select *from forma__pago__venta
select *from usuario -- DEBERÁ SER SIEMPRE EL 2,3,6 Y 7
delete from detalle__venta where idDetalleVenta=497 
DBCC checkident ('dbo.detalle__venta',reseed,0)

insert into detalle__venta values(1, 1, 3750, 3750, 1, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=1 

insert into detalle__venta values(2, 1, 500, 500, 2, 2, 3 )
update producto set cantidad=(cantidad-1) where idProducto=2 

insert into detalle__venta values(3, 3, 7500, 22500, 3, 2, 7 )
update producto set cantidad=(cantidad-3) where idProducto=3 

insert into detalle__venta values(4, 5, 312.50, 1562.50, 4, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=4 

insert into detalle__venta values(5, 5, 187.50, 937.50, 5, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=5 

insert into detalle__venta values(6, 5, 5000, 25000, 6, 2, 6 )
update producto set cantidad=(cantidad-5) where idProducto=6 

insert into detalle__venta values(7, 4, 7500, 30000, 7, 2, 6 )
update producto set cantidad=(cantidad-4) where idProducto=7 

insert into detalle__venta values(8, 5, 156.25, 781.25, 8, 2, 2 )
update producto set cantidad=(cantidad-5) where idProducto=8 

insert into detalle__venta values(9, 7, 312.50, 2187.50, 9, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=9 
--		
insert into detalle__venta values(10, 4, 100, 400, 10, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=10 

insert into detalle__venta values(11, 5, 28.75, 143.75, 11, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=11 

insert into detalle__venta values(12, 5, 62.50, 312.50, 12, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=12 

insert into detalle__venta values(13, 2, 31.25, 62.50, 13, 2, 7 )
update producto set cantidad=(cantidad-2) where idProducto=13 

insert into detalle__venta values(14, 2, 25, 50, 14, 3, 3 )
update producto set cantidad=(cantidad-2) where idProducto=14 

insert into detalle__venta values(15, 2, 62.50, 125, 15, 3, 3 )
update producto set cantidad=(cantidad-2) where idProducto=15 

insert into detalle__venta values(16, 3, 156.25, 468.75, 16, 2, 7 )
update producto set cantidad=(cantidad-3) where idProducto=16 

insert into detalle__venta values(17, 2, 152.50, 305, 17, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=17 

insert into detalle__venta values(18, 2, 150, 300, 18, 1, 3 )
update producto set cantidad=(cantidad-2) where idProducto=18 

insert into detalle__venta values(19, 2, 250, 500, 19, 1, 6 )
update producto set cantidad=(cantidad-2) where idProducto=19 

insert into detalle__venta values(20, 5, 275, 1375, 20, 1, 7 )
update producto set cantidad=(cantidad-5) where idProducto=20 

insert into detalle__venta values(21, 3, 312.50, 937.50, 21, 2, 3 )
update producto set cantidad=(cantidad-3) where idProducto=21 

insert into detalle__venta values(22, 2, 350, 700, 22, 2, 2 )
update producto set cantidad=(cantidad-2) where idProducto=22 

insert into detalle__venta values(23, 5, 1000, 5000, 23, 2, 2 )
update producto set cantidad=(cantidad-5) where idProducto=23 

insert into detalle__venta values(24, 4, 1050, 4200, 24, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=24 

insert into detalle__venta values(25, 10, 1275, 12750, 25, 2, 7 )
update producto set cantidad=(cantidad-10) where idProducto=25 

insert into detalle__venta values(26, 9, 1562.50, 14062.50, 26, 2, 3 )
update producto set cantidad=(cantidad-9) where idProducto=26 

insert into detalle__venta values(27, 8, 1437.50, 11500, 27, 3, 7 )
update producto set cantidad=(cantidad-8) where idProducto=27 

insert into detalle__venta values(28, 7, 1875, 13125, 28, 3, 7 )
update producto set cantidad=(cantidad-7) where idProducto=28 

insert into detalle__venta values(29, 5, 2000, 10000, 29, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=29 

insert into detalle__venta values(30, 6, 2500, 15000, 30, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=30 

insert into detalle__venta values(31, 5, 3125, 15625, 31, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=31 

insert into detalle__venta values(32, 7, 3500, 24500, 32, 2, 3 )
update producto set cantidad=(cantidad-7) where idProducto=32 

insert into detalle__venta values(33, 8, 312.50, 2500, 33, 2, 2 )
update producto set cantidad=(cantidad-8) where idProducto=33 

insert into detalle__venta values(34, 2, 12.50, 25, 34, 1, 6 )
update producto set cantidad=(cantidad+15) where idProducto=34 

insert into detalle__venta values(35, 1, 28.75, 28.75, 35, 1, 6 )
update producto set cantidad=(cantidad-1) where idProducto=35 

insert into detalle__venta values(36, 1, 15, 15, 36, 1, 7 )
update producto set cantidad=(cantidad-1) where idProducto=36 

insert into detalle__venta values(37, 1, 6.25, 6.25, 37, 2, 2 )
update producto set cantidad=(cantidad-1) where idProducto=37 

insert into detalle__venta values(38, 2, 56.25, 112.50, 38, 2, 2 )
update producto set cantidad=(cantidad-2) where idProducto=38 

insert into detalle__venta values(39, 12, 1.25, 15, 39, 2, 2 )
update producto set cantidad=(cantidad-2) where idProducto=39 

insert into detalle__venta values(40, 3, 56.25, 168.75, 40, 2, 7 )
update producto set cantidad=(cantidad-3) where idProducto=40 

insert into detalle__venta values(41, 6, 25, 150, 41, 3, 2 )
update producto set cantidad=(cantidad-6) where idProducto=41 

insert into detalle__venta values(42, 5, 25, 125, 42, 3, 3 )
update producto set cantidad=(cantidad-5) where idProducto=42 

insert into detalle__venta values(43, 5, 93.75, 468.75, 43, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=43 

insert into detalle__venta values(44, 1, 93.75, 93.75, 44, 3, 2 )
update producto set cantidad=(cantidad-1) where idProducto=44 

insert into detalle__venta values(45, 5, 37.50, 187.50, 45, 3, 2 )
update producto set cantidad=(cantidad+15) where idProducto=45 

insert into detalle__venta values(46, 4, 43.75, 175, 46, 1, 3 )
update producto set cantidad=(cantidad-4) where idProducto=46 

insert into detalle__venta values(47, 5, 15, 75, 47, 1, 3 )
update producto set cantidad=(cantidad-5) where idProducto=47 

insert into detalle__venta values(48, 3, 42.50, 127.50, 48, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=48 

insert into detalle__venta values(49, 6, 153.75, 922.50, 49, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=49 
			
insert into detalle__venta values(50, 5, 52.50, 262.50, 50, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=50 

insert into detalle__venta values(51, 2, 56.25, 112.50, 51, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=51 

insert into detalle__venta values(52, 5, 593.75, 2968.75, 52, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=52 

insert into detalle__venta values(53, 1, 30, 30, 53, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=53 

insert into detalle__venta values(54, 5, 31.25, 156.25, 54, 3, 6 )
update producto set cantidad=(cantidad-5) where idProducto=54 

insert into detalle__venta values(55, 1, 41.25, 41.25, 55, 1, 7 )
update producto set cantidad=(cantidad-1) where idProducto=55 

insert into detalle__venta values(56, 5, 46.25, 231.25, 56, 1, 6 )
update producto set cantidad=(cantidad+15) where idProducto=56 

insert into detalle__venta values(57, 2, 50, 100, 57, 3, 2 )
update producto set cantidad=(cantidad-2) where idProducto=57 

insert into detalle__venta values(58, 1, 51.25, 51.25, 58, 3, 2 )
update producto set cantidad=(cantidad-1) where idProducto=58 

insert into detalle__venta values(59, 5, 56.25, 281.25, 59, 3, 2 )
update producto set cantidad=(cantidad-5) where idProducto=59 

insert into detalle__venta values(60, 5, 80, 400, 60, 3, 2 )
update producto set cantidad=(cantidad-5) where idProducto=60 

insert into detalle__venta values(61, 3, 68.75, 206.25, 61, 3, 2 )
update producto set cantidad=(cantidad-3) where idProducto=61 

insert into detalle__venta values(62, 4, 40, 160, 62, 1, 6 )
update producto set cantidad=(cantidad-4) where idProducto=62 

insert into detalle__venta values(63, 3, 21.25, 63.75, 63, 3, 6 )
update producto set cantidad=(cantidad-3) where idProducto=63 

insert into detalle__venta values(64, 4, 33.75, 135, 64, 3, 6 )
update producto set cantidad=(cantidad-4) where idProducto=64 

insert into detalle__venta values(65, 5, 137.50, 687.50, 65, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=65 

insert into detalle__venta values(66, 1, 97.50, 97.50, 66, 3, 6 )
update producto set cantidad=(cantidad-1) where idProducto=66 

insert into detalle__venta values(67, 1, 15, 15, 67, 2, 6 )
update producto set cantidad=(cantidad-1) where idProducto=67 

insert into detalle__venta values(68, 2, 20, 40, 68, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=68 

insert into detalle__venta values(69, 2, 32.50, 65, 69, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=69 

insert into detalle__venta values(70, 4, 41.25, 165, 70, 2, 7 )
update producto set cantidad=(cantidad-4) where idProducto=70 

insert into detalle__venta values(71, 5, 25, 125, 71, 2, 6 )
update producto set cantidad=(cantidad-5) where idProducto=71 

insert into detalle__venta values(72, 5, 25, 125, 72, 1, 6 )
update producto set cantidad=(cantidad-5) where idProducto=72 

insert into detalle__venta values(73, 3, 75, 225, 73, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=73 

insert into detalle__venta values(74, 5, 25, 125, 74, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=74 

insert into detalle__venta values(75, 1, 156.25, 156.25, 75, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=75 

insert into detalle__venta values(76, 6, 373.75, 2242.50, 76, 1, 7 )
update producto set cantidad=(cantidad-6) where idProducto=76 

insert into detalle__venta values(77, 5, 43.75, 218.75, 77, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=77 

insert into detalle__venta values(78, 1, 56.25, 56.25, 78, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=78 

insert into detalle__venta values(79, 2, 431.25, 862.50, 79, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=79 

insert into detalle__venta values(80, 6, 506.25, 3037.50, 80, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=80 

insert into detalle__venta values(81, 6, 518.75, 3112.50, 81, 3, 7 )
update producto set cantidad=(cantidad-6) where idProducto=81 

insert into detalle__venta values(82, 6, 212.50, 1275, 82, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=82 

insert into detalle__venta values(83, 6, 243.75, 1462.50, 83, 1, 3 )
update producto set cantidad=(cantidad-6) where idProducto=83 

insert into detalle__venta values(84, 7, 218.75, 1531.25, 84, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=84 

insert into detalle__venta values(85, 5, 306.25, 1531.25, 85, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=85 

insert into detalle__venta values(86, 6, 281.25, 1687.50, 86, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=86 

insert into detalle__venta values(87, 5, 343.75, 1718.75, 87, 3, 3 )
update producto set cantidad=(cantidad-5) where idProducto=87 

insert into detalle__venta values(88, 5, 350, 1750, 88, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=88 

insert into detalle__venta values(89, 5, 300, 1500, 89, 2, 2 )
update producto set cantidad=(cantidad-5) where idProducto=89 

insert into detalle__venta values(90, 4, 293.75, 1175, 90, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=90 

insert into detalle__venta values(91, 4, 431.25, 1725, 91, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=91 

insert into detalle__venta values(92, 5, 312.50, 1562.50, 92, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=92 

insert into detalle__venta values(93, 5, 1123.73, 5618.75, 93, 2, 6 )
update producto set cantidad=(cantidad-5) where idProducto=93 

insert into detalle__venta values(94, 6, 375, 2250, 94, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=94 

insert into detalle__venta values(95, 5, 150, 750, 95, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=95 

insert into detalle__venta values(96, 7, 312.50, 2187.50, 96, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=96 

insert into detalle__venta values(97, 4, 643.75, 2175, 97, 2, 3 )
update producto set cantidad=(cantidad-4) where idProducto=97 

insert into detalle__venta values(98, 5, 93.75, 468.75, 98, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=98 

insert into detalle__venta values(99, 5, 431.25, 2156.25, 99, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=99 

insert into detalle__venta values(100, 5, 1125, 5625, 100, 2, 6 )
update producto set cantidad=(cantidad-5) where idProducto=100 

----------		DATOS 101 EN ADELANTE		---------------------
insert into detalle__venta values(101, 3, 312.50, 937.50, 101, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=101 

insert into detalle__venta values(102, 5, 562.50, 2812.50, 102, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=102 

insert into detalle__venta values(103, 5, 312.50, 1562.50, 103, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=103 

insert into detalle__venta values(104, 3, 281.25, 843.75, 104, 3, 7 )
update producto set cantidad=(cantidad-3) where idProducto=104 

insert into detalle__venta values(105, 5, 156.25, 781.25, 105, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=105 

insert into detalle__venta values(106, 5, 975, 4875, 106, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=106 

insert into detalle__venta values(107, 2, 1162.50, 2325, 107, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=107 

insert into detalle__venta values(108, 5, 1875, 9375, 108, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=108 

insert into detalle__venta values(109, 1, 1500, 1500, 109, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=109 

insert into detalle__venta values(110, 5, 943.75, 4718.75, 110, 2, 6 )
update producto set cantidad=(cantidad-5) where idProducto=110 

insert into detalle__venta values(111, 5, 1112.50, 5562.50, 111, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=111 

insert into detalle__venta values(112, 5, 1500, 7500, 112, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=112 

insert into detalle__venta values(113, 1, 625, 625, 113, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=113 

insert into detalle__venta values(114, 1, 525, 525, 114, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=114 

insert into detalle__venta values(115, 5, 750, 3750, 115, 1, 3 )
update producto set cantidad=(cantidad-5) where idProducto=115 

insert into detalle__venta values(116, 5, 500, 2500, 116, 1, 6 )
update producto set cantidad=(cantidad-5) where idProducto=116 

insert into detalle__venta values(117, 5, 537.50, 2687.50, 117, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=117

insert into detalle__venta values(118, 5, 512.50, 2562.50, 118, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=118 

insert into detalle__venta values(119, 1, 637.50, 637.50, 119, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=119 

insert into detalle__venta values(120, 5, 662.50, 3312.50, 120, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=120 

insert into detalle__venta values(121, 2, 750, 1500, 121, 3, 3 )
update producto set cantidad=(cantidad-2) where idProducto=121 

insert into detalle__venta values(122, 5, 625, 3125, 122, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=122 

insert into detalle__venta values(123, 2, 662.50, 1325, 123, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=123 

insert into detalle__venta values(124, 3, 625, 1875, 124, 3, 3 )
update producto set cantidad=(cantidad-3) where idProducto=124

insert into detalle__venta values(125, 5, 637.50, 3187.50, 125, 2, 3 )
update producto set cantidad=(cantidad-5) where idProducto=125 

insert into detalle__venta values(126, 1, 550, 550, 126, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=126 

insert into detalle__venta values(127, 5, 625, 3125, 127, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=127 

insert into detalle__venta values(128, 1, 650, 650, 128, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=128 

insert into detalle__venta values(129, 5, 500, 2500, 129, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=129

insert into detalle__venta values(130, 2, 750, 1500, 130, 1, 6 )
update producto set cantidad=(cantidad-2) where idProducto=130 

insert into detalle__venta values(131, 2, 500, 1000, 131, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=131 

insert into detalle__venta values(132, 3, 750, 2250, 132, 1, 6 )
update producto set cantidad=(cantidad-3) where idProducto=132 

insert into detalle__venta values(133, 5, 775, 3875, 133, 1, 6 )
update producto set cantidad=(cantidad-5) where idProducto=133 

insert into detalle__venta values(134, 4, 750, 3000, 134, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=134 

insert into detalle__venta values(135, 5, 862.50, 4312.50, 135, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=135 

insert into detalle__venta values(136, 5, 875, 4375, 136, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=136 

insert into detalle__venta values(137, 5, 500, 2500, 137, 1, 7 )
update producto set cantidad=(cantidad-5) where idProducto=137 

insert into detalle__venta values(138, 3, 375, 1125, 138, 2, 7 )
update producto set cantidad=(cantidad-3) where idProducto=138 

insert into detalle__venta values(139, 5, 412.50, 2062.50, 139, 2, 6 )
update producto set cantidad=(cantidad-5) where idProducto=139 

insert into detalle__venta values(140, 3, 537.50, 1612.50, 140, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=140 

insert into detalle__venta values(141, 5, 287.50, 1437.50, 141, 3, 7 )
update producto set cantidad=(cantidad-5) where idProducto=141 

insert into detalle__venta values(142, 4, 312.50, 625, 142, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=142 

insert into detalle__venta values(143, 7, 537.50, 3762.50, 143, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=143 

insert into detalle__venta values(144, 6, 537.50, 3225, 144, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=144 

insert into detalle__venta values(145, 5, 475, 2375, 145, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=145 

insert into detalle__venta values(146, 2, 537.50, 1075, 146, 1, 7 )
update producto set cantidad=(cantidad-2) where idProducto=146 

insert into detalle__venta values(147, 5, 425, 2125, 147, 1, 7 )
update producto set cantidad=(cantidad-5) where idProducto=147 

insert into detalle__venta values(148, 1, 525, 525, 148, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=148 

insert into detalle__venta values(149, 1, 412.50, 412.50, 149, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=149 

insert into detalle__venta values(150, 2, 525, 1050, 150, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=150 

insert into detalle__venta values(151, 2, 537.50, 1075, 151, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=151 

insert into detalle__venta values(152, 5, 637.50, 3187.50, 152, 1, 7 )
update producto set cantidad=(cantidad-5) where idProducto=152 

insert into detalle__venta values(153, 3, 550, 1650, 153, 1, 7 )
update producto set cantidad=(cantidad-3) where idProducto=153 

insert into detalle__venta values(154, 2, 412.50, 825, 154, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=154 

insert into detalle__venta values(155, 2, 600, 1200, 155, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=155 

insert into detalle__venta values(156, 5, 737.50, 3687.50, 156, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=156

insert into detalle__venta values(157, 2, 875, 1750, 157, 1, 7 )
update producto set cantidad=(cantidad-2) where idProducto=157 

insert into detalle__venta values(1, 1, 3750, 3750, 158, 1, 7 )
update producto set cantidad=(cantidad-1) where idProducto=1 

insert into detalle__venta values(45, 1, 37.50, 37.50, 159, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=45 

insert into detalle__venta values(36, 3, 15, 45, 160, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=36 

insert into detalle__venta values(78, 6, 56.25, 337.5, 161, 3, 2 )
update producto set cantidad=(cantidad-6) where idProducto=78 
			-- ultimo control con 79 
insert into detalle__venta values(79, 8, 431.25, 3450, 162, 1, 2 )
update producto set cantidad=(cantidad-8) where idProducto=79 

insert into detalle__venta values(12, 7, 62.50, 437.50, 163, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=12 

insert into detalle__venta values(15, 6, 62.50, 375, 164, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=15 

insert into detalle__venta values(2, 9, 500, 4500, 165, 2, 2 )
update producto set cantidad=(cantidad-9) where idProducto=2 

insert into detalle__venta values(109, 9, 1500, 13500, 166, 1, 2 )
update producto set cantidad=(cantidad-9) where idProducto=109 

insert into detalle__venta values(145, 8, 475, 3800, 167, 2, 2 )
update producto set cantidad=(cantidad-8) where idProducto=145 

insert into detalle__venta values(23, 7, 1000, 7000, 168, 2, 2 )
update producto set cantidad=(cantidad-7) where idProducto=23 

insert into detalle__venta values(25, 7, 1275, 31875, 169, 3, 2 )
update producto set cantidad=(cantidad-7) where idProducto=25 

insert into detalle__venta values(27, 7, 1437.50, 10062.25, 170, 2, 2 )
update producto set cantidad=(cantidad-7) where idProducto=27 

insert into detalle__venta values(91, 5, 431.25, 2156.25, 171, 1, 6 )
update producto set cantidad=(cantidad-5) where idProducto=91 

insert into detalle__venta values(67, 7, 15, 105, 172, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=67 

insert into detalle__venta values(104, 5, 281.25, 1406.25, 173, 1, 3 )
update producto set cantidad=(cantidad-5) where idProducto=104 

insert into detalle__venta values(114, 5, 525, 2625, 174, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=114 

insert into detalle__venta values(145, 4, 475, 1900, 175, 2, 2 )
update producto set cantidad=(cantidad-4) where idProducto=145

insert into detalle__venta values(2, 3, 500, 1500, 176, 2, 2 )
update producto set cantidad=(cantidad-3) where idProducto=2 

insert into detalle__venta values(17, 2, 152.50, 305, 177, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=17 

insert into detalle__venta values(66, 2, 97.50, 195, 178, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=66 

insert into detalle__venta values(88, 5, 350, 1750, 179, 1, 6 )
update producto set cantidad=(cantidad-5) where idProducto=88 

insert into detalle__venta values(56, 1, 46.25, 46.25, 180, 2, 2 )
update producto set cantidad=(cantidad-1) where idProducto=56 

insert into detalle__venta values(56, 1, 46.25, 46.25, 181, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=56 

insert into detalle__venta values(45, 5, 37.50, 187.50, 182, 3, 2 )
update producto set cantidad=(cantidad-5) where idProducto=45 

insert into detalle__venta values(111, 2, 1112.50, 2225, 183, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=111 

insert into detalle__venta values(1, 3, 3750, 11250, 184, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=1 

insert into detalle__venta values(156, 4, 737.50, 2950, 185, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=156 

insert into detalle__venta values(34, 5, 12.50, 62.50, 186, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=34 

insert into detalle__venta values(25, 3, 1275, 3825, 187, 3, 3 )
update producto set cantidad=(cantidad-3) where idProducto=25 

insert into detalle__venta values(20, 2, 275, 550, 188, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=20 

insert into detalle__venta values(10, 5, 100, 500, 189, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=10 

insert into detalle__venta values(24, 3, 1050, 3150, 190, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=24 

insert into detalle__venta values(35, 5, 28.75, 143.75, 191, 3, 3 )
update producto set cantidad=(cantidad-5) where idProducto=35 

insert into detalle__venta values(26, 2, 1562.50, 3125, 192, 3, 3 )
update producto set cantidad=(cantidad-2) where idProducto=26 

insert into detalle__venta values(10, 3, 100, 300, 193, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=10 

insert into detalle__venta values(25, 5, 1275, 6375, 194, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=25 

insert into detalle__venta values(50, 1, 52.50, 52.50, 195, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=50 

insert into detalle__venta values(1, 1, 3750, 3750, 196, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=1 

insert into detalle__venta values(100, 2, 1125, 2250, 197, 1, 6 )
update producto set cantidad=(cantidad-2) where idProducto=100 

insert into detalle__venta values(129, 2, 500, 1000, 198, 1, 6 )
update producto set cantidad=(cantidad-2) where idProducto=129 

insert into detalle__venta values(125, 5, 637.50, 3187.5, 199, 1, 7 )
update producto set cantidad=(cantidad-5) where idProducto=125

insert into detalle__venta values(145, 1, 475, 475, 200, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=145 

insert into detalle__venta values(16, 5, 156.25, 781.25, 201, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=16 

insert into detalle__venta values(26, 1, 1562.50, 1562.50, 202, 1, 6 )
update producto set cantidad=(cantidad-1) where idProducto=26 

insert into detalle__venta values(90, 3, 293.75, 881.25, 203, 3, 6 )
update producto set cantidad=(cantidad-3) where idProducto=90 

insert into detalle__venta values(99, 10, 431.25, 4312.5, 204, 1, 2 )
update producto set cantidad=(cantidad-10) where idProducto=99 

insert into detalle__venta values(12, 9, 62.50, 562.50, 205, 1, 2 )
update producto set cantidad=(cantidad-9) where idProducto=12 

insert into detalle__venta values(11, 7, 28.75, 201.25, 206, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=11 

insert into detalle__venta values(145, 5, 475, 2375, 207, 3, 2 )
update producto set cantidad=(cantidad-5) where idProducto=145 

insert into detalle__venta values(109, 5, 1500, 7500, 208, 3, 3 )
update producto set cantidad=(cantidad-5) where idProducto=109 

insert into detalle__venta values(101, 5, 312.50, 1562.50, 209, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=101 

insert into detalle__venta values(108, 7, 1875, 13125, 210, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=108 

insert into detalle__venta values(123, 6, 662.50, 3975, 211, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=123 

insert into detalle__venta values(132, 5, 750, 3750, 212, 2, 7 )
update producto set cantidad=(cantidad-5) where idProducto=132 

insert into detalle__venta values(154, 3, 412.50, 1237.50, 213, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=154 

insert into detalle__venta values(134, 4, 750, 3000, 214, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=134 

insert into detalle__venta values(6, 5, 5000, 25000, 215, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=6 

insert into detalle__venta values(2, 3, 500, 1500, 216, 1, 7 )
update producto set cantidad=(cantidad-3) where idProducto=2 

insert into detalle__venta values(4, 5, 312.50, 1562.50, 217, 1, 7 )
update producto set cantidad=(cantidad-5) where idProducto=4 

insert into detalle__venta values(23, 5, 1000, 5000, 218, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=23 

insert into detalle__venta values(78, 2, 56.25, 112.5, 219, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=78 

insert into detalle__venta values(56, 1, 46.25, 46.25, 220, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=56 

insert into detalle__venta values(45, 1, 37.50, 37.50, 221, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=45 

insert into detalle__venta values(56, 2, 46.25, 92.50, 222, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=56 

insert into detalle__venta values(44, 2, 93.75, 187.50, 223, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=44 

insert into detalle__venta values(44, 2, 93.75, 187.50, 224, 1, 7 )
update producto set cantidad=(cantidad-2) where idProducto=44 

insert into detalle__venta values(56, 1, 46.25, 46.25, 225, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=56 

insert into detalle__venta values(23, 11, 1000, 11000, 226, 1, 2 )
update producto set cantidad=(cantidad-11) where idProducto=23 

insert into detalle__venta values(22, 5, 350, 1750, 227, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=22 

insert into detalle__venta values(34, 2, 12.50, 25, 228, 1, 7 )
update producto set cantidad=(cantidad-2) where idProducto=34 

insert into detalle__venta values(78, 1, 56.25, 56.25, 229, 1, 7 )
update producto set cantidad=(cantidad-1) where idProducto=78 

insert into detalle__venta values(89, 11, 300, 3300, 230, 1, 2 )
update producto set cantidad=(cantidad-11) where idProducto=89 

insert into detalle__venta values(100, 12, 1125, 13500, 231, 1, 2 )
update producto set cantidad=(cantidad-12) where idProducto=100 

insert into detalle__venta values(105, 5, 156.25, 781.25, 232, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=105 

insert into detalle__venta values(12, 12, 62.50, 750, 233, 1, 2 )
update producto set cantidad=(cantidad-12) where idProducto=12 

insert into detalle__venta values(15, 10, 62.50, 625, 234, 1, 7 )
update producto set cantidad=(cantidad-10) where idProducto=15 

insert into detalle__venta values(17, 5, 152.50, 762.50, 235, 1, 7 )
update producto set cantidad=(cantidad-5) where idProducto=17 

insert into detalle__venta values(65, 5, 137.50, 687.50, 236, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=65 

insert into detalle__venta values(78, 5, 56.25, 281.25, 237, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=78 

insert into detalle__venta values(34, 10, 12.50, 125, 238, 1, 2 )
update producto set cantidad=(cantidad-10) where idProducto=34 

insert into detalle__venta values(98, 11, 93.75, 1031.25, 239, 1, 2 )
update producto set cantidad=(cantidad-11) where idProducto=98 

insert into detalle__venta values(125, 12, 637.50, 7650, 240, 1, 2 )
update producto set cantidad=(cantidad-12) where idProducto=125 

insert into detalle__venta values(103, 13, 312.50, 4062.50, 241, 1, 7 )
update producto set cantidad=(cantidad-13) where idProducto=103 

insert into detalle__venta values(142, 3, 312.50, 937.5, 242, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=142 

insert into detalle__venta values(122, 1, 625, 625, 243, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=122 

insert into detalle__venta values(10, 2, 100, 200, 244, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=10 

insert into detalle__venta values(23, 2, 1000, 2000, 245, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=23 

insert into detalle__venta values(5, 1, 187.50, 187.50, 246, 1, 3 )
update producto set cantidad=(cantidad-1) where idProducto=5 

insert into detalle__venta values(123, 1, 662.50, 662.50, 247, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=123 

insert into detalle__venta values(122, 2, 625, 1250, 248, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=122 

insert into detalle__venta values(145, 2, 475, 950, 249, 3, 2 )
update producto set cantidad=(cantidad-2) where idProducto=145 

insert into detalle__venta values(135, 15, 862.50, 12937.50, 250, 3, 2 )
update producto set cantidad=(cantidad-15) where idProducto=135 

insert into detalle__venta values(56, 3, 46.25, 138.75, 251, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=56 

insert into detalle__venta values(23, 4, 1000, 4000, 252, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=23 

insert into detalle__venta values(109, 3, 1500, 4500, 253, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=109 

insert into detalle__venta values(45, 5, 37.50, 187.50, 254, 3, 2 )
update producto set cantidad=(cantidad-5) where idProducto=45 

insert into detalle__venta values(76, 5, 373.75, 1868.75, 255, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=76 

insert into detalle__venta values(55, 1, 41.25, 41.25, 256, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=55 

insert into detalle__venta values(33, 4, 312.50, 1250, 257, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=33 

insert into detalle__venta values(34, 4, 12.50, 50, 258, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=34 

insert into detalle__venta values(23, 6, 1000, 6000, 259, 3, 2 )
update producto set cantidad=(cantidad-6) where idProducto=23 

insert into detalle__venta values(13, 3, 31.25, 93.75, 260, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=13 

insert into detalle__venta values(76, 4, 373.75, 1495, 261, 3, 2 )
update producto set cantidad=(cantidad-4) where idProducto=76 

insert into detalle__venta values(55, 1, 41.25, 41.25, 262, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=55 

insert into detalle__venta values(67, 4, 15, 60, 263, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=67 

insert into detalle__venta values(88, 5, 350, 1750, 264, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=88 

insert into detalle__venta values(55, 5, 41.25, 206.25, 265, 2, 2 )
update producto set cantidad=(cantidad-5) where idProducto=55 

insert into detalle__venta values(76, 11, 373.75, 4111.25, 266, 1, 2 )
update producto set cantidad=(cantidad-11) where idProducto=76 

insert into detalle__venta values(78, 13, 56.25, 731.25, 267, 1, 2 )
update producto set cantidad=(cantidad-13) where idProducto=78 

insert into detalle__venta values(89, 15, 300, 4500, 268, 1, 2 )
update producto set cantidad=(cantidad-15) where idProducto=89 

insert into detalle__venta values(99, 14, 431.25, 6037.50, 269, 2, 3 )
update producto set cantidad=(cantidad-14) where idProducto=99 

insert into detalle__venta values(77, 11, 43.75, 811.25, 270, 1, 2 )
update producto set cantidad=(cantidad-11) where idProducto=77 

insert into detalle__venta values(56, 12, 46.25, 555, 271, 1, 2 )
update producto set cantidad=(cantidad-12) where idProducto=56 

insert into detalle__venta values(109, 15, 1500, 22500, 272, 1, 3 )
update producto set cantidad=(cantidad-15) where idProducto=109 

insert into detalle__venta values(106, 2, 975, 1950, 273, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=106 

insert into detalle__venta values(12, 15, 62.50, 937.50, 274, 1, 2 )
update producto set cantidad=(cantidad-15) where idProducto=12 

insert into detalle__venta values(111, 2, 1112.50, 2225, 275, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=111 

insert into detalle__venta values(122, 15, 625, 9375, 276, 2, 6 )
update producto set cantidad=(cantidad-15) where idProducto=122 

insert into detalle__venta values(100, 10, 1125, 11250, 277, 1, 2 )
update producto set cantidad=(cantidad-10) where idProducto=100 

insert into detalle__venta values(134, 11, 750, 8250, 278, 1, 2 )
update producto set cantidad=(cantidad-11) where idProducto=134 

insert into detalle__venta values(147, 7, 425, 2975, 279, 1, 6 )
update producto set cantidad=(cantidad-7) where idProducto=167 

insert into detalle__venta values(123, 5, 662.50, 3312.5, 280, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=123 

insert into detalle__venta values(122, 8, 625, 5000, 281, 1, 2 )
update producto set cantidad=(cantidad-8) where idProducto=122 

insert into detalle__venta values(122, 5, 625, 3125, 282, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=122 

insert into detalle__venta values(156, 7, 737.50, 5162.50, 283, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=156 

insert into detalle__venta values(122, 5, 625, 3125, 284, 3, 6 )
update producto set cantidad=(cantidad-5) where idProducto=122 

insert into detalle__venta values(111, 6, 1112.50, 6675, 285, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=111 

insert into detalle__venta values(122, 3, 625, 1875, 286, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=122 

insert into detalle__venta values(32, 4, 3500, 14000, 287, 3, 3 )
update producto set cantidad=(cantidad-4) where idProducto=32 

insert into detalle__venta values(31, 2, 3125, 6250, 288, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=31 

insert into detalle__venta values(45, 3, 37.50, 112.50, 289, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=45 

insert into detalle__venta values(56, 10, 46.25, 462.50, 290, 1, 2 )
update producto set cantidad=(cantidad-10) where idProducto=56 

insert into detalle__venta values(66, 5, 97.50, 487.50, 291, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=66 

insert into detalle__venta values(34, 5, 12.50, 62.50, 292, 2, 6 )
update producto set cantidad=(cantidad-5) where idProducto=34 

insert into detalle__venta values(87, 8, 343.75, 2750, 293, 1, 2 )
update producto set cantidad=(cantidad-8) where idProducto=87 

insert into detalle__venta values(56, 5, 46.25, 231.25, 294, 2, 7 )
update producto set cantidad=(cantidad-5) where idProducto=56 

insert into detalle__venta values(88, 5, 350, 1750, 295, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=88 

insert into detalle__venta values(45, 8, 37.50, 300, 296, 1, 2 )
update producto set cantidad=(cantidad-8) where idProducto=45 

insert into detalle__venta values(45, 8, 37.50, 300, 297, 1, 2 )
update producto set cantidad=(cantidad-8) where idProducto=45 

insert into detalle__venta values(55, 3, 41.25, 123.75, 298, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=55 

insert into detalle__venta values(44, 5, 93.75, 468.75, 299, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=44 

insert into detalle__venta values(55, 5, 41.25, 206.25, 300, 1, 7 )
update producto set cantidad=(cantidad-5) where idProducto=55 

		---		DATOS DESPUES DE 301 EN ADELANTE	--------
insert into detalle__venta values(34, 5, 12.50, 62.50, 301, 1, 7 )
update producto set cantidad=(cantidad-5) where idProducto=34 

insert into detalle__venta values(67, 5, 15, 75, 302, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=67 

insert into detalle__venta values(67, 4, 15, 60, 303, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=67 

insert into detalle__venta values(55, 3, 41.25, 123.75, 304, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=55 

insert into detalle__venta values(66, 6, 97.50, 585, 305, 1, 7 )
update producto set cantidad=(cantidad-6) where idProducto=66 

insert into detalle__venta values(44, 6, 93.75, 562.50, 306, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=44 

insert into detalle__venta values(55, 4, 41.25, 165, 307, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=55 

insert into detalle__venta values(66, 5, 97.50, 487.5, 308, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=66 

insert into detalle__venta values(156, 4, 737.50, 2950, 309, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=156 

insert into detalle__venta values(157, 3, 875, 2625, 310, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=157 

insert into detalle__venta values(155, 3, 600, 1800, 311, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=155 

insert into detalle__venta values(144, 3, 537.50, 1612.50, 312, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=144 

insert into detalle__venta values(155, 3, 600, 1800, 313, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=155 

insert into detalle__venta values(133, 2, 775, 1550, 314, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=133 

insert into detalle__venta values(44, 1, 93.75, 93.75, 315, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=44 

insert into detalle__venta values(55, 1, 41.25, 41.25, 316, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=55 

insert into detalle__venta values(44, 1, 93.75, 93.75, 317, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=44 

insert into detalle__venta values(45, 1, 37.50, 37.50, 318, 3, 7 )
update producto set cantidad=(cantidad-1) where idProducto=45 

insert into detalle__venta values(76, 2, 373.75, 747.50, 319, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=76 

insert into detalle__venta values(56, 4, 46.25, 185, 320, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=56 

insert into detalle__venta values(55, 7, 41.25, 288.75, 321, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=55 

insert into detalle__venta values(34, 6, 12.50, 75, 322, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=34 

insert into detalle__venta values(34, 7, 12.50, 87.50, 323, 2, 2 )
update producto set cantidad=(cantidad-7) where idProducto=34 

insert into detalle__venta values(44, 5, 93.75, 468.75, 324, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=44 

insert into detalle__venta values(45, 3, 37.50, 112.50, 325, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=45 

insert into detalle__venta values(66, 5, 97.50, 487.50, 326, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=66 

insert into detalle__venta values(56, 6, 46.25, 277.50, 327, 2, 7 )
update producto set cantidad=(cantidad-6) where idProducto=56 

insert into detalle__venta values(55, 5, 41.25, 206.25, 328, 2, 6 )
update producto set cantidad=(cantidad-5) where idProducto=55 

insert into detalle__venta values(54, 3, 31.25, 93.75, 329, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=54 

insert into detalle__venta values(45, 4, 37.50, 150, 330, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=45 

insert into detalle__venta values(45, 5, 37.50, 187.5, 331, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=45 

insert into detalle__venta values(55, 5, 41.25, 206.25, 332, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=55 

insert into detalle__venta values(34, 1, 12.50, 12.50, 333, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=34 

insert into detalle__venta values(56, 2, 46.25, 92.50, 334, 1, 3 )
update producto set cantidad=(cantidad-2) where idProducto=56 

insert into detalle__venta values(45, 2, 37.50, 75, 335, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=45 

insert into detalle__venta values(45, 4, 37.50, 150, 336, 2, 3 )
update producto set cantidad=(cantidad-4) where idProducto=45 

insert into detalle__venta values(66, 4, 97.50, 390, 337, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=66 

insert into detalle__venta values(65, 5, 137.50, 687.50, 338, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=65 

insert into detalle__venta values(7, 6, 7500, 45000, 339, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=7 

insert into detalle__venta values(4, 7, 312.50, 2187.50, 340, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=4 

insert into detalle__venta values(1, 7, 3750, 26250, 341, 2, 3 )
update producto set cantidad=(cantidad-7) where idProducto=1 

insert into detalle__venta values(44, 7, 93.75, 656.25, 342, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=44 

insert into detalle__venta values(76, 3, 373.75, 1121.25, 343, 2, 6 )
update producto set cantidad=(cantidad-3) where idProducto=76 

insert into detalle__venta values(100, 8, 1125, 9000, 344, 1, 2 )
update producto set cantidad=(cantidad-8) where idProducto=100 

insert into detalle__venta values(155, 3, 600, 1800, 345, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=155 

insert into detalle__venta values(155, 6, 600, 3600, 346, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=155 

insert into detalle__venta values(132, 5, 750, 3750, 347, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=132 

insert into detalle__venta values(122, 4, 625, 2500, 348, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=122 

insert into detalle__venta values(133, 3, 775, 2325, 349, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=133 

insert into detalle__venta values(23, 2, 1000, 2000, 350, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=23 

insert into detalle__venta values(23, 2, 1000, 2000, 351, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=23 

insert into detalle__venta values(33, 3, 312.50, 937.50, 352, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=33 

insert into detalle__venta values(23, 3, 1000, 3000, 353, 1, 7 )
update producto set cantidad=(cantidad-3) where idProducto=23 

insert into detalle__venta values(155, 6, 600, 3600, 354, 1, 7 )
update producto set cantidad=(cantidad-6) where idProducto=155 

insert into detalle__venta values(133, 2, 775, 1550, 355, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=133 

insert into detalle__venta values(12, 4, 62.50, 250, 356, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=12 

insert into detalle__venta values(32, 3, 3500, 10500, 357, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=32 

insert into detalle__venta values(43, 4, 93.75, 375, 358, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=43 

insert into detalle__venta values(22, 2, 350, 700, 359, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=22 

insert into detalle__venta values(45, 3, 37.50, 112.50, 360, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=45 

insert into detalle__venta values(55, 3, 41.25, 123.75, 361, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=55 

insert into detalle__venta values(45, 2, 37.50, 75, 362, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=45 

insert into detalle__venta values(46, 3, 43.75, 131.25, 363, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=46 

insert into detalle__venta values(56, 5, 46.25, 231.25, 364, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=56 

insert into detalle__venta values(56, 4, 46.25, 185, 365, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=56 

insert into detalle__venta values(45, 2, 37.50, 75, 366, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=45 

insert into detalle__venta values(45, 1, 37.50, 37.50, 367, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=45 

insert into detalle__venta values(76, 2, 373.75, 744.50, 368, 1, 7 )
update producto set cantidad=(cantidad-2) where idProducto=76 

insert into detalle__venta values(77, 5, 43.75, 218.75, 369, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=77 

insert into detalle__venta values(88, 1, 350, 350, 370, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=88 

insert into detalle__venta values(5, 5, 187.50, 937.50, 371, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=5 

insert into detalle__venta values(44, 1, 93.75, 93.75, 372, 1, 7 )
update producto set cantidad=(cantidad-1) where idProducto=44 

insert into detalle__venta values(45, 2, 37.50, 75, 373, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=45 

insert into detalle__venta values(45, 2, 37.50, 75, 374, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=45 

insert into detalle__venta values(66, 5, 97.50, 487.50, 375, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=66 

insert into detalle__venta values(24, 3, 1050, 3150, 376, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=24 

insert into detalle__venta values(45, 5, 37.50, 187.50, 377, 1, 6 )
update producto set cantidad=(cantidad-5) where idProducto=45 

insert into detalle__venta values(45, 3, 37.50, 112.50, 378, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=45 

insert into detalle__venta values(77, 2, 43.75, 87.50, 379, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=77 

insert into detalle__venta values(76, 2, 373.75, 747.50, 380, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=76 

insert into detalle__venta values(56, 1, 46.25, 46.25, 381, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=56 

insert into detalle__venta values(45, 1, 37.50, 37.50, 382, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=45 

insert into detalle__venta values(45, 3, 37.50, 112.50, 383, 1, 6 )
update producto set cantidad=(cantidad-3) where idProducto=45 

insert into detalle__venta values(66, 2, 97.50, 195, 384, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=66 

insert into detalle__venta values(123, 2, 662.50, 1325, 385, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=423 

insert into detalle__venta values(123, 1, 662.50, 662.50, 386, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=123 

insert into detalle__venta values(123, 2, 662.50, 1325, 387, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=123 

insert into detalle__venta values(23, 1, 1000, 1000, 388, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=23 

insert into detalle__venta values(6, 3, 5000, 15000, 389, 1, 6 )
update producto set cantidad=(cantidad-3) where idProducto=6 

insert into detalle__venta values(44, 1, 93.75, 93.75, 390, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=44 

insert into detalle__venta values(64, 4, 33.75, 135, 391, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=64 

insert into detalle__venta values(74, 4, 25, 100, 392, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=74 

insert into detalle__venta values(76, 3, 373.75, 1121.25, 393, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=76 

insert into detalle__venta values(45, 2, 37.50, 75, 394, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=45 

insert into detalle__venta values(45, 2, 37.50, 75, 395, 1, 6 )
update producto set cantidad=(cantidad-2) where idProducto=45 

insert into detalle__venta values(44, 5, 93.75, 468.75, 396, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=44 

insert into detalle__venta values(76, 2, 373.75, 747.50, 397, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=76 

insert into detalle__venta values(77, 2, 43.75, 87.50, 398, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=77 

insert into detalle__venta values(34, 1, 12.50, 12.50, 399, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=34 

insert into detalle__venta values(45, 1, 37.50, 37.50, 400, 1, 6 )
update producto set cantidad=(cantidad-1) where idProducto=45 

	----		DATOS DESPUES DE 401
insert into detalle__venta values(56, 2, 46.25, 92.50, 401, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=56 

insert into detalle__venta values(44, 5, 93.75, 468.75, 402, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=44 

insert into detalle__venta values(23, 5, 1000, 5000, 403, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=23 

insert into detalle__venta values(33, 2, 312.50, 625, 404, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=33 

insert into detalle__venta values(54, 2, 31.25, 62.50, 405, 1, 6 )
update producto set cantidad=(cantidad-2) where idProducto=54 

insert into detalle__venta values(5, 2, 187.50, 375, 406, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=5 

insert into detalle__venta values(77, 1, 43.75, 43.75, 407, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=77 

insert into detalle__venta values(1, 2, 3750, 7500, 408, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=1 

insert into detalle__venta values(109, 1, 1500, 1500, 409, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=109 

insert into detalle__venta values(104, 3, 281.25, 843.75, 410, 1, 7 )
update producto set cantidad=(cantidad-3) where idProducto=104 

insert into detalle__venta values(155, 2, 600, 1200, 411, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=155 

insert into detalle__venta values(23, 2, 1000, 2000, 412, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=23 

insert into detalle__venta values(21, 1, 312.50, 312.50, 413, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=21 

insert into detalle__venta values(16, 1, 156.25, 156.25, 414, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=16 

insert into detalle__venta values(5, 3, 187.50, 562.50, 415, 1, 3 )
update producto set cantidad=(cantidad-3) where idProducto=5 

insert into detalle__venta values(17, 3, 152.50, 457.50, 416, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=17 

insert into detalle__venta values(1, 2, 3750, 7500, 417, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=1 

insert into detalle__venta values(45, 5, 37.50, 187.50, 418, 3, 3 )
update producto set cantidad=(cantidad-5) where idProducto=45 

insert into detalle__venta values(44, 2, 93.75, 187.50, 419, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=44 

insert into detalle__venta values(34, 5, 12.50, 62.50, 420, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=34 

insert into detalle__venta values(2, 5, 500, 2500, 421, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=2 

insert into detalle__venta values(33, 1, 312.50, 312.50, 422, 3, 3 )
update producto set cantidad=(cantidad-1) where idProducto=33 

insert into detalle__venta values(1, 1, 3750, 3750, 423, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=1 

insert into detalle__venta values(65, 2, 137.50, 275, 424, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=65 

insert into detalle__venta values(66, 5, 97.50, 487.50, 425, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=66 

insert into detalle__venta values(45, 5, 37.50, 187.50, 426, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=45 

insert into detalle__venta values(44, 5, 93.75, 468.75, 427, 3, 3 )
update producto set cantidad=(cantidad-5) where idProducto=44 

insert into detalle__venta values(55, 2, 41.25, 82.50, 428, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=55 

insert into detalle__venta values(66, 3, 97.50, 292.50, 429, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=66 

insert into detalle__venta values(54, 2, 31.25, 62.50, 430, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=54 

insert into detalle__venta values(48, 1, 42.50, 42.50, 431, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=48 

insert into detalle__venta values(89, 2, 300, 600, 432, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=89 

insert into detalle__venta values(99, 1, 431.25, 431.25, 433, 2, 2 )
update producto set cantidad=(cantidad-1) where idProducto=99 

insert into detalle__venta values(1, 2, 3750, 7500, 434, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=1 

insert into detalle__venta values(6, 7, 5000, 35000, 435, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=6 

insert into detalle__venta values(56, 4, 46.25, 185, 436, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=56 

insert into detalle__venta values(56, 10, 46.25, 138.75, 437, 1, 2 )
update producto set cantidad=(cantidad-10) where idProducto=56 

insert into detalle__venta values(44, 8, 93.75, 375, 438, 1, 6 )
update producto set cantidad=(cantidad-8) where idProducto=44 

insert into detalle__venta values(77, 11, 43.75, 131.25, 439, 1, 2 )
update producto set cantidad=(cantidad-11) where idProducto=77 

insert into detalle__venta values(55, 9, 41.25, 123.75, 440, 1, 2 )
update producto set cantidad=(cantidad-9) where idProducto=55 

insert into detalle__venta values(66, 7, 97.50, 390, 441, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=66 

insert into detalle__venta values(107, 10, 1162.50, 4650, 442, 1, 2 )
update producto set cantidad=(cantidad-10) where idProducto=107 

insert into detalle__venta values(124, 5, 625, 3125, 443, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=124 

insert into detalle__venta values(145, 12, 475, 950, 444, 1, 7 )
update producto set cantidad=(cantidad-12) where idProducto=145 

insert into detalle__venta values(132, 11, 750, 750, 445, 1, 2 )
update producto set cantidad=(cantidad-11) where idProducto=132 

insert into detalle__venta values(112, 15, 1500, 7500, 446, 1, 2 )
update producto set cantidad=(cantidad-15) where idProducto=112 

insert into detalle__venta values(115, 15, 750, 11250, 447, 1, 2 )
update producto set cantidad=(cantidad-15) where idProducto=115 

insert into detalle__venta values(4, 5, 312.50, 1562.50, 448, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=4 

insert into detalle__venta values(44, 1, 93.75, 93.75, 449, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=44 

insert into detalle__venta values(53, 2, 30, 60, 450, 2, 2 )
update producto set cantidad=(cantidad-2) where idProducto=53 

insert into detalle__venta values(65, 5, 137.50, 687.50, 451, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=65 

insert into detalle__venta values(44, 6, 93.75, 562.50, 452, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=44 

insert into detalle__venta values(34, 5, 12.50, 62.50, 453, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=34 

insert into detalle__venta values(34, 4, 12.50, 50, 454, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=34 

insert into detalle__venta values(65, 5, 137.50, 687.50, 455, 2, 6 )
update producto set cantidad=(cantidad-5) where idProducto=65 

insert into detalle__venta values(56, 4, 46.25, 185, 456, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=56 

insert into detalle__venta values(34, 12, 12.50, 150, 457, 1, 2 )
update producto set cantidad=(cantidad-12) where idProducto=34 

insert into detalle__venta values(33, 5, 312.50, 1562.50, 458, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=33 

insert into detalle__venta values(22, 5, 350, 1750, 459, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=22 

insert into detalle__venta values(34, 21, 12.50, 262.50, 460, 1, 2 )
update producto set cantidad=(cantidad-21) where idProducto=34 

insert into detalle__venta values(34, 11, 12.50, 137.50, 461, 3, 6 )
update producto set cantidad=(cantidad-11) where idProducto=34 

insert into detalle__venta values(56, 2, 46.25, 92.50, 462, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=56 

insert into detalle__venta values(44, 5, 93.75, 468.75, 463, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=44 

insert into detalle__venta values(65, 13, 137.50, 1787.50, 464, 1, 2 )
update producto set cantidad=(cantidad-13) where idProducto=65 

insert into detalle__venta values(56, 4, 46.25, 185, 465, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=56 

insert into detalle__venta values(77, 5, 43.75, 218.75, 466, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=77 

insert into detalle__venta values(67, 5, 15, 75, 467, 3, 6 )
update producto set cantidad=(cantidad-5) where idProducto=67 

insert into detalle__venta values(45, 14, 37.50, 525, 468, 1, 2 )
update producto set cantidad=(cantidad-14) where idProducto=45 

insert into detalle__venta values(67, 2, 15, 30, 469, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=67 

insert into detalle__venta values(77, 2, 43.75, 87.50, 470, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=77 

insert into detalle__venta values(77, 1, 43.75, 43.75, 471, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=77 

insert into detalle__venta values(67, 2, 15, 30, 472, 1, 7 )
update producto set cantidad=(cantidad-2) where idProducto=67 

insert into detalle__venta values(67, 7, 15, 105, 473, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=67 

insert into detalle__venta values(50, 5, 52.50, 262.50, 474, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=50 

insert into detalle__venta values(5, 5, 187.50, 937.50, 475, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=5 

insert into detalle__venta values(12, 4, 62.50, 250, 476, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=12 

insert into detalle__venta values(33, 5, 312.50, 1562.5, 477, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=33 

insert into detalle__venta values(34, 5, 12.50, 62.50, 478, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=34 

insert into detalle__venta values(44, 5, 93.75, 468.75, 479, 1, 7 )
update producto set cantidad=(cantidad-5) where idProducto=44 

insert into detalle__venta values(33, 3, 312.50, 937.50, 480, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=33 

insert into detalle__venta values(44, 3, 93.75, 281.25, 481, 1, 2 )
update producto set cantidad=(cantidad-3) where idProducto=44 

insert into detalle__venta values(56, 7, 46.25, 323.75, 482, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=56 

insert into detalle__venta values(56, 4, 46.25, 185, 483, 1, 2 )
update producto set cantidad=(cantidad-4) where idProducto=56 

insert into detalle__venta values(44, 6, 93.75, 562.50, 484, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=44 

insert into detalle__venta values(43, 5, 93.75, 468.75, 485, 1, 2 )
update producto set cantidad=(cantidad-5) where idProducto=43 

insert into detalle__venta values(44, 4, 93.75, 375, 486, 1, 7 )
update producto set cantidad=(cantidad-4) where idProducto=44 

insert into detalle__venta values(12, 2, 62.50, 125, 487, 1, 2 )
update producto set cantidad=(cantidad-2) where idProducto=12 

insert into detalle__venta values(77, 11, 43.75, 481.25, 488, 1, 2 )
update producto set cantidad=(cantidad-11) where idProducto=77 

insert into detalle__venta values(56, 8, 46.25, 370, 489, 1, 2 )
update producto set cantidad=(cantidad-8) where idProducto=56 

insert into detalle__venta values(65, 7, 137.50, 962.50, 490, 1, 2 )
update producto set cantidad=(cantidad-7) where idProducto=65 

insert into detalle__venta values(9, 6, 312.50, 1875, 491, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=9 

insert into detalle__venta values(17, 1, 152.50, 152.50, 492, 1, 2 )
update producto set cantidad=(cantidad-1) where idProducto=17 

insert into detalle__venta values(67, 15, 15, 225, 493, 1, 2 )
update producto set cantidad=(cantidad-15) where idProducto=67 

insert into detalle__venta values(89, 13, 300, 3900, 494, 1, 2 )
update producto set cantidad=(cantidad-13) where idProducto=89 

insert into detalle__venta values(59, 14, 56.25, 787.50, 495, 1, 2 )
update producto set cantidad=(cantidad-14) where idProducto=59 

insert into detalle__venta values(66, 8, 97.50, 780, 496, 1, 2 )
update producto set cantidad=(cantidad-8) where idProducto=66 

insert into detalle__venta values(6, 5, 5000, 25000, 497, 2, 7 )
update producto set cantidad=(cantidad-5) where idProducto=6 

insert into detalle__venta values(76, 13, 373.75, 4858.75, 498, 1, 2 )
update producto set cantidad=(cantidad-13) where idProducto=76 

insert into detalle__venta values(76, 6, 373.75, 2242.50, 499, 1, 2 )
update producto set cantidad=(cantidad-6) where idProducto=76 

insert into detalle__venta values(76, 3, 373.75, 1121.25, 500, 3, 2 )
update producto set cantidad=(cantidad-3) where idProducto=76 

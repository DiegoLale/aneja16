
link();
agujeros = 3.3;
color("purple")link();
color("cyan") translate([-2,0,0])soporte_motor();
color("cyan") translate([19,0,0])soporte_motor();

color("blue")difference()
{
	union()
	{
		intersection()			//base principal
		{  
			cylinder(d = 120, h = 3, $fn = 50);
			cube ([100,100,10],center = true);
		}
		translate([-40, 0 , 0])cylinder(h = 11.75, d1 = 22, d2 = 19, $fn = 50);//bola
		hull()	// saliente para apoyar reductora motores
		{
			translate([9, 50, 0])cylinder(d = 2.5, h = 3, $fn = 20);
			translate([21, 50, 0])cylinder(d = 2.5, h = 3, $fn = 20);
			translate([9, -50, 0])cylinder(d = 2.5, h = 3, $fn = 20);
			translate([21, -50, 0])cylinder(d = 2.5, h = 3, $fn = 20);
		}
		
		macho(38, 38);				//generico
		macho(-38, 38);			//generico
		macho(-38, -38);			//generico
		macho(38, -38);			//generico
		macho(-10, -38);			//generico
		macho(-10, 38);			//generico
		
		
		macho(5, 38);			//motor
		macho(25, 38);			//motor
		macho(5, -38);			//motor
		macho(25, -38);		//motor
		
		macho(-5, 45/2);		//placa
		macho(40, 45/2);		//placa
		macho(-5, -45/2);		//placa
		macho(40, -45/2);		//placa
		
		// sensor delantero
		hull()
		{
			translate([-60, 14 , 0])cylinder(h = 3, d = 10, $fn = 20);
			translate([-45, 19 , 0])cylinder(h = 3, d = 20, $fn = 20);
		}
		hull()
		{
			translate([-60, -14 , 0])cylinder(h = 3, d = 10, $fn = 20);
			translate([-45, -19 , 0])cylinder(h = 3, d = 20, $fn = 20);
		}
		translate([-60, 14 , 0])cylinder(h = 4, d1 = 10,d2 = 7, $fn = 20);
		translate([-60, -14 , 0])cylinder(h = 4, d1 = 10,d2 = 7, $fn = 20);
		
		
		
	}
	union()// restas
	{
		
		hueco(38, 38, 1);			//generico
		hueco(-38, 38, 1);			//generico
		hueco(-38, -38, 1);			//generico
		hueco(38, -38, 1);			//generico
		hueco(-10, -38, 1);			//generico
		hueco(-10, 38, 1);			//generico
		
		hueco(5, 38, 1);		//motor
		hueco(25, 38, 1);		//motor
		hueco(5, -38, 1);		//motor
		hueco(25, -38, 1);		//motor
		
		hueco(-5, 45/2, 1);		//placa
		hueco(-5, -45/2, 1);	//placa
		hueco(40, 45/2, 1);		//placa
		hueco(40, -45/2, 1);	//placa
		
		hueco_sensor(-60,14);		//sensor
		hueco_sensor(-60,-14);			//sensor
		
		translate([-40, 0, 9])sphere(d = 14.6, $fn = 80);		//bola
		translate([-40, 0, 10])cube([40,3,13],center = true);	//corte base bola
		translate([-40, 0, 10])cube([3,40,13],center = true);	//corte base bola
		
		translate([-40, 0, 0])cylinder(d = 6, h = 50, $fn = 30, center = true);	//centro bola
		lineas();
		intersection()			//hueco registro placa
		{  
			translate([45/2 -5, 0 , -1])cylinder(d = 52, h = 20, $fn = 50);
			translate([45/2 -5, 0 , 0])cube ([45,45,20],center = true);
		}
	}
}

//	[]

//	*

module macho(x, y)
{
	translate([x, y , 0])cylinder(h = 4.5, d1 = 10,d2 = 10, $fn = 6);
}

module hueco_sensor(x, y)
{
	translate([x, y , 0])cylinder(h = 20, d = 3.2, center = true, $fn = 20);
}

module hueco(x, y, tuerca)
{
	translate([x, y , 0])cylinder(h = 20, d = agujeros, center = true, $fn = 20);
	if (tuerca == 1)
	{
		translate([x, y , 2])cylinder(h = 10, d = 6.5, $fn = 6);
	}
}

module lineas()
{
		hull()// registro lateral largo junto a la bola
		{
		translate([-31, 35 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-17, 35 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral largo junto a la bola
		{
		translate([-31, -35 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-17, -35 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral largo junto a la bola
		{
		translate([-45, 25 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-12, 25 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral largo junto a la bola
		{
		translate([-45, -25 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-12, -25 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral largo junto a la bola
		{
		translate([-45, 30 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-0, 30 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral largo junto a la bola
		{
		translate([-45, -30 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-0, -30 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral corto junto a la bola
		{
		translate([-45, 20 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-31, 20 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral corto junto a la bola
		{
		translate([-45, -20 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-31, -20 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral corto junto a la bola
		{
		translate([-45, 15 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-31, 15 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral corto junto a la bola
		{
		translate([-45, -15 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-31, -15 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()	// primero junto a la placa
		{
		translate([-10, 18 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-10, -18 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()	// segundo junto a la placa
		{
		translate([-15, 18 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-15, -18 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()	// tercero junto a la placa
		{
		translate([-20, 18 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-20, -18 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()	// cuarto junto a la placa
		{
		translate([-25, 18 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-25, -18 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral delantero izquierdo
		{
		translate([-33, 45 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-27, 45 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral delantero derecho
		{
		translate([-33, -45 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-27, -45 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral trasero izquierdo
		{
		translate([33, 45 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([27, 45 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral trasero derecho
		{
		translate([33, -45 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([27, -45 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral central izquierdo
		{
		translate([3, 45 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-3, 45 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro lateral central derecho
		{
		translate([3, -45 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([-3, -45 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro trasero izquierdo
		{
		translate([46, 33 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([46, 27 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro trasero derecho
		{
		translate([46, -33 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([46, -27 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
		hull()// registro trasero central
		{
		translate([46, -3 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		translate([46, 3 , -1])cylinder(d = agujeros, h = 20, $fn = 50);
		}
	}
	
module soporte_motor()
{
		module motorg12() {
	cylinder(d=8,h=20,$fn=30);
	translate([0,0,-1])intersection() {
		cylinder(d=12.2,h=16,$fn=100);
		translate([-5.1,-15,0])cube([10.2,30,16]);
	}
	}
difference()
	{
	union() {
		translate([0, -10, 0.00 ])cube([18,20,11.5]);	
		translate([9,-10,0])cylinder(h=11.5,d=8,$fn=50);
		translate([9,10,0])cylinder(h=11.5,d=8,$fn=50);
	}
	union()
	{
	translate([9,-10,-1])cylinder(h=15,d=3.5,$fn=30);
	translate([9,10,-1])cylinder(h=15,d=3.5,$fn=30);
	hull() 	{
		translate([0,0,6.5])rotate([0,90,0])motorg12();
		translate([0,0,15])rotate([0,90,0])motorg12();
			}
		}
	}
}
module link()
{
	translate([-6,-7,0])cube([47,2,0.5]);
	translate([-6,5,0])cube([47,2,0.5]);
}
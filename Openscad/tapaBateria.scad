mirror([1,0,0])difference()
{
    union()
    {
        translate([13.5,16,10])cube([6.1, 2, 3.5],center = true);
        hull()
        {
            translate([-25, 0, 0])cylinder(d = 10, h = 10,$fn = 20);
            translate([25, 0, 0])cylinder(d = 10, h = 10,$fn = 20);
            translate([-22, 15, 0])cylinder(d = 4, h = 10,$fn = 20);
            translate([22, 15, 0])cylinder(d = 4, h = 10,$fn = 20);
            translate([-20, -15, 0])cylinder(d = 3, h = 10,$fn = 20);
            translate([20, -15, 0])cylinder(d = 3, h = 10,$fn = 20);
        }
    }

union()
    {
        translate([0 ,0 ,9])cube([40,17,17],center = true);
        translate([0 ,0 ,9])rotate([0,90,0])cylinder(d = 17, h = 38, center = true);//batería redonda
        translate([-25, 0, 5.25])cylinder(d = 3.2, h = 50,$fn = 20);  //hueco tornillo
        translate([25, 0, 5.25])cylinder(d = 3.2, h = 50,$fn = 20);   //hueco tornillo
        translate([-25, 0, -1])cylinder(d = 6.5, h = 6,$fn = 6);  //hueco tuerca
        translate([25, 0, -1])cylinder(d = 6.5, h = 6,$fn = 6);   //hueco tuerca
        translate([0, -14, 10])cube([38,2,18], center = true);//placa booster
        translate([0, -11, 10])cube([34,6,18], center = true);//hueco booster
        translate([0, -10, 13])cube([34,8,18], center = true);//hueco booster
        translate([-11,-10,0.5])cylinder(d = 4,h =5, $fn =10);// hueco tornillo regulador booster
        hull()
        {
            translate([-2,-9.5,-1])cylinder(d = 3,h =5, $fn =20);
            translate([2,-9.5,-1])cylinder(d = 3,h =5, $fn =20);
        }
        
         hull()// registro lateral para cables
        {
            translate([0,-5,8])rotate([18,90,0])cylinder(d=2,h = 40, $fn = 50);
            translate([0,-5,11])rotate([18,90,0])cylinder(d=2,h = 40, $fn = 50);
        }
        mirror([1, 0, 0])hull()// registro lateral para cables
        {
            translate([0,-5,8])rotate([18,90,0])cylinder(d=2,h = 40, $fn = 50);
            translate([0,-5,11])rotate([18,90,0])cylinder(d=2,h = 40, $fn = 50);
        }
        translate([8,6,10])cube([10,10,10],center = true);
        translate([-10, 14, 10])cargador();
        //translate([13.5,14,7])interruptor();
    }
}

//cargador(); 

module cargador()
{
    cube([26.5, 1.5,17.5], center = true); // placa cargador
    translate([-13, 2, 0]) cube([10,3.5,8],center = true); //usb cargador
    translate([11.25, -5, 0])cube([4,10,17],center = true);//salida cables
    translate([3.25, 1, 0])cube([20,1.7,17],center = true);//hueco componentes

    
}


//interruptor();
module interruptor()
{
    translate([0,0,1.5])cube([15, 0.7, 7.7], center = true);//plancha
    translate([0,-5,1])cube([10.75, 10.7, 8], center = true);//cuerpo
    translate([0,5,2])cube([6.5, 10,7],center = true);// accionador
}

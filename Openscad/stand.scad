
        
difference()
{
    union()
    {        
        translate([-40, 0, 0])cylinder(d1 = 20,d2 = 19.2, h = 5, $fn = 30);
        hull()
        {
        translate([20, 25, 0])cylinder(d1 = 6,d2 = 4,h = 14.5, $fn = 50);
        translate([20, -25, 0])cylinder(d1 = 6,d2 = 4,h = 14.5, $fn = 50);
        }
            hull()
        {
            translate([-40, 0, 0])cylinder(d1 = 20,d2 = 19.5, h = 3, $fn = 30); // base para bola
            translate([20, -25, 0])cylinder(d1 = 6,d2 = 5.5, h = 3, $fn = 30); //
            translate([20, 25, 0])cylinder(d1 = 6,d2 = 5.5, h = 3, $fn = 30); // 
        }
        
        translate([20, 0 , 8.5])cube ([4,44,17],center = true);
    }
    union()
    {    
            hueco();
            
            translate([20, 0, 17])resize([35,35,24])sphere(d = 14, $fn = 100);
            translate([-40, 0, 15/2])sphere(d = 14, $fn = 80);		//bola
            
        
    }
}
module hueco()
{difference()
{
    hull()
    {
    translate([-30, 0, 0])cylinder(d = 15, h = 20, $fn = 40, center = true);
    translate([15, -20, 0])cylinder(d = 2, h = 20, $fn = 40, center = true);
    translate([15, 20, 0])cylinder(d = 2, h = 20, $fn = 40, center = true);
    }
    union()
    {
    translate([-40, 0, 0])cylinder(d1 = 20,d2 = 19, h = 12.1, $fn = 30, center = true); // base para bola
    
    }
    }
}
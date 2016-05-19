nombre = "LaleBots"; // cambiar el nombre entre comillas.
diam_base = 7;

difference()
{
    union()
    {
        translate( [14,-2.5,0] )cylinder(d = 10, h = 6,$fn = 50);
        translate( [-14,-2.5,0] )cylinder(d = 10, h = 6,$fn = 50);
        hull()
        {
            translate( [23,-12,0] ) cylinder( d = diam_base, h = 1, $fn = 30 );
            translate( [-23,-12,0] ) cylinder( d = diam_base, h = 1, $fn = 30 );
            translate( [23,-5,0] ) cylinder( d = diam_base, h = 3, $fn = 30 );
            translate( [-23,-5,0] ) cylinder( d = diam_base, h = 3, $fn = 30 );
            translate( [0,-11,4] )rotate( [45, 0, 0] )base();
            translate( [14,-2.5,0] )cylinder(d = 10, h = 3,$fn = 50);
            translate( [-14,-2.5,0] )cylinder(d = 10, h = 3,$fn = 50);
        }
        translate( [0,-11,4] )rotate( [45, 0, 0] )letras();
    }
    union()
    {
        translate( [14,-2.5,0] )cylinder(d = 3.2, h = 50, center = true, $fn = 50);
        translate( [-14,-2.5,0] )cylinder(d = 3.2, h = 50, center = true, $fn = 50);
        translate( [14,-2.5,5] )cylinder(d = 10.1, h = 6,$fn = 50);
        translate( [-14,-2.5,5] )cylinder(d = 10.1, h = 6,$fn = 50);
        
    }
}

module base()
{
hull()
{
resize([50,10,1])linear_extrude(height=2, convexity=4)
                text(text = nombre, 
                     size=5,
                     font="Bitstream Vera Sans",
                     halign="center",
                     valign="center");
}
}
module letras()
{
resize([49,9,2])linear_extrude(height=5, convexity=4)
                text(text =nombre, 
                     size=5,
                     font="Bitstream Vera Sans",
                     halign="center",
                     valign="center");
}
nx=6;
ny=6;

Lx=1;
Ly=1;
hx=Lx/nx;
hy=Ly/ny;

//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {Lx, 0, 0, 1.0};
//+
Point(3) = {Lx, Ly, 0, 1.0};
//+
Point(4) = {0, Ly, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 1};
//+
Curve Loop(1) = {1, 2, 3, 4};
//+
Plane Surface(1) = {1};
//+
Surface Loop(1) = {1};
//+
Volume(1) = {1};
//+
Transfinite Curve {1, 3} = Lx/hx+1 Using Progression 1;
//+
Transfinite Curve {2, 4} = Ly/hy+1 Using Progression 1;
//+
Transfinite Surface{1};
//+
Recombine Surface{1};
//+
Transfinite Volume{1};


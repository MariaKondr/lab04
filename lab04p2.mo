model lab04p2
  Real x(start = 0.6);
  Real y(start = -0.6);
equation
  der(x)=y;
  der(y)=-8.7*der(x)-8.7*x;
end lab04p2;

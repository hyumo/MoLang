within MoLang.Functions.Inlines;
function SmoothAbs_d
  "Smooth abs with \"LateInline = true\" but with explict der"
  input Real x;
  input Real alpha=1e-10;
  output Real y;
algorithm
  y := sqrt(x^2 + alpha);
  annotation (LateInline=true,
              derivative=SmoothAbs_d_der);
end SmoothAbs_d;

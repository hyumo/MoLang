within MoLang.Functions.Inlines;
function SmoothAbs_c "Smooth abs with \"LateInline = true\""
  input Real x;
  input Real alpha=1e-10;
  output Real val;
algorithm
  val := sqrt(x^2 + alpha);
  annotation (LateInline=true);
end SmoothAbs_c;

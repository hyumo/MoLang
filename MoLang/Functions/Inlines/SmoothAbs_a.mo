within MoLang.Functions.Inlines;
function SmoothAbs_a "Smooth abs without any annotation"
  input Real x;
  input Real alpha=1e-10;
  output Real val;
algorithm
  val := sqrt(x^2 + alpha);
end SmoothAbs_a;

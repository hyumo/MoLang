within MoLang.Functions.Inlines;
function SmoothAbs_b "Smooth abs with \"Inline = true\""
  input Real x;
  input Real alpha=1e-10;
  output Real val;
  annotation (Inline=true);
algorithm
  val := sqrt(x^2 + alpha);
end SmoothAbs_b;

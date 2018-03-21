within MoLang.Functions.Inlines;
function SmoothAbs_d_der "Explicit first order derivative"
  input Real x;
  input Real alpha=1e-10;
  input Real x_der;
  input Real alpha_der;
  output Real der_y;
algorithm
  // alpha_der should always be zero because it never changes, what is the correct
   // way of specifying alpha_der is zero? maybe explicitly set alpha_der = 0.0
  der_y := 0.5*x*(x*x + alpha)^(-0.5)*(2*x_der + alpha_der);
  annotation (LateInline=true);
end SmoothAbs_d_der;

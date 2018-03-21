within MoLang.Blocks.Inlines;
block SmoothAbs_b
  extends Modelica.Blocks.Interfaces.SISO;
equation
  y =Functions.Inlines.SmoothAbs_b(u);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end SmoothAbs_b;

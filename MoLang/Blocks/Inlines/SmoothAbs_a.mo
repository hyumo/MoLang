within MoLang.Blocks.Inlines;
block SmoothAbs_a
  extends Modelica.Blocks.Interfaces.SISO;
equation
  y = Functions.Inlines.SmoothAbs_a(u);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end SmoothAbs_a;

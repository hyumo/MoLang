within MoLang.Blocks.Inlines;
block SmoothAbs_c
  extends Modelica.Blocks.Interfaces.SISO;
equation
  y =Functions.Inlines.SmoothAbs_c(u);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end SmoothAbs_c;

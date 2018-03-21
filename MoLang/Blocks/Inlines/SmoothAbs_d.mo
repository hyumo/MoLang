within MoLang.Blocks.Inlines;
block SmoothAbs_d
  extends Modelica.Blocks.Interfaces.SISO;
equation
  y = Functions.Inlines.SmoothAbs_d(u);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end SmoothAbs_d;

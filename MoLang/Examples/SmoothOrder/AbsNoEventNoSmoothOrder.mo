within MoLang.Examples.SmoothOrder;
model AbsNoEventNoSmoothOrder
  extends Modelica.Icons.Example;
  Modelica.Blocks.Sources.Sine sine(freqHz=10)
    annotation (Placement(transformation(extent={{-52,-10},{-32,10}})));
  Modelica.Blocks.Math.Abs abs1
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Der der1
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
equation
  connect(sine.y, abs1.u)
    annotation (Line(points={{-31,0},{-12,0}}, color={0,0,127}));
  connect(abs1.y, der1.u)
    annotation (Line(points={{11,0},{28,0}}, color={0,0,127}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    Documentation(info="<html>
<ul>
<li>Warnings from DYMOLA are generated</li>
<li>No events but bad approximation of event location</li>
</ul>
</html>"));
end AbsNoEventNoSmoothOrder;

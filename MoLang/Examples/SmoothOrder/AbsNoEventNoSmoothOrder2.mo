within MoLang.Examples.SmoothOrder;
model AbsNoEventNoSmoothOrder2
  extends Modelica.Icons.Example;
  Modelica.Blocks.Sources.Sine sine(freqHz=10)
    annotation (Placement(transformation(extent={{-72,-10},{-52,10}})));
  Modelica.Blocks.Math.Abs abs1
    annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
  Modelica.Blocks.Continuous.Der der1
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Der der2
    annotation (Placement(transformation(extent={{20,-10},{40,10}})));
  Modelica.Blocks.Continuous.Der der3
    annotation (Placement(transformation(extent={{50,-10},{70,10}})));
equation
  connect(sine.y, abs1.u)
    annotation (Line(points={{-51,0},{-42,0}}, color={0,0,127}));
  connect(abs1.y, der1.u)
    annotation (Line(points={{-19,0},{-12,0}}, color={0,0,127}));
  connect(der1.y, der2.u)
    annotation (Line(points={{11,0},{18,0}}, color={0,0,127}));
  connect(der2.y, der3.u)
    annotation (Line(points={{41,0},{48,0}}, color={0,0,127}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    Documentation(info="<html>
<ul>
<li>Warnings from DYMOLA are generated</li>
<li>It seems that noEvent is infinite order differenciable even though warnings are generated</li>
</ul>
</html>"));
end AbsNoEventNoSmoothOrder2;

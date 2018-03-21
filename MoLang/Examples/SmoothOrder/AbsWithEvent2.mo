within MoLang.Examples.SmoothOrder;
model AbsWithEvent2
  extends Modelica.Icons.Example;
  Modelica.Blocks.Sources.Sine sine(freqHz=10)
    annotation (Placement(transformation(extent={{-72,-10},{-52,10}})));
  Modelica.Blocks.Math.Abs abs1(generateEvent=true)
    annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
  Modelica.Blocks.Continuous.Der der1
    annotation (Placement(transformation(extent={{10,-10},{30,10}})));
  Modelica.Blocks.Continuous.Der der2
    annotation (Placement(transformation(extent={{50,-10},{70,10}})));
equation
  connect(sine.y, abs1.u)
    annotation (Line(points={{-51,0},{-32,0}}, color={0,0,127}));
  connect(abs1.y, der1.u)
    annotation (Line(points={{-9,0},{8,0}}, color={0,0,127}));
  connect(der1.y, der2.u)
    annotation (Line(points={{31,0},{48,0}}, color={0,0,127}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false), graphics={Text(
          extent={{-34,22},{30,34}},
          lineColor={28,108,200},
          textString="This will FAIL")}),
    Documentation(info="<html>
<ul>
<li>Events cannot be differentiated twice</li>
</ul>
</html>"));
end AbsWithEvent2;

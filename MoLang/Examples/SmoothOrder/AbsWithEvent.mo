within MoLang.Examples.SmoothOrder;
model AbsWithEvent
  extends Modelica.Icons.Example;
  Modelica.Blocks.Sources.Sine sine(freqHz=10)
    annotation (Placement(transformation(extent={{-52,-10},{-32,10}})));
  Modelica.Blocks.Math.Abs abs1(generateEvent=true)
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
    Diagram(coordinateSystem(preserveAspectRatio=false), graphics={Text(
          extent={{-14,22},{50,34}},
          lineColor={28,108,200},
          textString="Events are generated")}),
    Documentation(info="<html>
<ul>
<li>It is still 1st order differenciable for events</li>
</ul>
</html>"));
end AbsWithEvent;

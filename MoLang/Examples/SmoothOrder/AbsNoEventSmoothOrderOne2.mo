within MoLang.Examples.SmoothOrder;
model AbsNoEventSmoothOrderOne2
  extends Modelica.Icons.Example;
  Modelica.Blocks.Sources.Sine sine(freqHz=10)
    annotation (Placement(transformation(extent={{-42,-10},{-22,10}})));
  Blocks.SmoothOrder.AbsSmoothOrderOne abs1
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Continuous.Der der1
    annotation (Placement(transformation(extent={{20,-10},{40,10}})));
  Modelica.Blocks.Continuous.Der der2
    annotation (Placement(transformation(extent={{50,-10},{70,10}})));
equation
  connect(sine.y, abs1.u)
    annotation (Line(points={{-21,0},{-12,0}}, color={0,0,127}));
  connect(abs1.y, der1.u)
    annotation (Line(points={{11,0},{18,0}}, color={0,0,127}));
  connect(der1.y, der2.u)
    annotation (Line(points={{41,0},{48,0}}, color={0,0,127}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    Documentation(info="<html>
<ul>
<li>no warning generated from DYMOLA </li>
<li>Smooth order 1 could be differenciated 2 times without warnings, you can tell it from the mof file</li>
</ul>
<h4>*.mof file</h4>
<p>sine.y := sine.offset+(if time &lt; sine.startTime then 0 else sine.amplitude*sin</p>
<p><span style=\"font-family: Courier New;\">(6.283185307179586*(sine.freqHz*(time-sine.startTime))+sine.phase));</span></p>
<p><span style=\"font-family: Courier New;\">der1.u := smooth(1, (if noEvent(sine.y &gt;= 0) then sine.y else -sine.y));</span></p>
<p><span style=\"font-family: Courier New;\">der(sine.y) := (if time &lt; sine.startTime then 0 else 6.283185307179586*(</span></p>
<p><span style=\"font-family: Courier New;\">sine.amplitude*(sine.freqHz*cos(6.283185307179586*(sine.freqHz*(time-</span></p>
<p><span style=\"font-family: Courier New;\">sine.startTime))+sine.phase))));</span></p>
<p><span style=\"font-family: Courier New;\">der2.u := smooth(0, (if noEvent(sine.y &gt;= 0) then der(sine.y) else -</span></p>
<p><span style=\"font-family: Courier New;\">der(sine.y)));</span></p>
<p><span style=\"font-family: Courier New;\">der(sine.y, 2) := (if time &lt; sine.startTime then 0 else (-39.47841760435743)*(</span></p>
<p><span style=\"font-family: Courier New;\">sine.amplitude*(sine.freqHz*(sine.freqHz*sin(6.283185307179586*(sine.freqHz*</span></p>
<p><span style=\"font-family: Courier New;\">(time-sine.startTime))+sine.phase)))));</span></p>
<p><span style=\"font-family: Courier New;\">der(der2.u) := (if noEvent(sine.y &gt;= 0) then der(sine.y, 2) else -</span></p>
<p><span style=\"font-family: Courier New;\">der(sine.y, 2));</span></p>
</html>"));
end AbsNoEventSmoothOrderOne2;

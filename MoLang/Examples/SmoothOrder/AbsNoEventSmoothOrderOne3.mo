within MoLang.Examples.SmoothOrder;
model AbsNoEventSmoothOrderOne3
  extends Modelica.Icons.Example;
  Modelica.Blocks.Sources.Sine sine(freqHz=10)
    annotation (Placement(transformation(extent={{-72,-10},{-52,10}})));
  Blocks.SmoothOrder.AbsSmoothOrderOne abs1
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
<li>We have warnings generated from DYMOLA which is expected</li>
<li>Smooth order 1 could be differenciated 2 times without warnings, you can tell it from the mof file</li>
<li>When differenciated 3rd time, warnings appeared</li>
</ul>
<h4>*.mof file</h4>
<p>sine.y := sine.offset+(if time &lt; sine.startTime then 0 else sine.amplitude*sin</p>
<p>(6.283185307179586*(sine.freqHz*(time-sine.startTime))+sine.phase));</p>
<p>der1.u := smooth(1, (if noEvent(sine.y &gt;= 0) then sine.y else -sine.y));</p>
<p>der(sine.y) := (if time &lt; sine.startTime then 0 else 6.283185307179586*(</p>
<p>sine.amplitude*(sine.freqHz*cos(6.283185307179586*(sine.freqHz*(time-</p>
<p>sine.startTime))+sine.phase))));</p>
<p>der2.u := smooth(0, (if noEvent(sine.y &gt;= 0) then der(sine.y) else -</p>
<p>der(sine.y)));</p>
<p>der(sine.y, 2) := (if time &lt; sine.startTime then 0 else (-39.47841760435743)*(</p>
<p>sine.amplitude*(sine.freqHz*(sine.freqHz*sin(6.283185307179586*(sine.freqHz*</p>
<p>(time-sine.startTime))+sine.phase)))));</p>
<p>der3.u := (if noEvent(sine.y &gt;= 0) then der(sine.y, 2) else -der(sine.y, 2));</p>
<p>der(sine.y, 3) := (if time &lt; sine.startTime then 0 else (-248.05021344239853)*</p>
<p>(sine.amplitude*(sine.freqHz*(sine.freqHz*(sine.freqHz*cos(6.283185307179586</p>
<p>*(sine.freqHz*(time-sine.startTime))+sine.phase))))));</p>
<p>der(der3.u) := (if noEvent(sine.y &gt;= 0) then der(sine.y, 3) else -</p>
<p>der(sine.y, 3));</p>
</html>"));
end AbsNoEventSmoothOrderOne3;

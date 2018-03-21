within MoLang.Examples.Inlines;
model InlinesNoDer
  extends Modelica.Icons.Example;
  Blocks.Inlines.SmoothAbs_a smoothAbs_a
    annotation (Placement(transformation(extent={{-10,20},{10,40}})));
  Blocks.Inlines.SmoothAbs_b smoothAbs_b
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Blocks.Inlines.SmoothAbs_c smoothAbs_c
    annotation (Placement(transformation(extent={{-10,-40},{10,-20}})));
  Modelica.Blocks.Sources.Sine sine
    annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
equation
  connect(sine.y, smoothAbs_a.u) annotation (Line(points={{-59,0},{-36,0},{-36,
          30},{-12,30}}, color={0,0,127}));
  connect(sine.y, smoothAbs_b.u)
    annotation (Line(points={{-59,0},{-12,0}}, color={0,0,127}));
  connect(sine.y, smoothAbs_c.u) annotation (Line(points={{-59,0},{-36,0},{-36,
          -30},{-12,-30}}, color={0,0,127}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    Documentation(info="<html>
<h4>*.mof file</h4>
<p>smoothAbs_a.u := sine.offset+(if time &lt; sine.startTime then 0 else </p>
<p>sine.amplitude*sin(6.283185307179586*(sine.freqHz*(time-sine.startTime))+</p>
<p>sine.phase));</p>
<p>smoothAbs_a.y := sqrt(1E-10+smoothAbs_a.u^2);</p>
<p>smoothAbs_b.y := sqrt(1E-10+smoothAbs_a.u^2);</p>
<p>smoothAbs_c.y := MoLang.Functions.Inlines.SmoothAbs_c(smoothAbs_a.u, 1E-10);</p>
<h4>*.c file</h4>
<p>smoothAbsx_0a_u = sine_offset+(IF LessTime(sine_startTime, 0) THEN 0 ELSE </p>
<p>  sine_amplitude*sin(6.283185307179586*sine_freqHz*(DYNTime-sine_startTime)+</p>
<p>  sine_phase));</p>
<p>smoothAbsx_0a_y = sqrtGuarded(1E-10+sqr(smoothAbsx_0a_u),&quot;1E-10+smoothAbs_a.u^2&quot;);</p>
<p>smoothAbsx_0b_y = smoothAbsx_0a_y;</p>
<p>smoothAbsx_0c_y = (PushModelContext(1,&quot;MoLang.Functions.Inlines.SmoothAbs_c(smoothAbs_a.u, 1E-10)&quot;)</p>
<p>  sqrtGuarded(1E-10+sqr(smoothAbsx_0a_u),&quot;1E-10+smoothAbs_a.u^2&quot;));</p>
</html>"));
end InlinesNoDer;

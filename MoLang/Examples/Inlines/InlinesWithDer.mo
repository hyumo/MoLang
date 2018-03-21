within MoLang.Examples.Inlines;
model InlinesWithDer
  extends Modelica.Icons.Example;
  Blocks.Inlines.SmoothAbs_a smoothAbs_a
    annotation (Placement(transformation(extent={{-10,20},{10,40}})));
  Blocks.Inlines.SmoothAbs_b smoothAbs_b
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Blocks.Inlines.SmoothAbs_c smoothAbs_c
    annotation (Placement(transformation(extent={{-10,-40},{10,-20}})));
  Modelica.Blocks.Sources.Sine sine
    annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
  Modelica.Blocks.Continuous.Der der1
    annotation (Placement(transformation(extent={{30,20},{50,40}})));
  Modelica.Blocks.Continuous.Der der2
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
  Blocks.Inlines.SmoothAbs_d smoothAbs_d
    annotation (Placement(transformation(extent={{-10,-70},{10,-50}})));
  Modelica.Blocks.Continuous.Der der3
    annotation (Placement(transformation(extent={{30,-70},{50,-50}})));
equation
  connect(sine.y, smoothAbs_a.u) annotation (Line(points={{-59,0},{-36,0},{-36,
          30},{-12,30}}, color={0,0,127}));
  connect(sine.y, smoothAbs_b.u)
    annotation (Line(points={{-59,0},{-12,0}}, color={0,0,127}));
  connect(sine.y, smoothAbs_c.u) annotation (Line(points={{-59,0},{-36,0},{-36,
          -30},{-12,-30}}, color={0,0,127}));
  connect(smoothAbs_a.y, der1.u)
    annotation (Line(points={{11,30},{28,30}}, color={0,0,127}));
  connect(smoothAbs_b.y, der2.u)
    annotation (Line(points={{11,0},{28,0}}, color={0,0,127}));
  connect(smoothAbs_d.u, smoothAbs_c.u) annotation (Line(points={{-12,-60},{-36,
          -60},{-36,-30},{-12,-30}}, color={0,0,127}));
  connect(smoothAbs_d.y, der3.u)
    annotation (Line(points={{11,-60},{28,-60}}, color={0,0,127}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false), graphics={Rectangle(
            extent={{30,-20},{50,-40}}, lineColor={28,108,200}), Text(
          extent={{36,-28},{44,-32}},
          lineColor={28,108,200},
          textString="FAILED
Translation")}),
    Documentation(info="<html>
<h4>*.mof file</h4>
<p>smoothAbs_a.u := sine.offset+(if time &lt; sine.startTime then 0 else </p>
<p>sine.amplitude*sin(6.283185307179586*(sine.freqHz*(time-sine.startTime))+</p>
<p>sine.phase));</p>
<p>der1.u := sqrt(1E-10+smoothAbs_a.u^2);</p>
<p>der2.u := sqrt(1E-10+smoothAbs_a.u^2);</p>
<p>der3.u := MoLang.Functions.Inlines.SmoothAbs_d(smoothAbs_a.u, 1E-10);</p>
<p>der(smoothAbs_a.u) := (if time &lt; sine.startTime then 0 else 6.283185307179586*</p>
<p>(sine.amplitude*(sine.freqHz*cos(6.283185307179586*(sine.freqHz*(time-</p>
<p>sine.startTime))+sine.phase))));</p>
<p>der(der1.u) := smoothAbs_a.u*der(smoothAbs_a.u)/sqrt(1E-10+smoothAbs_a.u^2);</p>
<p>der(der2.u) := smoothAbs_a.u*der(smoothAbs_a.u)/sqrt(1E-10+smoothAbs_a.u^2);</p>
<p>der(der3.u) := MoLang.Functions.Inlines.SmoothAbs_d_der(smoothAbs_a.u, 1E-10, </p>
<p>der(smoothAbs_a.u), 0.0);</p>
<p>smoothAbs_c.y := MoLang.Functions.Inlines.SmoothAbs_c(smoothAbs_a.u, 1E-10);</p>
</html>"));
end InlinesWithDer;

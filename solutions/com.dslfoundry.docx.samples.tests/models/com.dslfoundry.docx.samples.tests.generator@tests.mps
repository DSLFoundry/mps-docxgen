<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fa45aa07-b0a4-4936-828e-8aa9491f3ff0(com.dslfoundry.docx.samples.tests.generator@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="5" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="7850b982-0ec2-45d4-8e0f-ee23786dc16a" name="com.dslfoundry.docx" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="7850b982-0ec2-45d4-8e0f-ee23786dc16a" name="com.dslfoundry.docx">
      <concept id="4519869382167076071" name="com.dslfoundry.docx.structure.DocxDocument" flags="ng" index="15w_6A">
        <child id="3303947902673374801" name="content" index="3ETVld" />
      </concept>
      <concept id="5121302693901052861" name="com.dslfoundry.docx.structure.DocxParagraphCollection" flags="ng" index="3maUSn">
        <child id="5121302693901052865" name="paragraphs" index="3maUTF" />
      </concept>
      <concept id="3303947902673580895" name="com.dslfoundry.docx.structure.DocxText" flags="ng" index="3EA8x3">
        <property id="3303947902673580902" name="value" index="3EA8xU" />
      </concept>
      <concept id="3303947902673580888" name="com.dslfoundry.docx.structure.DocxRun" flags="ng" index="3EA8x4">
        <child id="3303947902673580905" name="texts" index="3EA8xP" />
        <child id="3303947902673878933" name="props" index="3EB0i9" />
      </concept>
      <concept id="3303947902673878908" name="com.dslfoundry.docx.structure.DocxRunProps" flags="ng" index="3EB0hw">
        <property id="3303947902673878924" name="color" index="3EB0ig" />
      </concept>
      <concept id="3303947902673374804" name="com.dslfoundry.docx.structure.DocxParagraph" flags="ng" index="3ETVl8">
        <property id="3303947902673790729" name="style" index="3EBlKl" />
        <child id="3303947902673580892" name="runs" index="3EA8x0" />
      </concept>
    </language>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
      <concept id="1216913645126" name="jetbrains.mps.lang.test.structure.NodesTestCase" flags="lg" index="1lH9Xt">
        <child id="1217501822150" name="nodesToCheck" index="1SKRRt" />
        <child id="1217501895093" name="testMethods" index="1SL9yI" />
      </concept>
      <concept id="1216989428737" name="jetbrains.mps.lang.test.structure.TestNode" flags="ng" index="1qefOq">
        <child id="1216989461394" name="nodeToCheck" index="1qenE9" />
      </concept>
      <concept id="1210673684636" name="jetbrains.mps.lang.test.structure.TestNodeAnnotation" flags="ng" index="3xLA65" />
      <concept id="1225978065297" name="jetbrains.mps.lang.test.structure.SimpleNodeTest" flags="ng" index="1LZb2c" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1lH9Xt" id="2QPHU78pf_4">
    <property role="TrG5h" value="HelloWorld" />
    <node concept="1LZb2c" id="2QPHU78pf_p" role="1SL9yI">
      <property role="TrG5h" value="run" />
      <node concept="3cqZAl" id="2QPHU78pf_q" role="3clF45" />
      <node concept="3clFbS" id="2QPHU78pf_u" role="3clF47" />
    </node>
    <node concept="1qefOq" id="2QPHU78pf_5" role="1SKRRt">
      <node concept="15w_6A" id="2QPHU78pf_7" role="1qenE9">
        <property role="TrG5h" value="HelloWorld" />
        <node concept="3maUSn" id="2QPHU78pf_8" role="3ETVld">
          <node concept="3ETVl8" id="2QPHU78pf_b" role="3maUTF">
            <property role="3EBlKl" value="Normal" />
            <node concept="3EA8x4" id="2QPHU78pf_d" role="3EA8x0">
              <node concept="3EB0hw" id="2QPHU78pf_e" role="3EB0i9">
                <property role="3EB0ig" value="black" />
              </node>
              <node concept="3EA8x3" id="2QPHU78pf_h" role="3EA8xP">
                <property role="3EA8xU" value="hello, world" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3xLA65" id="2QPHU78pfSl" role="lGtFl">
          <property role="TrG5h" value="input" />
        </node>
      </node>
    </node>
  </node>
  <node concept="2XOHcx" id="1LJipm$5syH">
    <property role="2XOHcw" value="${SDC_xSBD}" />
  </node>
</model>


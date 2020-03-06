<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a52d91cb-cfb8-4361-a0ca-6a48885bcccb(com.dslfoundry.docx.samples.templates)">
  <persistence version="9" />
  <languages>
    <use id="7850b982-0ec2-45d4-8e0f-ee23786dc16a" name="com.dslfoundry.docx" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="7850b982-0ec2-45d4-8e0f-ee23786dc16a" name="com.dslfoundry.docx">
      <concept id="4519869382167076071" name="com.dslfoundry.docx.structure.DocxDocument" flags="ng" index="15w_6A">
        <child id="3293740607968494479" name="template" index="3_y7gI" />
        <child id="3303947902673374801" name="content" index="3ETVld" />
      </concept>
      <concept id="5121302693901052861" name="com.dslfoundry.docx.structure.DocxParagraphCollection" flags="ng" index="3maUSn">
        <child id="5121302693901052865" name="paragraphs" index="3maUTF" />
      </concept>
      <concept id="3293740607968494476" name="com.dslfoundry.docx.structure.DocxTemplate" flags="ng" index="3_y7gH" />
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="15w_6A" id="4uRoABxEgfi">
    <property role="TrG5h" value="HelloWorld_WithTemplate" />
    <node concept="3maUSn" id="4uRoABxEgfj" role="3ETVld">
      <node concept="3ETVl8" id="4uRoABxEgfk" role="3maUTF">
        <property role="3EBlKl" value="Normal" />
        <node concept="3EA8x4" id="4uRoABxEgfm" role="3EA8x0">
          <node concept="3EB0hw" id="4uRoABxEgfn" role="3EB0i9">
            <property role="3EB0ig" value="black" />
          </node>
          <node concept="3EA8x3" id="4uRoABxEgfq" role="3EA8xP">
            <property role="3EA8xU" value="hello, world" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3_y7gH" id="2QPHU78mf6g" role="3_y7gI">
      <property role="TrG5h" value="Normal-template" />
    </node>
  </node>
  <node concept="15w_6A" id="2QPHU78p5co">
    <property role="TrG5h" value="HelloWorld_NoTemplate" />
    <node concept="3maUSn" id="2QPHU78p5cp" role="3ETVld">
      <node concept="3ETVl8" id="2QPHU78p5cq" role="3maUTF">
        <property role="3EBlKl" value="Normal" />
        <node concept="3EA8x4" id="2QPHU78p5cr" role="3EA8x0">
          <node concept="3EB0hw" id="2QPHU78p5cs" role="3EB0i9">
            <property role="3EB0ig" value="black" />
          </node>
          <node concept="3EA8x3" id="2QPHU78p5ct" role="3EA8xP">
            <property role="3EA8xU" value="hello, world" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="15w_6A" id="2QPHU78uYvn">
    <property role="TrG5h" value="HelloWorld_TemplateNotFound" />
    <node concept="3maUSn" id="2QPHU78uYvo" role="3ETVld">
      <node concept="3ETVl8" id="2QPHU78uYvp" role="3maUTF">
        <property role="3EBlKl" value="Normal" />
        <node concept="3EA8x4" id="2QPHU78uYvq" role="3EA8x0">
          <node concept="3EB0hw" id="2QPHU78uYvr" role="3EB0i9">
            <property role="3EB0ig" value="black" />
          </node>
          <node concept="3EA8x3" id="2QPHU78uYvs" role="3EA8xP">
            <property role="3EA8xU" value="hello, world" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3_y7gH" id="2QPHU78uYvt" role="3_y7gI">
      <property role="TrG5h" value="Normal-template-not-found" />
    </node>
  </node>
</model>


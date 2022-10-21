<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:217d64e5-4b6b-4c99-8661-37b1cbcb5c80(com.dslfoundry.docx.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="hgfn" ref="r:9742a092-2a39-4a23-b1f7-4e446da4d386(com.dslfoundry.docx.structure)" />
    <import index="5uyg" ref="r:a1a3f523-33aa-40b4-8b0b-ee4063f62c2f(com.dslfoundry.docx.behavior)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1219952072943" name="jetbrains.mps.lang.generator.structure.DropRootRule" flags="lg" index="aNPBN">
        <reference id="1219952338328" name="applicableConcept" index="aOQi4" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1219952894531" name="dropRootRule" index="aQYdv" />
        <child id="1195502100749" name="preMappingScript" index="1puA0r" />
      </concept>
      <concept id="1195499912406" name="jetbrains.mps.lang.generator.structure.MappingScript" flags="lg" index="1pmfR0">
        <property id="1195595592106" name="scriptKind" index="1v3f2W" />
        <child id="1195501105008" name="codeBlock" index="1pqMTA" />
      </concept>
      <concept id="1195500722856" name="jetbrains.mps.lang.generator.structure.MappingScript_CodeBlock" flags="in" index="1pplIY" />
      <concept id="1195502151594" name="jetbrains.mps.lang.generator.structure.MappingScriptReference" flags="lg" index="1puMqW">
        <reference id="1195502167610" name="mappingScript" index="1puQsG" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <property id="890797661671409019" name="forceMultiLine" index="3yWfEV" />
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1217004708011" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetInputModel" flags="nn" index="1r8y6K" />
      <concept id="1217026863835" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOriginalInputModel" flags="nn" index="1st3f0" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7">
        <child id="1758937410080001570" name="conceptArgument" index="1dBWTz" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
    </language>
  </registry>
  <node concept="bUwia" id="3UTNk5VeTNh">
    <property role="TrG5h" value="main" />
    <node concept="1puMqW" id="4uRoABxEveE" role="1puA0r">
      <ref role="1puQsG" node="4uRoABxEl00" resolve="WriteDocxFiles" />
    </node>
    <node concept="aNPBN" id="4uRoABxElTG" role="aQYdv">
      <ref role="aOQi4" to="hgfn:3UTNk5VeTNB" resolve="DocxDocument" />
    </node>
  </node>
  <node concept="1pmfR0" id="4uRoABxEl00">
    <property role="TrG5h" value="WriteDocxFiles" />
    <property role="1v3f2W" value="hpv1Zf2/pre_processing" />
    <node concept="1pplIY" id="4uRoABxEl01" role="1pqMTA">
      <node concept="3clFbS" id="4uRoABxEl02" role="2VODD2">
        <node concept="2xdQw9" id="3UTNk5Vg9Ml" role="3cqZAp">
          <property role="2xdLsb" value="h1akgim/info" />
          <node concept="Xl_RD" id="3UTNk5Vg9Mn" role="9lYJi">
            <property role="Xl_RC" value="Generator:WriteDocxFiles BEGIN" />
          </node>
        </node>
        <node concept="3clFbH" id="2Othy1h7Qwy" role="3cqZAp" />
        <node concept="3SKdUt" id="2QPHU78vlv5" role="3cqZAp">
          <node concept="1PaTwC" id="7L$ZRJzotWR" role="1aUNEU">
            <node concept="3oM_SD" id="7L$ZRJzotWS" role="1PaTwD">
              <property role="3oM_SC" value="We" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotWT" role="1PaTwD">
              <property role="3oM_SC" value="pass" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotWU" role="1PaTwD">
              <property role="3oM_SC" value="originalModel" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotWV" role="1PaTwD">
              <property role="3oM_SC" value="because" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotWW" role="1PaTwD">
              <property role="3oM_SC" value="we" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotWX" role="1PaTwD">
              <property role="3oM_SC" value="derive" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotWY" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotWZ" role="1PaTwD">
              <property role="3oM_SC" value="paths" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotX0" role="1PaTwD">
              <property role="3oM_SC" value="relative" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotX1" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotX2" role="1PaTwD">
              <property role="3oM_SC" value="the" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotX3" role="1PaTwD">
              <property role="3oM_SC" value="original" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotX4" role="1PaTwD">
              <property role="3oM_SC" value="solution." />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78vpkp" role="3cqZAp">
          <node concept="1PaTwC" id="7L$ZRJzotX5" role="1aUNEU">
            <node concept="3oM_SD" id="7L$ZRJzotX6" role="1PaTwD">
              <property role="3oM_SC" value="This" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotX7" role="1PaTwD">
              <property role="3oM_SC" value="is" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotX8" role="1PaTwD">
              <property role="3oM_SC" value="relevant" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotX9" role="1PaTwD">
              <property role="3oM_SC" value="in" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXa" role="1PaTwD">
              <property role="3oM_SC" value="case" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXb" role="1PaTwD">
              <property role="3oM_SC" value="of" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXc" role="1PaTwD">
              <property role="3oM_SC" value="'cascaded" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXd" role="1PaTwD">
              <property role="3oM_SC" value="generators':" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78vu7B" role="3cqZAp">
          <node concept="1PaTwC" id="7L$ZRJzotXe" role="1aUNEU">
            <node concept="3oM_SD" id="7L$ZRJzotXf" role="1PaTwD">
              <property role="3oM_SC" value="when" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXg" role="1PaTwD">
              <property role="3oM_SC" value="com.dslfoundry.docx" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXh" role="1PaTwD">
              <property role="3oM_SC" value="used" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXi" role="1PaTwD">
              <property role="3oM_SC" value="as" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXj" role="1PaTwD">
              <property role="3oM_SC" value="target," />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXk" role="1PaTwD">
              <property role="3oM_SC" value="there" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXl" role="1PaTwD">
              <property role="3oM_SC" value="are" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXm" role="1PaTwD">
              <property role="3oM_SC" value="two" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXn" role="1PaTwD">
              <property role="3oM_SC" value="generator" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXo" role="1PaTwD">
              <property role="3oM_SC" value="steps" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78vvQK" role="3cqZAp">
          <node concept="1PaTwC" id="7L$ZRJzotXp" role="1aUNEU">
            <node concept="3oM_SD" id="7L$ZRJzotXq" role="1PaTwD">
              <property role="3oM_SC" value="1." />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXr" role="1PaTwD">
              <property role="3oM_SC" value="original" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXs" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXt" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXu" role="1PaTwD">
              <property role="3oM_SC" value="com.dslfoundry.docx" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXv" role="1PaTwD">
              <property role="3oM_SC" value="transient" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXw" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78vyWQ" role="3cqZAp">
          <node concept="1PaTwC" id="7L$ZRJzotXx" role="1aUNEU">
            <node concept="3oM_SD" id="7L$ZRJzotXy" role="1PaTwD">
              <property role="3oM_SC" value="2." />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXz" role="1PaTwD">
              <property role="3oM_SC" value="com.dlsfoundry.docx" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotX$" role="1PaTwD">
              <property role="3oM_SC" value="transient" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotX_" role="1PaTwD">
              <property role="3oM_SC" value="model" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXA" role="1PaTwD">
              <property role="3oM_SC" value="-&gt;" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXB" role="1PaTwD">
              <property role="3oM_SC" value="docx" />
            </node>
            <node concept="3oM_SD" id="7L$ZRJzotXC" role="1PaTwD">
              <property role="3oM_SC" value="file" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7eQ4l" role="3cqZAp">
          <node concept="2OqwBi" id="2RpYLN7eTHN" role="3clFbG">
            <node concept="2OqwBi" id="2RpYLN7eRfI" role="2Oq$k0">
              <node concept="2OqwBi" id="2RpYLN7eQCY" role="2Oq$k0">
                <node concept="1iwH7S" id="2RpYLN7eQ4j" role="2Oq$k0" />
                <node concept="1r8y6K" id="4uRoABxElJM" role="2OqNvi" />
              </node>
              <node concept="2SmgA7" id="2RpYLN7eRIs" role="2OqNvi">
                <node concept="chp4Y" id="2RpYLN7eRU_" role="1dBWTz">
                  <ref role="cht4Q" to="hgfn:3UTNk5VeTNB" resolve="DocxDocument" />
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="2Othy1h71AM" role="2OqNvi">
              <node concept="1bVj0M" id="2Othy1h71AO" role="23t8la">
                <property role="3yWfEV" value="true" />
                <node concept="3clFbS" id="2Othy1h71AP" role="1bW5cS">
                  <node concept="3clFbF" id="2Othy1h71H$" role="3cqZAp">
                    <node concept="2OqwBi" id="2Othy1h71Tp" role="3clFbG">
                      <node concept="37vLTw" id="2Othy1h71Hz" role="2Oq$k0">
                        <ref role="3cqZAo" node="2Othy1h71AQ" resolve="it" />
                      </node>
                      <node concept="2qgKlT" id="2Othy1h726S" role="2OqNvi">
                        <ref role="37wK5l" to="5uyg:2QPHU78qPVk" resolve="WriteDocxFile" />
                        <node concept="2OqwBi" id="2QPHU78tlec" role="37wK5m">
                          <node concept="1iwH7S" id="2QPHU78tkSJ" role="2Oq$k0" />
                          <node concept="1st3f0" id="2QPHU78tlGM" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2Othy1h71AQ" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2Othy1h71AR" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2QPHU78fX3Y" role="3cqZAp" />
        <node concept="2xdQw9" id="3UTNk5Vg9WA" role="3cqZAp">
          <property role="2xdLsb" value="h1akgim/info" />
          <node concept="Xl_RD" id="3UTNk5Vg9WB" role="9lYJi">
            <property role="Xl_RC" value="Generator:WriteDocxFiles -END-" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


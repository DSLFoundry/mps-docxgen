<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a1a3f523-33aa-40b4-8b0b-ee4063f62c2f(com.dslfoundry.docx.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="5zxs" ref="b5d6b482-6a56-49a4-b0f2-664334ce8729/java:org.docx4j.openpackaging.packages(org.docx4j/)" />
    <import index="s1v1" ref="b5d6b482-6a56-49a4-b0f2-664334ce8729/java:org.docx4j.openpackaging.parts.WordprocessingML(org.docx4j/)" />
    <import index="qibz" ref="b5d6b482-6a56-49a4-b0f2-664334ce8729/java:org.docx4j.jaxb(org.docx4j/)" />
    <import index="vgdk" ref="b5d6b482-6a56-49a4-b0f2-664334ce8729/java:org.docx4j.wml(org.docx4j/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="8prx" ref="b5d6b482-6a56-49a4-b0f2-664334ce8729/java:org.docx4j.openpackaging.parts(org.docx4j/)" />
    <import index="hgfn" ref="r:9742a092-2a39-4a23-b1f7-4e446da4d386(com.dslfoundry.docx.structure)" />
    <import index="e91c" ref="b5d6b482-6a56-49a4-b0f2-664334ce8729/java:org.docx4j(org.docx4j/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="w827" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs.openapi(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
        <child id="5721587534047265375" name="throwable" index="9lYJj" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
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
  <node concept="13h7C7" id="3UTNk5VeTOv">
    <ref role="13h7C2" to="hgfn:3UTNk5VeTNB" resolve="DocxDocument" />
    <node concept="13i0hz" id="2QPHU78r0mT" role="13h7CS">
      <property role="TrG5h" value="PathLogic" />
      <node concept="37vLTG" id="2QPHU78r4QQ" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="H_c77" id="2QPHU78r4QR" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2QPHU78r0mU" role="1B3o_S" />
      <node concept="3cqZAl" id="2QPHU78r1kS" role="3clF45" />
      <node concept="3clFbS" id="2QPHU78r0mW" role="3clF47">
        <node concept="3SKdUt" id="2QPHU78r25k" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78r25l" role="3SKWNk">
            <property role="3SKdUp" value="this method contains all logic related to paths" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78rkbK" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78rkbM" role="3SKWNk">
            <property role="3SKdUp" value=" we need to determine two paths" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78rnsl" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78rnsn" role="3SKWNk">
            <property role="3SKdUp" value="- templatePath: where the template can be found (edit time and generator time)" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78rlji" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78rljk" role="3SKWNk">
            <property role="3SKdUp" value="- outputPath: where the generator will write to (generator time only)" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78rseh" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78rsej" role="3SKWNk">
            <property role="3SKdUp" value="rules" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78rt0$" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78rt0A" role="3SKWNk">
            <property role="3SKdUp" value="- templatePath: ${solution}/template/&lt;DocxDocument.template.name&gt;" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78rzuk" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78rzum" role="3SKWNk">
            <property role="3SKdUp" value="- outputPath: ${solution}/docx_gen/&lt;model.name&gt;/&lt;DocxDocument.name&gt;" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78rAV9" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78rAVb" role="3SKWNk">
            <property role="3SKdUp" value="Complicating factors:" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78rCWt" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78rCWv" role="3SKWNk">
            <property role="3SKdUp" value="- output folder does not exist" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78rEs9" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78rEsb" role="3SKWNk">
            <property role="3SKdUp" value="- output file cannot be (over)written" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78rGNd" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78rGNf" role="3SKWNk">
            <property role="3SKdUp" value="- template file cannot be found" />
          </node>
        </node>
        <node concept="3clFbH" id="2QPHU78rriQ" role="3cqZAp" />
        <node concept="3SKdUt" id="2QPHU78r6K4" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78r6K6" role="3SKWNk">
            <property role="3SKdUp" value="the first part of both path is given by the solution containing the model" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78rb3y" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78rb3$" role="3SKWNk">
            <property role="3SKdUp" value="there are two cases" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78reSi" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78reSk" role="3SKWNk">
            <property role="3SKdUp" value="- when generating: the original model passed in from the generato context" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78rhQ8" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78rhQa" role="3SKWNk">
            <property role="3SKdUp" value="- when editing: TODO" />
          </node>
        </node>
        <node concept="3cpWs8" id="2QPHU78ukJX" role="3cqZAp">
          <node concept="3cpWsn" id="2QPHU78ukJY" role="3cpWs9">
            <property role="TrG5h" value="solutionPath" />
            <node concept="3uibUv" id="2QPHU78ukJZ" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2YIFZM" id="2QPHU78umc_" role="33vP2m">
              <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
              <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
              <node concept="2OqwBi" id="2QPHU78r5Y_" role="37wK5m">
                <node concept="13iPFW" id="2QPHU78r5O9" role="2Oq$k0" />
                <node concept="2qgKlT" id="2QPHU78r6gv" role="2OqNvi">
                  <ref role="37wK5l" node="2QPHU78qNB5" resolve="absPath2Solution4Model" />
                  <node concept="37vLTw" id="2QPHU78r6sZ" role="37wK5m">
                    <ref role="3cqZAo" node="2QPHU78r4QQ" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2QPHU78r5xk" role="3cqZAp" />
        <node concept="3SKdUt" id="2QPHU78rO9W" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78rO9Y" role="3SKWNk">
            <property role="3SKdUp" value="outputPath" />
          </node>
        </node>
        <node concept="3cpWs8" id="2QPHU78pTgY" role="3cqZAp">
          <node concept="3cpWsn" id="2QPHU78pTgZ" role="3cpWs9">
            <property role="TrG5h" value="docx_genPath" />
            <node concept="3uibUv" id="2QPHU78pTh0" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2OqwBi" id="2QPHU78uq0V" role="33vP2m">
              <node concept="37vLTw" id="2QPHU78upha" role="2Oq$k0">
                <ref role="3cqZAo" node="2QPHU78ukJY" resolve="solutionPath" />
              </node>
              <node concept="liA8E" id="2QPHU78usai" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
                <node concept="Xl_RD" id="2QPHU78pUTS" role="37wK5m">
                  <property role="Xl_RC" value="docx_gen" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2QPHU78qmzB" role="3cqZAp">
          <node concept="3clFbS" id="2QPHU78qmzD" role="3clFbx">
            <node concept="SfApY" id="2QPHU78pZnn" role="3cqZAp">
              <node concept="3clFbS" id="2QPHU78pZnp" role="SfCbr">
                <node concept="3clFbF" id="2QPHU78pZIX" role="3cqZAp">
                  <node concept="2YIFZM" id="2QPHU78pXIf" role="3clFbG">
                    <ref role="37wK5l" to="eoo2:~Files.createDirectory(java.nio.file.Path,java.nio.file.attribute.FileAttribute...)" resolve="createDirectory" />
                    <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                    <node concept="37vLTw" id="2QPHU78pXPn" role="37wK5m">
                      <ref role="3cqZAo" node="2QPHU78pTgZ" resolve="docx_genPath" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="2QPHU78q15s" role="TEbGg">
                <node concept="3cpWsn" id="2QPHU78q15t" role="TDEfY">
                  <property role="TrG5h" value="e" />
                  <node concept="3uibUv" id="2QPHU78q2do" role="1tU5fm">
                    <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                  </node>
                </node>
                <node concept="3clFbS" id="2QPHU78q15v" role="TDEfX">
                  <node concept="2xdQw9" id="2QPHU78q2DX" role="3cqZAp">
                    <property role="2xdLsb" value="fatal" />
                    <node concept="3cpWs3" id="2QPHU78qahM" role="9lYJi">
                      <node concept="Xl_RD" id="2QPHU78qahP" role="3uHU7w">
                        <property role="Xl_RC" value="'" />
                      </node>
                      <node concept="3cpWs3" id="2QPHU78q55N" role="3uHU7B">
                        <node concept="Xl_RD" id="2QPHU78q2DZ" role="3uHU7B">
                          <property role="Xl_RC" value="cannot create directory '" />
                        </node>
                        <node concept="37vLTw" id="2QPHU78q5dq" role="3uHU7w">
                          <ref role="3cqZAo" node="2QPHU78pTgZ" resolve="docx_genPath" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2QPHU78q2E1" role="9lYJj">
                      <ref role="3cqZAo" node="2QPHU78q15t" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2QPHU78qnPY" role="3clFbw">
            <node concept="2YIFZM" id="2QPHU78qnQ0" role="3fr31v">
              <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
              <ref role="37wK5l" to="eoo2:~Files.exists(java.nio.file.Path,java.nio.file.LinkOption...)" resolve="exists" />
              <node concept="37vLTw" id="2QPHU78qnQ1" role="37wK5m">
                <ref role="3cqZAo" node="2QPHU78pTgZ" resolve="docx_genPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QPHU78qqo2" role="3cqZAp">
          <node concept="3cpWsn" id="2QPHU78qqo3" role="3cpWs9">
            <property role="TrG5h" value="modelnamePath" />
            <node concept="3uibUv" id="2QPHU78qqo4" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2OqwBi" id="2QPHU78tPsm" role="33vP2m">
              <node concept="37vLTw" id="2QPHU78tOVL" role="2Oq$k0">
                <ref role="3cqZAo" node="2QPHU78pTgZ" resolve="docx_genPath" />
              </node>
              <node concept="liA8E" id="2QPHU78u1E6" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
                <node concept="2OqwBi" id="2QPHU78u2Bj" role="37wK5m">
                  <node concept="37vLTw" id="2QPHU78u1Ty" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QPHU78r4QQ" resolve="model" />
                  </node>
                  <node concept="LkI2h" id="2QPHU78u2LE" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2QPHU78qw0r" role="3cqZAp">
          <node concept="3clFbS" id="2QPHU78qw0s" role="3clFbx">
            <node concept="SfApY" id="2QPHU78qw0t" role="3cqZAp">
              <node concept="3clFbS" id="2QPHU78qw0u" role="SfCbr">
                <node concept="3clFbF" id="2QPHU78qw0v" role="3cqZAp">
                  <node concept="2YIFZM" id="2QPHU78qw0w" role="3clFbG">
                    <ref role="37wK5l" to="eoo2:~Files.createDirectory(java.nio.file.Path,java.nio.file.attribute.FileAttribute...)" resolve="createDirectory" />
                    <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                    <node concept="37vLTw" id="2QPHU78qwEJ" role="37wK5m">
                      <ref role="3cqZAo" node="2QPHU78qqo3" resolve="modelnamePath" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="2QPHU78qw0y" role="TEbGg">
                <node concept="3cpWsn" id="2QPHU78qw0z" role="TDEfY">
                  <property role="TrG5h" value="e" />
                  <node concept="3uibUv" id="2QPHU78qw0$" role="1tU5fm">
                    <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                  </node>
                </node>
                <node concept="3clFbS" id="2QPHU78qw0_" role="TDEfX">
                  <node concept="2xdQw9" id="2QPHU78qw0A" role="3cqZAp">
                    <property role="2xdLsb" value="fatal" />
                    <node concept="3cpWs3" id="2QPHU78qw0B" role="9lYJi">
                      <node concept="Xl_RD" id="2QPHU78qw0C" role="3uHU7w">
                        <property role="Xl_RC" value="'" />
                      </node>
                      <node concept="3cpWs3" id="2QPHU78qw0D" role="3uHU7B">
                        <node concept="Xl_RD" id="2QPHU78qw0E" role="3uHU7B">
                          <property role="Xl_RC" value="cannot create directory '" />
                        </node>
                        <node concept="37vLTw" id="2QPHU78qxbi" role="3uHU7w">
                          <ref role="3cqZAo" node="2QPHU78qqo3" resolve="modelnamePath" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2QPHU78qw0I" role="9lYJj">
                      <ref role="3cqZAo" node="2QPHU78qw0z" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2QPHU78qw0J" role="3clFbw">
            <node concept="2YIFZM" id="2QPHU78qw0K" role="3fr31v">
              <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
              <ref role="37wK5l" to="eoo2:~Files.exists(java.nio.file.Path,java.nio.file.LinkOption...)" resolve="exists" />
              <node concept="37vLTw" id="2QPHU78qwyn" role="37wK5m">
                <ref role="3cqZAo" node="2QPHU78qqo3" resolve="modelnamePath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QPHU78rTe4" role="3cqZAp">
          <node concept="3cpWsn" id="2QPHU78rTe5" role="3cpWs9">
            <property role="TrG5h" value="outputPath" />
            <node concept="3uibUv" id="2QPHU78rTe6" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="2OqwBi" id="2QPHU78u4J0" role="33vP2m">
              <node concept="37vLTw" id="2QPHU78u3Re" role="2Oq$k0">
                <ref role="3cqZAo" node="2QPHU78qqo3" resolve="modelnamePath" />
              </node>
              <node concept="liA8E" id="2QPHU78ui0H" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
                <node concept="3cpWs3" id="2QPHU78sp58" role="37wK5m">
                  <node concept="Xl_RD" id="2QPHU78spk9" role="3uHU7w">
                    <property role="Xl_RC" value=".docx" />
                  </node>
                  <node concept="2OqwBi" id="2QPHU78rWBi" role="3uHU7B">
                    <node concept="13iPFW" id="2QPHU78rWsi" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2QPHU78rX43" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78scQU" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78scQW" role="3SKWNk">
            <property role="3SKdUp" value="TODO check if path can be written to" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78uJaG" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78uJaI" role="3SKWNk">
            <property role="3SKdUp" value="it seems that the tests for this are buggy, so don't bother here." />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78uO8W" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78uO8Y" role="3SKWNk">
            <property role="3SKdUp" value="instead handle the exception during save" />
          </node>
        </node>
        <node concept="3SKdUt" id="2QPHU78uRlQ" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78uRlS" role="3SKWNk">
            <property role="3SKdUp" value="https://stackoverflow.com/questions/12688287/java-nio-file-files-iswriteable-doesnt-agree-with-java-io-file-canwrite" />
          </node>
        </node>
        <node concept="3clFbH" id="2QPHU78s1A3" role="3cqZAp" />
        <node concept="3SKdUt" id="2QPHU78s2uF" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78s2uH" role="3SKWNk">
            <property role="3SKdUp" value=" we can now be confident that the following path exists (ignoring race conditions)" />
          </node>
        </node>
        <node concept="3clFbF" id="2QPHU78rPSL" role="3cqZAp">
          <node concept="37vLTI" id="2QPHU78rRPy" role="3clFbG">
            <node concept="2OqwBi" id="2QPHU78rXSa" role="37vLTx">
              <node concept="37vLTw" id="2QPHU78rXlF" role="2Oq$k0">
                <ref role="3cqZAo" node="2QPHU78rTe5" resolve="outputPath" />
              </node>
              <node concept="liA8E" id="2QPHU78s1aF" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.toString()" resolve="toString" />
              </node>
            </node>
            <node concept="2OqwBi" id="2QPHU78rQeW" role="37vLTJ">
              <node concept="13iPFW" id="2QPHU78rPSJ" role="2Oq$k0" />
              <node concept="3TrcHB" id="2QPHU78rR6k" role="2OqNvi">
                <ref role="3TsBF5" to="hgfn:2QPHU78qYrB" resolve="outputPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2xdQw9" id="2QPHU78siQg" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="3cpWs3" id="2QPHU78skiB" role="9lYJi">
            <node concept="2OqwBi" id="2QPHU78sneK" role="3uHU7w">
              <node concept="13iPFW" id="2QPHU78smVI" role="2Oq$k0" />
              <node concept="3TrcHB" id="2QPHU78snNw" role="2OqNvi">
                <ref role="3TsBF5" to="hgfn:2QPHU78qYrB" resolve="outputPath" />
              </node>
            </node>
            <node concept="Xl_RD" id="2QPHU78siQi" role="3uHU7B">
              <property role="Xl_RC" value="outputPath=" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2QPHU78seQO" role="3cqZAp" />
        <node concept="3SKdUt" id="2QPHU78sfmU" role="3cqZAp">
          <node concept="3SKdUq" id="2QPHU78sfmW" role="3SKWNk">
            <property role="3SKdUp" value="templatePath" />
          </node>
        </node>
        <node concept="3clFbJ" id="2QPHU78t0sE" role="3cqZAp">
          <node concept="3clFbS" id="2QPHU78t0sG" role="3clFbx">
            <node concept="3cpWs8" id="2QPHU78ssV9" role="3cqZAp">
              <node concept="3cpWsn" id="2QPHU78ssVa" role="3cpWs9">
                <property role="TrG5h" value="templatePath" />
                <node concept="3uibUv" id="2QPHU78ssVb" role="1tU5fm">
                  <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
                </node>
                <node concept="2OqwBi" id="2QPHU78uz90" role="33vP2m">
                  <node concept="2OqwBi" id="2QPHU78uuWw" role="2Oq$k0">
                    <node concept="37vLTw" id="2QPHU78uul9" role="2Oq$k0">
                      <ref role="3cqZAo" node="2QPHU78ukJY" resolve="solutionPath" />
                    </node>
                    <node concept="liA8E" id="2QPHU78ux9n" role="2OqNvi">
                      <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
                      <node concept="Xl_RD" id="2QPHU78uxyB" role="37wK5m">
                        <property role="Xl_RC" value="templates.docx" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2QPHU78uA7p" role="2OqNvi">
                    <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
                    <node concept="3cpWs3" id="2QPHU78sBdG" role="37wK5m">
                      <node concept="Xl_RD" id="2QPHU78sCWt" role="3uHU7w">
                        <property role="Xl_RC" value=".docx" />
                      </node>
                      <node concept="2OqwBi" id="2QPHU78s_Dh" role="3uHU7B">
                        <node concept="2OqwBi" id="2QPHU78s$N$" role="2Oq$k0">
                          <node concept="13iPFW" id="2QPHU78s$CJ" role="2Oq$k0" />
                          <node concept="3TrEf2" id="2QPHU78s_69" role="2OqNvi">
                            <ref role="3Tt5mk" to="hgfn:2QPHU78fsef" resolve="template" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="2QPHU78sAbd" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2QPHU78sDK9" role="3cqZAp">
              <node concept="3clFbS" id="2QPHU78sDKb" role="3clFbx">
                <node concept="3clFbF" id="2QPHU78sHRw" role="3cqZAp">
                  <node concept="37vLTI" id="2QPHU78sJjW" role="3clFbG">
                    <node concept="2OqwBi" id="2QPHU78sK7z" role="37vLTx">
                      <node concept="37vLTw" id="2QPHU78sJ_4" role="2Oq$k0">
                        <ref role="3cqZAo" node="2QPHU78ssVa" resolve="templatePath" />
                      </node>
                      <node concept="liA8E" id="2QPHU78sWtX" role="2OqNvi">
                        <ref role="37wK5l" to="eoo2:~Path.toString()" resolve="toString" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2QPHU78sI1S" role="37vLTJ">
                      <node concept="13iPFW" id="2QPHU78sHRu" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2QPHU78sIEY" role="2OqNvi">
                        <ref role="3TsBF5" to="hgfn:2QPHU78qYJW" resolve="templatePath" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2xdQw9" id="2QPHU78tcQ$" role="3cqZAp">
                  <property role="2xdLsb" value="info" />
                  <node concept="3cpWs3" id="2QPHU78tdTy" role="9lYJi">
                    <node concept="2OqwBi" id="2QPHU78tegi" role="3uHU7w">
                      <node concept="13iPFW" id="2QPHU78te29" role="2Oq$k0" />
                      <node concept="3TrcHB" id="2QPHU78tfmL" role="2OqNvi">
                        <ref role="3TsBF5" to="hgfn:2QPHU78qYJW" resolve="templatePath" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="2QPHU78tcQA" role="3uHU7B">
                      <property role="Xl_RC" value="using template: " />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="2QPHU78sHcb" role="3clFbw">
                <ref role="37wK5l" to="eoo2:~Files.exists(java.nio.file.Path,java.nio.file.LinkOption...)" resolve="exists" />
                <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                <node concept="37vLTw" id="2QPHU78sHK1" role="37wK5m">
                  <ref role="3cqZAo" node="2QPHU78ssVa" resolve="templatePath" />
                </node>
              </node>
              <node concept="9aQIb" id="2QPHU78t9HM" role="9aQIa">
                <node concept="3clFbS" id="2QPHU78t9HN" role="9aQI4">
                  <node concept="2xdQw9" id="2QPHU78t9Yj" role="3cqZAp">
                    <property role="2xdLsb" value="error" />
                    <node concept="3cpWs3" id="2QPHU78tbNO" role="9lYJi">
                      <node concept="37vLTw" id="2QPHU78tbVj" role="3uHU7w">
                        <ref role="3cqZAo" node="2QPHU78ssVa" resolve="templatePath" />
                      </node>
                      <node concept="Xl_RD" id="2QPHU78t9Yl" role="3uHU7B">
                        <property role="Xl_RC" value="template cannot be found: " />
                      </node>
                    </node>
                  </node>
                  <node concept="2xdQw9" id="2QPHU78v19k" role="3cqZAp">
                    <property role="2xdLsb" value="info" />
                    <node concept="Xl_RD" id="2QPHU78v19m" role="9lYJi">
                      <property role="Xl_RC" value="template cannot be found: proceeding without a template" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="2QPHU78uBtW" role="3cqZAp">
                    <node concept="37vLTI" id="2QPHU78uCUj" role="3clFbG">
                      <node concept="Xl_RD" id="2QPHU78uHXy" role="37vLTx" />
                      <node concept="2OqwBi" id="2QPHU78uBAw" role="37vLTJ">
                        <node concept="13iPFW" id="2QPHU78uBtU" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2QPHU78uCgM" role="2OqNvi">
                          <ref role="3TsBF5" to="hgfn:2QPHU78qYJW" resolve="templatePath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2QPHU78t2_a" role="3clFbw">
            <node concept="2OqwBi" id="2QPHU78t1F$" role="2Oq$k0">
              <node concept="13iPFW" id="2QPHU78t12c" role="2Oq$k0" />
              <node concept="3TrEf2" id="2QPHU78t2qG" role="2OqNvi">
                <ref role="3Tt5mk" to="hgfn:2QPHU78fsef" resolve="template" />
              </node>
            </node>
            <node concept="3x8VRR" id="2QPHU78t3MT" role="2OqNvi" />
          </node>
          <node concept="9aQIb" id="2QPHU78tf_L" role="9aQIa">
            <node concept="3clFbS" id="2QPHU78tf_M" role="9aQI4">
              <node concept="2xdQw9" id="2QPHU78tg94" role="3cqZAp">
                <property role="2xdLsb" value="info" />
                <node concept="Xl_RD" id="2QPHU78tg96" role="9lYJi">
                  <property role="Xl_RC" value="document has no template" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2QPHU78qPVk" role="13h7CS">
      <property role="TrG5h" value="WriteDocxFile" />
      <node concept="37vLTG" id="2QPHU78qWF1" role="3clF46">
        <property role="TrG5h" value="originalModel" />
        <node concept="H_c77" id="2QPHU78qWF2" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2QPHU78qPVl" role="1B3o_S" />
      <node concept="3cqZAl" id="2QPHU78qPVm" role="3clF45" />
      <node concept="3clFbS" id="2QPHU78qPVn" role="3clF47">
        <node concept="2xdQw9" id="2QPHU78qPVo" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="Xl_RD" id="2QPHU78qPVp" role="9lYJi">
            <property role="Xl_RC" value="WriteDocxFile()  BEGIN" />
          </node>
        </node>
        <node concept="3clFbH" id="2QPHU78tobE" role="3cqZAp" />
        <node concept="3clFbF" id="2QPHU78tp8R" role="3cqZAp">
          <node concept="2OqwBi" id="2QPHU78tpqG" role="3clFbG">
            <node concept="13iPFW" id="2QPHU78tp8P" role="2Oq$k0" />
            <node concept="2qgKlT" id="2QPHU78tqdg" role="2OqNvi">
              <ref role="37wK5l" node="2QPHU78r0mT" resolve="PathLogic" />
              <node concept="37vLTw" id="2QPHU78tqtK" role="37wK5m">
                <ref role="3cqZAo" node="2QPHU78qWF1" resolve="originalModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2QPHU78qPVq" role="3cqZAp" />
        <node concept="SfApY" id="2QPHU78qPW2" role="3cqZAp">
          <node concept="3clFbS" id="2QPHU78qPW3" role="SfCbr">
            <node concept="3clFbH" id="2QPHU78t$Bd" role="3cqZAp" />
            <node concept="3cpWs8" id="2QPHU78qPWe" role="3cqZAp">
              <node concept="3cpWsn" id="2QPHU78qPWf" role="3cpWs9">
                <property role="TrG5h" value="thePackage" />
                <node concept="3uibUv" id="2QPHU78qPWg" role="1tU5fm">
                  <ref role="3uigEE" to="5zxs:~WordprocessingMLPackage" resolve="WordprocessingMLPackage" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2QPHU78qPWh" role="3cqZAp">
              <node concept="3clFbS" id="2QPHU78qPWi" role="3clFbx">
                <node concept="3clFbF" id="2QPHU78qPWl" role="3cqZAp">
                  <node concept="37vLTI" id="2QPHU78qPWm" role="3clFbG">
                    <node concept="2YIFZM" id="2QPHU78qPWn" role="37vLTx">
                      <ref role="37wK5l" to="e91c:~Docx4J.load(java.io.File)" resolve="load" />
                      <ref role="1Pybhc" to="e91c:~Docx4J" resolve="Docx4J" />
                      <node concept="2ShNRf" id="2QPHU78tw7s" role="37wK5m">
                        <node concept="1pGfFk" id="2QPHU78txLe" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="2OqwBi" id="2QPHU78turG" role="37wK5m">
                            <node concept="13iPFW" id="2QPHU78tugY" role="2Oq$k0" />
                            <node concept="3TrcHB" id="2QPHU78tvsI" role="2OqNvi">
                              <ref role="3TsBF5" to="hgfn:2QPHU78qYJW" resolve="templatePath" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2QPHU78qPWt" role="37vLTJ">
                      <ref role="3cqZAo" node="2QPHU78qPWf" resolve="thePackage" />
                    </node>
                  </node>
                </node>
                <node concept="3SKdUt" id="2QPHU78qPWD" role="3cqZAp">
                  <node concept="3SKdUq" id="2QPHU78qPWE" role="3SKWNk">
                    <property role="3SKdUp" value=" TODO delete first (empty) paragraph in template ??" />
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="2QPHU78uEEa" role="3clFbw">
                <node concept="2OqwBi" id="2QPHU78uGFA" role="3uHU7w">
                  <node concept="2OqwBi" id="2QPHU78uFp7" role="2Oq$k0">
                    <node concept="13iPFW" id="2QPHU78uETP" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2QPHU78uG20" role="2OqNvi">
                      <ref role="3TsBF5" to="hgfn:2QPHU78qYJW" resolve="templatePath" />
                    </node>
                  </node>
                  <node concept="17RvpY" id="2QPHU78uHFg" role="2OqNvi" />
                </node>
                <node concept="2OqwBi" id="2QPHU78tsWv" role="3uHU7B">
                  <node concept="2OqwBi" id="2QPHU78trUC" role="2Oq$k0">
                    <node concept="13iPFW" id="2QPHU78trxJ" role="2Oq$k0" />
                    <node concept="3TrEf2" id="2QPHU78tsxL" role="2OqNvi">
                      <ref role="3Tt5mk" to="hgfn:2QPHU78fsef" resolve="template" />
                    </node>
                  </node>
                  <node concept="3x8VRR" id="2QPHU78ttOE" role="2OqNvi" />
                </node>
              </node>
              <node concept="9aQIb" id="2QPHU78qPWw" role="9aQIa">
                <node concept="3clFbS" id="2QPHU78qPWx" role="9aQI4">
                  <node concept="3clFbF" id="2QPHU78qPW$" role="3cqZAp">
                    <node concept="37vLTI" id="2QPHU78qPW_" role="3clFbG">
                      <node concept="37vLTw" id="2QPHU78qPWA" role="37vLTJ">
                        <ref role="3cqZAo" node="2QPHU78qPWf" resolve="thePackage" />
                      </node>
                      <node concept="2YIFZM" id="2QPHU78qPWB" role="37vLTx">
                        <ref role="1Pybhc" to="5zxs:~WordprocessingMLPackage" resolve="WordprocessingMLPackage" />
                        <ref role="37wK5l" to="5zxs:~WordprocessingMLPackage.createPackage()" resolve="createPackage" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2QPHU78qPWC" role="3cqZAp" />
            <node concept="3SKdUt" id="2QPHU78qPWG" role="3cqZAp">
              <node concept="3SKdUq" id="2QPHU78qPWH" role="3SKWNk">
                <property role="3SKdUp" value="content is to be added to the main document part" />
              </node>
            </node>
            <node concept="3cpWs8" id="2QPHU78qPWI" role="3cqZAp">
              <node concept="3cpWsn" id="2QPHU78qPWJ" role="3cpWs9">
                <property role="TrG5h" value="mainDocumentPart" />
                <node concept="3uibUv" id="2QPHU78qPWK" role="1tU5fm">
                  <ref role="3uigEE" to="s1v1:~MainDocumentPart" resolve="MainDocumentPart" />
                </node>
                <node concept="2OqwBi" id="2QPHU78qPWL" role="33vP2m">
                  <node concept="37vLTw" id="2QPHU78qPWM" role="2Oq$k0">
                    <ref role="3cqZAo" node="2QPHU78qPWf" resolve="thePackage" />
                  </node>
                  <node concept="liA8E" id="2QPHU78qPWN" role="2OqNvi">
                    <ref role="37wK5l" to="5zxs:~WordprocessingMLPackage.getMainDocumentPart()" resolve="getMainDocumentPart" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2QPHU78qPWO" role="3cqZAp">
              <node concept="3SKdUq" id="2QPHU78qPWP" role="3SKWNk">
                <property role="3SKdUp" value="create factory object that will be used by all nodes" />
              </node>
            </node>
            <node concept="3cpWs8" id="2QPHU78qPWQ" role="3cqZAp">
              <node concept="3cpWsn" id="2QPHU78qPWR" role="3cpWs9">
                <property role="TrG5h" value="factory" />
                <node concept="3uibUv" id="2QPHU78qPWS" role="1tU5fm">
                  <ref role="3uigEE" to="vgdk:~ObjectFactory" resolve="ObjectFactory" />
                </node>
                <node concept="2YIFZM" id="2QPHU78qPWT" role="33vP2m">
                  <ref role="1Pybhc" to="qibz:~Context" resolve="Context" />
                  <ref role="37wK5l" to="qibz:~Context.getWmlObjectFactory()" resolve="getWmlObjectFactory" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2QPHU78qPWU" role="3cqZAp">
              <node concept="3SKdUq" id="2QPHU78qPWV" role="3SKWNk">
                <property role="3SKdUp" value="recursive descent into the DocxDocument model" />
              </node>
            </node>
            <node concept="3clFbF" id="2QPHU78qPWW" role="3cqZAp">
              <node concept="2OqwBi" id="2QPHU78qPWX" role="3clFbG">
                <node concept="2OqwBi" id="2QPHU78qPWY" role="2Oq$k0">
                  <node concept="13iPFW" id="2QPHU78qPWZ" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2QPHU78qPX0" role="2OqNvi">
                    <ref role="3Tt5mk" to="hgfn:2RpYLN7f$Th" resolve="content" />
                  </node>
                </node>
                <node concept="2qgKlT" id="2QPHU78qPX1" role="2OqNvi">
                  <ref role="37wK5l" node="4sixqEheup$" resolve="GenP" />
                  <node concept="37vLTw" id="2QPHU78qPX2" role="37wK5m">
                    <ref role="3cqZAo" node="2QPHU78qPWJ" resolve="mainDocumentPart" />
                  </node>
                  <node concept="37vLTw" id="2QPHU78qPX3" role="37wK5m">
                    <ref role="3cqZAo" node="2QPHU78qPWR" resolve="factory" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2QPHU78qPX4" role="3cqZAp" />
            <node concept="3SKdUt" id="2QPHU78qPX5" role="3cqZAp">
              <node concept="3SKdUq" id="2QPHU78qPX6" role="3SKWNk">
                <property role="3SKdUp" value="save the result" />
              </node>
            </node>
            <node concept="3clFbF" id="2QPHU78qPXf" role="3cqZAp">
              <node concept="2OqwBi" id="2QPHU78qPXg" role="3clFbG">
                <node concept="37vLTw" id="2QPHU78qPXh" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QPHU78qPWf" resolve="thePackage" />
                </node>
                <node concept="liA8E" id="2QPHU78qPXi" role="2OqNvi">
                  <ref role="37wK5l" to="5zxs:~OpcPackage.save(java.io.File)" resolve="save" />
                  <node concept="2ShNRf" id="2QPHU78qPXa" role="37wK5m">
                    <node concept="1pGfFk" id="2QPHU78qPXb" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                      <node concept="2OqwBi" id="2QPHU78tzzO" role="37wK5m">
                        <node concept="13iPFW" id="2QPHU78tzhn" role="2Oq$k0" />
                        <node concept="3TrcHB" id="2QPHU78t$h3" role="2OqNvi">
                          <ref role="3TsBF5" to="hgfn:2QPHU78qYrB" resolve="outputPath" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2QPHU78qPXk" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="2QPHU78qPXl" role="TEbGg">
            <node concept="3cpWsn" id="2QPHU78qPXm" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="2QPHU78qPXn" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="2QPHU78qPXo" role="TDEfX">
              <node concept="2xdQw9" id="2QPHU78qPXp" role="3cqZAp">
                <property role="2xdLsb" value="error" />
                <node concept="Xl_RD" id="2QPHU78qPXq" role="9lYJi">
                  <property role="Xl_RC" value="WriteDocxFile() ERROR" />
                </node>
                <node concept="37vLTw" id="2QPHU78qPXr" role="9lYJj">
                  <ref role="3cqZAo" node="2QPHU78qPXm" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2xdQw9" id="2QPHU78qPXs" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="Xl_RD" id="2QPHU78qPXt" role="9lYJi">
            <property role="Xl_RC" value="WriteDocxFile()  END" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2RpYLN7fNip" role="13h7CS">
      <property role="TrG5h" value="WriteDocxFileOLD" />
      <node concept="3Tm1VV" id="2RpYLN7fNiq" role="1B3o_S" />
      <node concept="3cqZAl" id="2RpYLN7fNqm" role="3clF45" />
      <node concept="3clFbS" id="2RpYLN7fNis" role="3clF47">
        <node concept="2xdQw9" id="3UTNk5VgcFE" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="Xl_RD" id="3UTNk5VgcFG" role="9lYJi">
            <property role="Xl_RC" value="WriteDocxFile()  BEGIN" />
          </node>
        </node>
        <node concept="3clFbH" id="2QPHU78nfid" role="3cqZAp" />
        <node concept="2xdQw9" id="2Othy1h77wy" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="3cpWs3" id="2Othy1h78l$" role="9lYJi">
            <node concept="37vLTw" id="2Othy1h78lF" role="3uHU7w">
              <ref role="3cqZAo" node="2Othy1h6PBU" resolve="absOutputPath" />
            </node>
            <node concept="Xl_RD" id="2Othy1h77w$" role="3uHU7B">
              <property role="Xl_RC" value="OUTPUT.PATH=" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Othy1h7y6O" role="3cqZAp">
          <node concept="3cpWsn" id="2Othy1h7y6R" role="3cpWs9">
            <property role="TrG5h" value="outputFileName" />
            <node concept="17QB3L" id="2Othy1h7y6M" role="1tU5fm" />
            <node concept="3cpWs3" id="2Othy1h7zRc" role="33vP2m">
              <node concept="Xl_RD" id="2Othy1h7zRf" role="3uHU7w">
                <property role="Xl_RC" value=".docx" />
              </node>
              <node concept="2OqwBi" id="2Othy1h7yRO" role="3uHU7B">
                <node concept="13iPFW" id="2Othy1h7yHo" role="2Oq$k0" />
                <node concept="3TrcHB" id="2Othy1h7zby" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2xdQw9" id="2Othy1h7jZz" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="3cpWs3" id="2Othy1h7l2P" role="9lYJi">
            <node concept="Xl_RD" id="2Othy1h7jZ_" role="3uHU7B">
              <property role="Xl_RC" value="OUTPUT.NAME=" />
            </node>
            <node concept="37vLTw" id="2Othy1h7_7r" role="3uHU7w">
              <ref role="3cqZAo" node="2Othy1h7y6R" resolve="outputFileName" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2Othy1h7SHV" role="3cqZAp">
          <node concept="3SKdUq" id="2Othy1h7SHX" role="3SKWNk">
            <property role="3SKdUp" value="TODO check if target file is busy/locked. if so, add suffix to filename: (i)" />
          </node>
        </node>
        <node concept="2xdQw9" id="2Othy1h88C8" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="3cpWs3" id="2Othy1h88C9" role="9lYJi">
            <node concept="37vLTw" id="2Othy1h8aBr" role="3uHU7w">
              <ref role="3cqZAo" node="2Othy1h7TDo" resolve="absTemplatePath" />
            </node>
            <node concept="Xl_RD" id="2Othy1h88Cb" role="3uHU7B">
              <property role="Xl_RC" value="TEMPLATE.PATH=" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2Othy1h88Cc" role="3cqZAp">
          <node concept="3cpWsn" id="2Othy1h88Cd" role="3cpWs9">
            <property role="TrG5h" value="templateFileName" />
            <node concept="17QB3L" id="2Othy1h88Ce" role="1tU5fm" />
            <node concept="3cpWs3" id="2QPHU78g25B" role="33vP2m">
              <node concept="Xl_RD" id="2QPHU78g2vE" role="3uHU7w">
                <property role="Xl_RC" value=".docx" />
              </node>
              <node concept="2OqwBi" id="2QPHU78g0zV" role="3uHU7B">
                <node concept="2OqwBi" id="2QPHU78fZej" role="2Oq$k0">
                  <node concept="13iPFW" id="2QPHU78fYWh" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2QPHU78fZIL" role="2OqNvi">
                    <ref role="3Tt5mk" to="hgfn:2QPHU78fsef" resolve="template" />
                  </node>
                </node>
                <node concept="3TrcHB" id="2QPHU78g11G" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2xdQw9" id="2Othy1h88Ck" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="3cpWs3" id="2Othy1h88Cl" role="9lYJi">
            <node concept="Xl_RD" id="2Othy1h88Cm" role="3uHU7B">
              <property role="Xl_RC" value="TEMPLATE.NAME=" />
            </node>
            <node concept="37vLTw" id="2Othy1h88Cn" role="3uHU7w">
              <ref role="3cqZAo" node="2Othy1h88Cd" resolve="templateFileName" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2Othy1h88Co" role="3cqZAp">
          <node concept="3SKdUq" id="2Othy1h88Cp" role="3SKWNk">
            <property role="3SKdUp" value="TODO check if template file exists. if not, create new document" />
          </node>
        </node>
        <node concept="3clFbH" id="2Othy1h887U" role="3cqZAp" />
        <node concept="SfApY" id="5bw_t6Wi$gR" role="3cqZAp">
          <node concept="3clFbS" id="5bw_t6Wi$gT" role="SfCbr">
            <node concept="3cpWs8" id="2QPHU78nYxV" role="3cqZAp">
              <node concept="3cpWsn" id="2QPHU78nYxW" role="3cpWs9">
                <property role="TrG5h" value="path" />
                <node concept="3uibUv" id="2QPHU78nYxX" role="1tU5fm">
                  <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
                </node>
                <node concept="2YIFZM" id="2QPHU78nZ_r" role="33vP2m">
                  <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
                  <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
                  <node concept="37vLTw" id="2QPHU78nZFN" role="37wK5m">
                    <ref role="3cqZAo" node="2Othy1h7TDo" resolve="absTemplatePath" />
                  </node>
                  <node concept="37vLTw" id="2QPHU78o0Co" role="37wK5m">
                    <ref role="3cqZAo" node="2Othy1h88Cd" resolve="templateFileName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2xdQw9" id="2QPHU78o1db" role="3cqZAp">
              <property role="2xdLsb" value="info" />
              <node concept="3cpWs3" id="2QPHU78o27v" role="9lYJi">
                <node concept="37vLTw" id="2QPHU78o27A" role="3uHU7w">
                  <ref role="3cqZAo" node="2QPHU78nYxW" resolve="path" />
                </node>
                <node concept="Xl_RD" id="2QPHU78o1dd" role="3uHU7B">
                  <property role="Xl_RC" value="template=" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2QPHU78g_YW" role="3cqZAp">
              <node concept="3cpWsn" id="2wykVts2Tp$" role="3cpWs9">
                <property role="TrG5h" value="templatePackage" />
                <node concept="3uibUv" id="2wykVtssmaX" role="1tU5fm">
                  <ref role="3uigEE" to="5zxs:~WordprocessingMLPackage" resolve="WordprocessingMLPackage" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2QPHU78o4Kk" role="3cqZAp">
              <node concept="3clFbS" id="2QPHU78o4Km" role="3clFbx">
                <node concept="2xdQw9" id="2QPHU78qzM$" role="3cqZAp">
                  <property role="2xdLsb" value="info" />
                  <node concept="Xl_RD" id="2QPHU78qzMA" role="9lYJi">
                    <property role="Xl_RC" value="using template" />
                  </node>
                </node>
                <node concept="3clFbF" id="2QPHU78ob7U" role="3cqZAp">
                  <node concept="37vLTI" id="2QPHU78ob7W" role="3clFbG">
                    <node concept="2YIFZM" id="2wykVtsshzO" role="37vLTx">
                      <ref role="37wK5l" to="e91c:~Docx4J.load(java.io.File)" resolve="load" />
                      <ref role="1Pybhc" to="e91c:~Docx4J" resolve="Docx4J" />
                      <node concept="2ShNRf" id="2QPHU78ocjT" role="37wK5m">
                        <node concept="1pGfFk" id="2QPHU78odM9" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="2OqwBi" id="2QPHU78oeJj" role="37wK5m">
                            <node concept="37vLTw" id="2QPHU78oe7q" role="2Oq$k0">
                              <ref role="3cqZAo" node="2QPHU78nYxW" resolve="path" />
                            </node>
                            <node concept="liA8E" id="2QPHU78oBJx" role="2OqNvi">
                              <ref role="37wK5l" to="eoo2:~Path.toString()" resolve="toString" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="2QPHU78ob80" role="37vLTJ">
                      <ref role="3cqZAo" node="2wykVts2Tp$" resolve="templatePackage" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2YIFZM" id="2QPHU78o5ts" role="3clFbw">
                <ref role="37wK5l" to="eoo2:~Files.exists(java.nio.file.Path,java.nio.file.LinkOption...)" resolve="exists" />
                <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                <node concept="37vLTw" id="2QPHU78o5$Q" role="37wK5m">
                  <ref role="3cqZAo" node="2QPHU78nYxW" resolve="path" />
                </node>
              </node>
              <node concept="9aQIb" id="2QPHU78o5eF" role="9aQIa">
                <node concept="3clFbS" id="2QPHU78o5eG" role="9aQI4">
                  <node concept="2xdQw9" id="2QPHU78qA3P" role="3cqZAp">
                    <property role="2xdLsb" value="info" />
                    <node concept="Xl_RD" id="2QPHU78qA3R" role="9lYJi">
                      <property role="Xl_RC" value="no template found, creating new file" />
                    </node>
                  </node>
                  <node concept="3clFbF" id="2QPHU78oYfL" role="3cqZAp">
                    <node concept="37vLTI" id="2QPHU78oYAG" role="3clFbG">
                      <node concept="37vLTw" id="2QPHU78oYfK" role="37vLTJ">
                        <ref role="3cqZAo" node="2wykVts2Tp$" resolve="templatePackage" />
                      </node>
                      <node concept="2YIFZM" id="2QPHU78oYDy" role="37vLTx">
                        <ref role="1Pybhc" to="5zxs:~WordprocessingMLPackage" resolve="WordprocessingMLPackage" />
                        <ref role="37wK5l" to="5zxs:~WordprocessingMLPackage.createPackage()" resolve="createPackage" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2QPHU78g_$p" role="3cqZAp" />
            <node concept="3SKdUt" id="2QPHU78n35$" role="3cqZAp">
              <node concept="3SKdUq" id="2QPHU78n35A" role="3SKWNk">
                <property role="3SKdUp" value=" TODO delete first (empty) paragraph in template" />
              </node>
            </node>
            <node concept="3clFbH" id="2QPHU78neh1" role="3cqZAp" />
            <node concept="3SKdUt" id="2QPHU78ljK$" role="3cqZAp">
              <node concept="3SKdUq" id="2QPHU78ljKA" role="3SKWNk">
                <property role="3SKdUp" value="content is to be added to the main document part" />
              </node>
            </node>
            <node concept="3cpWs8" id="2QPHU78gGI5" role="3cqZAp">
              <node concept="3cpWsn" id="2QPHU78gGI6" role="3cpWs9">
                <property role="TrG5h" value="mainDocumentPart" />
                <node concept="3uibUv" id="2QPHU78gGI7" role="1tU5fm">
                  <ref role="3uigEE" to="s1v1:~MainDocumentPart" resolve="MainDocumentPart" />
                </node>
                <node concept="2OqwBi" id="2QPHU78gGI8" role="33vP2m">
                  <node concept="37vLTw" id="2QPHU78gNNg" role="2Oq$k0">
                    <ref role="3cqZAo" node="2wykVts2Tp$" resolve="templatePackage" />
                  </node>
                  <node concept="liA8E" id="2QPHU78gGIa" role="2OqNvi">
                    <ref role="37wK5l" to="5zxs:~WordprocessingMLPackage.getMainDocumentPart()" resolve="getMainDocumentPart" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2RpYLN7iiZB" role="3cqZAp">
              <node concept="3SKdUq" id="2RpYLN7iiZD" role="3SKWNk">
                <property role="3SKdUp" value="create factory object that will be used by all nodes" />
              </node>
            </node>
            <node concept="3cpWs8" id="2RpYLN7fSGc" role="3cqZAp">
              <node concept="3cpWsn" id="4zGUHraVI6l" role="3cpWs9">
                <property role="TrG5h" value="factory" />
                <node concept="3uibUv" id="4zGUHraVI6n" role="1tU5fm">
                  <ref role="3uigEE" to="vgdk:~ObjectFactory" resolve="ObjectFactory" />
                </node>
                <node concept="2YIFZM" id="4zGUHraVIM4" role="33vP2m">
                  <ref role="1Pybhc" to="qibz:~Context" resolve="Context" />
                  <ref role="37wK5l" to="qibz:~Context.getWmlObjectFactory()" resolve="getWmlObjectFactory" />
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2RpYLN7ikwe" role="3cqZAp">
              <node concept="3SKdUq" id="2RpYLN7ikwg" role="3SKWNk">
                <property role="3SKdUp" value="recursive descent into the DocxDocument model" />
              </node>
            </node>
            <node concept="3clFbF" id="4sixqEheKG6" role="3cqZAp">
              <node concept="2OqwBi" id="4sixqEheLMI" role="3clFbG">
                <node concept="2OqwBi" id="4sixqEheKWj" role="2Oq$k0">
                  <node concept="13iPFW" id="4sixqEheKG4" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4sixqEheLlg" role="2OqNvi">
                    <ref role="3Tt5mk" to="hgfn:2RpYLN7f$Th" resolve="content" />
                  </node>
                </node>
                <node concept="2qgKlT" id="4sixqEheMwU" role="2OqNvi">
                  <ref role="37wK5l" node="4sixqEheup$" resolve="GenP" />
                  <node concept="37vLTw" id="2QPHU78gP6y" role="37wK5m">
                    <ref role="3cqZAo" node="2QPHU78gGI6" resolve="mainDocumentPart" />
                  </node>
                  <node concept="37vLTw" id="4sixqEheMZc" role="37wK5m">
                    <ref role="3cqZAo" node="4zGUHraVI6l" resolve="factory" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2RpYLN7impj" role="3cqZAp" />
            <node concept="3SKdUt" id="2RpYLN7ikSp" role="3cqZAp">
              <node concept="3SKdUq" id="2RpYLN7ikSr" role="3SKWNk">
                <property role="3SKdUp" value="save the result" />
              </node>
            </node>
            <node concept="3cpWs8" id="2Othy1h7vf0" role="3cqZAp">
              <node concept="3cpWsn" id="2Othy1h7vf1" role="3cpWs9">
                <property role="TrG5h" value="theOutputFile" />
                <node concept="3uibUv" id="2Othy1h7vf2" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="2ShNRf" id="2Othy1h7vf3" role="33vP2m">
                  <node concept="1pGfFk" id="2Othy1h7vf4" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="3cpWs3" id="2Othy1h7wC$" role="37wK5m">
                      <node concept="37vLTw" id="2Othy1h7_e8" role="3uHU7w">
                        <ref role="3cqZAo" node="2Othy1h7y6R" resolve="outputFileName" />
                      </node>
                      <node concept="37vLTw" id="2Othy1h7wkk" role="3uHU7B">
                        <ref role="3cqZAo" node="2Othy1h6PBU" resolve="absOutputPath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="62GcVm6vaNx" role="3cqZAp">
              <node concept="2OqwBi" id="62GcVm6vaOL" role="3clFbG">
                <node concept="37vLTw" id="2QPHU78gRuk" role="2Oq$k0">
                  <ref role="3cqZAo" node="2wykVts2Tp$" resolve="templatePackage" />
                </node>
                <node concept="liA8E" id="62GcVm6vaOM" role="2OqNvi">
                  <ref role="37wK5l" to="5zxs:~OpcPackage.save(java.io.File)" resolve="save" />
                  <node concept="37vLTw" id="2Othy1h7_sy" role="37wK5m">
                    <ref role="3cqZAo" node="2Othy1h7vf1" resolve="theOutputFile" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5bw_t6Wi$gS" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="5bw_t6Wi$gU" role="TEbGg">
            <node concept="3cpWsn" id="5bw_t6Wi$gW" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5bw_t6Wi$lo" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="5bw_t6Wi$h0" role="TDEfX">
              <node concept="2xdQw9" id="2OLty_fl2vx" role="3cqZAp">
                <property role="2xdLsb" value="error" />
                <node concept="Xl_RD" id="2OLty_fl2vz" role="9lYJi">
                  <property role="Xl_RC" value="WriteDocxFile() ERROR" />
                </node>
                <node concept="37vLTw" id="2OLty_fl2v_" role="9lYJj">
                  <ref role="3cqZAo" node="5bw_t6Wi$gW" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2xdQw9" id="3UTNk5Vgd7v" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="Xl_RD" id="3UTNk5Vgd7w" role="9lYJi">
            <property role="Xl_RC" value="WriteDocxFile()  END" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2Othy1h6PBU" role="3clF46">
        <property role="TrG5h" value="absOutputPath" />
        <node concept="17QB3L" id="2Othy1h6PBT" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2Othy1h7TDo" role="3clF46">
        <property role="TrG5h" value="absTemplatePath" />
        <node concept="17QB3L" id="2Othy1h7TMS" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="2QPHU78gd5O" role="13h7CS">
      <property role="TrG5h" value="CopyStylesSnippet" />
      <node concept="3Tm1VV" id="2QPHU78gd5P" role="1B3o_S" />
      <node concept="3cqZAl" id="2QPHU78gdHP" role="3clF45" />
      <node concept="3clFbS" id="2QPHU78gd5R" role="3clF47">
        <node concept="SfApY" id="2QPHU78gC$U" role="3cqZAp">
          <node concept="3clFbS" id="2QPHU78gC$W" role="SfCbr">
            <node concept="3SKdUt" id="5DN9oCMsMHj" role="3cqZAp">
              <node concept="3SKdUq" id="5DN9oCMsMHl" role="3SKWNk">
                <property role="3SKdUp" value="open the template" />
              </node>
            </node>
            <node concept="3cpWs8" id="5DN9oCMscK1" role="3cqZAp">
              <node concept="3cpWsn" id="5DN9oCMscK2" role="3cpWs9">
                <property role="TrG5h" value="templateFile" />
                <node concept="3uibUv" id="5DN9oCMscK3" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
                <node concept="2ShNRf" id="5DN9oCMsg4y" role="33vP2m">
                  <node concept="1pGfFk" id="5DN9oCMshSV" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                    <node concept="Xl_RD" id="2QPHU78gC7Q" role="37wK5m">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5DN9oCMs4yJ" role="3cqZAp">
              <node concept="3cpWsn" id="5DN9oCMs4yI" role="3cpWs9">
                <property role="TrG5h" value="templatePackage" />
                <node concept="3uibUv" id="5DN9oCMs4yK" role="1tU5fm">
                  <ref role="3uigEE" to="5zxs:~WordprocessingMLPackage" resolve="WordprocessingMLPackage" />
                </node>
                <node concept="2YIFZM" id="5DN9oCMs4LI" role="33vP2m">
                  <ref role="1Pybhc" to="5zxs:~WordprocessingMLPackage" resolve="WordprocessingMLPackage" />
                  <ref role="37wK5l" to="5zxs:~WordprocessingMLPackage.load(java.io.File)" resolve="load" />
                  <node concept="37vLTw" id="5DN9oCMsonZ" role="37wK5m">
                    <ref role="3cqZAo" node="5DN9oCMscK2" resolve="templateFile" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2RpYLN7ilgA" role="3cqZAp" />
            <node concept="3SKdUt" id="2RpYLN7ievl" role="3cqZAp">
              <node concept="3SKdUq" id="2RpYLN7ievn" role="3SKWNk">
                <property role="3SKdUp" value="create the new file" />
              </node>
            </node>
            <node concept="3cpWs8" id="5DN9oCMsB2p" role="3cqZAp">
              <node concept="3cpWsn" id="5DN9oCMsB2o" role="3cpWs9">
                <property role="TrG5h" value="newPackage" />
                <node concept="3uibUv" id="5DN9oCMsB2q" role="1tU5fm">
                  <ref role="3uigEE" to="5zxs:~WordprocessingMLPackage" resolve="WordprocessingMLPackage" />
                </node>
                <node concept="2YIFZM" id="5DN9oCMsBi8" role="33vP2m">
                  <ref role="1Pybhc" to="5zxs:~WordprocessingMLPackage" resolve="WordprocessingMLPackage" />
                  <ref role="37wK5l" to="5zxs:~WordprocessingMLPackage.createPackage()" resolve="createPackage" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2RpYLN7ig0u" role="3cqZAp">
              <node concept="3cpWsn" id="2RpYLN7ig0v" role="3cpWs9">
                <property role="TrG5h" value="mainDocumentPart" />
                <node concept="3uibUv" id="2RpYLN7ig0w" role="1tU5fm">
                  <ref role="3uigEE" to="s1v1:~MainDocumentPart" resolve="MainDocumentPart" />
                </node>
                <node concept="2OqwBi" id="2RpYLN7ig0x" role="33vP2m">
                  <node concept="37vLTw" id="2RpYLN7ig0y" role="2Oq$k0">
                    <ref role="3cqZAo" node="5DN9oCMsB2o" resolve="newPackage" />
                  </node>
                  <node concept="liA8E" id="2RpYLN7ig0z" role="2OqNvi">
                    <ref role="37wK5l" to="5zxs:~WordprocessingMLPackage.getMainDocumentPart()" resolve="getMainDocumentPart" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2RpYLN7ilCN" role="3cqZAp" />
            <node concept="3cpWs8" id="5DN9oCMsExF" role="3cqZAp">
              <node concept="3cpWsn" id="5DN9oCMsExE" role="3cpWs9">
                <property role="TrG5h" value="templateMainDocumentPart" />
                <node concept="3uibUv" id="5DN9oCMsExG" role="1tU5fm">
                  <ref role="3uigEE" to="s1v1:~MainDocumentPart" resolve="MainDocumentPart" />
                </node>
                <node concept="2OqwBi" id="5DN9oCMsGdz" role="33vP2m">
                  <node concept="37vLTw" id="5DN9oCMsGdy" role="2Oq$k0">
                    <ref role="3cqZAo" node="5DN9oCMs4yI" resolve="templatePackage" />
                  </node>
                  <node concept="liA8E" id="5DN9oCMsGd$" role="2OqNvi">
                    <ref role="37wK5l" to="5zxs:~WordprocessingMLPackage.getMainDocumentPart()" resolve="getMainDocumentPart" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2OLty_fkTGd" role="3cqZAp">
              <node concept="3SKdUq" id="2OLty_fkTGf" role="3SKWNk">
                <property role="3SKdUp" value="copy over styles" />
              </node>
            </node>
            <node concept="3cpWs8" id="5DN9oCMsExJ" role="3cqZAp">
              <node concept="3cpWsn" id="5DN9oCMsExI" role="3cpWs9">
                <property role="TrG5h" value="sdp" />
                <node concept="3uibUv" id="5DN9oCMsExK" role="1tU5fm">
                  <ref role="3uigEE" to="s1v1:~StyleDefinitionsPart" resolve="StyleDefinitionsPart" />
                </node>
                <node concept="2OqwBi" id="5DN9oCMsFDV" role="33vP2m">
                  <node concept="37vLTw" id="5DN9oCMsFDU" role="2Oq$k0">
                    <ref role="3cqZAo" node="5DN9oCMsExE" resolve="templateMainDocumentPart" />
                  </node>
                  <node concept="liA8E" id="5DN9oCMsFDW" role="2OqNvi">
                    <ref role="37wK5l" to="s1v1:~DocumentPart.getStyleDefinitionsPart()" resolve="getStyleDefinitionsPart" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="5DN9oCMsExN" role="3cqZAp">
              <node concept="3cpWsn" id="5DN9oCMsExM" role="3cpWs9">
                <property role="TrG5h" value="tempStyle" />
                <node concept="3uibUv" id="5DN9oCMsExO" role="1tU5fm">
                  <ref role="3uigEE" to="vgdk:~Styles" resolve="Styles" />
                </node>
                <node concept="2OqwBi" id="5DN9oCMsFd8" role="33vP2m">
                  <node concept="37vLTw" id="5DN9oCMsFd7" role="2Oq$k0">
                    <ref role="3cqZAo" node="5DN9oCMsExI" resolve="sdp" />
                  </node>
                  <node concept="liA8E" id="5DN9oCMsFd9" role="2OqNvi">
                    <ref role="37wK5l" to="8prx:~JaxbXmlPart.getJaxbElement()" resolve="getJaxbElement" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5DN9oCMsExQ" role="3cqZAp">
              <node concept="2OqwBi" id="5DN9oCMsExR" role="3clFbG">
                <node concept="2OqwBi" id="5DN9oCMsExS" role="2Oq$k0">
                  <node concept="37vLTw" id="2RpYLN7ii6r" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RpYLN7ig0v" resolve="mainDocumentPart" />
                  </node>
                  <node concept="liA8E" id="5DN9oCMsExU" role="2OqNvi">
                    <ref role="37wK5l" to="s1v1:~DocumentPart.getStyleDefinitionsPart()" resolve="getStyleDefinitionsPart" />
                  </node>
                </node>
                <node concept="liA8E" id="5DN9oCMsExV" role="2OqNvi">
                  <ref role="37wK5l" to="s1v1:~StyleDefinitionsPart.setJaxbElement(org.docx4j.wml.Styles)" resolve="setJaxbElement" />
                  <node concept="37vLTw" id="5DN9oCMsExW" role="37wK5m">
                    <ref role="3cqZAo" node="5DN9oCMsExM" resolve="tempStyle" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2OLty_fkzM8" role="3cqZAp">
              <node concept="3SKdUq" id="2OLty_fkzMa" role="3SKWNk">
                <property role="3SKdUp" value="copy over numberings" />
              </node>
            </node>
            <node concept="1X3_iC" id="2QPHU78gKHO" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3cpWs8" id="2OLty_fkByK" role="8Wnug">
                <node concept="3cpWsn" id="2OLty_fkByL" role="3cpWs9">
                  <property role="TrG5h" value="ndp" />
                  <node concept="3uibUv" id="2OLty_fkByM" role="1tU5fm">
                    <ref role="3uigEE" to="s1v1:~NumberingDefinitionsPart" resolve="NumberingDefinitionsPart" />
                  </node>
                  <node concept="2OqwBi" id="2OLty_fk_uo" role="33vP2m">
                    <node concept="37vLTw" id="2OLty_fk$bi" role="2Oq$k0">
                      <ref role="3cqZAo" node="5DN9oCMsExE" resolve="templateMainDocumentPart" />
                    </node>
                    <node concept="liA8E" id="2OLty_fkAtX" role="2OqNvi">
                      <ref role="37wK5l" to="s1v1:~DocumentPart.getNumberingDefinitionsPart()" resolve="getNumberingDefinitionsPart" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="2QPHU78gIGH" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="2OLty_fkDdr" role="8Wnug">
                <node concept="2OqwBi" id="2OLty_fkIsZ" role="3clFbG">
                  <node concept="2OqwBi" id="2OLty_fkEz4" role="2Oq$k0">
                    <node concept="37vLTw" id="2OLty_fkDdp" role="2Oq$k0">
                      <ref role="3cqZAo" node="2RpYLN7ig0v" resolve="mainDocumentPart" />
                    </node>
                    <node concept="liA8E" id="2OLty_fkHNl" role="2OqNvi">
                      <ref role="37wK5l" to="s1v1:~DocumentPart.getNumberingDefinitionsPart()" resolve="getNumberingDefinitionsPart" />
                    </node>
                  </node>
                  <node concept="liA8E" id="2OLty_fkMaF" role="2OqNvi">
                    <ref role="37wK5l" to="8prx:~JaxbXmlPartXPathAware.setJaxbElement(java.lang.Object)" resolve="setJaxbElement" />
                    <node concept="2OqwBi" id="2OLty_fkNYS" role="37wK5m">
                      <node concept="37vLTw" id="2OLty_fkN9k" role="2Oq$k0">
                        <ref role="3cqZAo" node="2OLty_fkByL" resolve="ndp" />
                      </node>
                      <node concept="liA8E" id="2OLty_fkSFt" role="2OqNvi">
                        <ref role="37wK5l" to="8prx:~JaxbXmlPart.getJaxbElement()" resolve="getJaxbElement" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2QPHU78gC$V" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="2QPHU78gC$X" role="TEbGg">
            <node concept="3clFbS" id="2QPHU78gC_3" role="TDEfX" />
            <node concept="3cpWsn" id="2QPHU78gCPc" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="2QPHU78gCPd" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2OLty_fkzOT" role="3cqZAp" />
      </node>
    </node>
    <node concept="13i0hz" id="2QPHU78qNB5" role="13h7CS">
      <property role="TrG5h" value="absPath2Solution4Model" />
      <node concept="3clFbS" id="WB9a1LKWYS" role="3clF47">
        <node concept="3cpWs8" id="WB9a1LKWYT" role="3cqZAp">
          <node concept="3cpWsn" id="WB9a1LKWYU" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="WB9a1LKWYV" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
            <node concept="2OqwBi" id="WB9a1LKWYW" role="33vP2m">
              <node concept="2JrnkZ" id="WB9a1LKWYX" role="2Oq$k0">
                <node concept="37vLTw" id="WB9a1LKWYY" role="2JrQYb">
                  <ref role="3cqZAo" node="WB9a1LKWYP" resolve="aModel" />
                </node>
              </node>
              <node concept="liA8E" id="WB9a1LKWYZ" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="WB9a1LKWZ0" role="3cqZAp">
          <node concept="1Wc70l" id="WB9a1LKWZ1" role="3clFbw">
            <node concept="2ZW3vV" id="WB9a1LKWZ2" role="3uHU7B">
              <node concept="37vLTw" id="WB9a1LKWZ3" role="2ZW6bz">
                <ref role="3cqZAo" node="WB9a1LKWYU" resolve="module" />
              </node>
              <node concept="3uibUv" id="WB9a1LKWZ4" role="2ZW6by">
                <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
              </node>
            </node>
            <node concept="3y3z36" id="WB9a1LKWZ5" role="3uHU7w">
              <node concept="2OqwBi" id="WB9a1LKWZ6" role="3uHU7B">
                <node concept="1eOMI4" id="WB9a1LKWZ7" role="2Oq$k0">
                  <node concept="10QFUN" id="WB9a1LKWZ8" role="1eOMHV">
                    <node concept="37vLTw" id="WB9a1LKWZ9" role="10QFUP">
                      <ref role="3cqZAo" node="WB9a1LKWYU" resolve="module" />
                    </node>
                    <node concept="3uibUv" id="WB9a1LKWZa" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="WB9a1LKWZb" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                </node>
              </node>
              <node concept="10Nm6u" id="WB9a1LKWZc" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="WB9a1LKWZd" role="3clFbx">
            <node concept="3cpWs8" id="WB9a1LKWZe" role="3cqZAp">
              <node concept="3cpWsn" id="WB9a1LKWZf" role="3cpWs9">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="s" />
                <node concept="3uibUv" id="WB9a1LKWZg" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                </node>
                <node concept="1eOMI4" id="WB9a1LKWZh" role="33vP2m">
                  <node concept="10QFUN" id="WB9a1LKWZi" role="1eOMHV">
                    <node concept="37vLTw" id="WB9a1LKWZj" role="10QFUP">
                      <ref role="3cqZAo" node="WB9a1LKWYU" resolve="module" />
                    </node>
                    <node concept="3uibUv" id="WB9a1LKWZk" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="WB9a1LKWZl" role="3cqZAp">
              <node concept="1Wc70l" id="WB9a1LKWZm" role="3clFbw">
                <node concept="2OqwBi" id="WB9a1LKWZn" role="3uHU7B">
                  <node concept="37vLTw" id="WB9a1LKWZo" role="2Oq$k0">
                    <ref role="3cqZAo" node="WB9a1LKWZf" resolve="s" />
                  </node>
                  <node concept="liA8E" id="WB9a1LKWZp" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~AbstractModule.isPackaged()" resolve="isPackaged" />
                  </node>
                </node>
                <node concept="3y3z36" id="WB9a1LKWZq" role="3uHU7w">
                  <node concept="2OqwBi" id="WB9a1LKWZr" role="3uHU7B">
                    <node concept="2OqwBi" id="WB9a1LKWZs" role="2Oq$k0">
                      <node concept="37vLTw" id="WB9a1LKWZt" role="2Oq$k0">
                        <ref role="3cqZAo" node="WB9a1LKWZf" resolve="s" />
                      </node>
                      <node concept="liA8E" id="WB9a1LKWZu" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                      </node>
                    </node>
                    <node concept="liA8E" id="WB9a1LKWZv" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.getBundleHome()" resolve="getBundleHome" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="WB9a1LKWZw" role="3uHU7w" />
                </node>
              </node>
              <node concept="3clFbS" id="WB9a1LKWZx" role="3clFbx">
                <node concept="3cpWs8" id="WB9a1LKWZy" role="3cqZAp">
                  <node concept="3cpWsn" id="WB9a1LKWZz" role="3cpWs9">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="bundleHome" />
                    <node concept="3uibUv" id="WB9a1LKWZ$" role="1tU5fm">
                      <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                    </node>
                    <node concept="2OqwBi" id="WB9a1LKWZ_" role="33vP2m">
                      <node concept="2OqwBi" id="WB9a1LKWZA" role="2Oq$k0">
                        <node concept="37vLTw" id="WB9a1LKWZB" role="2Oq$k0">
                          <ref role="3cqZAo" node="WB9a1LKWZf" resolve="s" />
                        </node>
                        <node concept="liA8E" id="WB9a1LKWZC" role="2OqNvi">
                          <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                        </node>
                      </node>
                      <node concept="liA8E" id="WB9a1LKWZD" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getBundleHome()" resolve="getBundleHome" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="WB9a1LKWZE" role="3cqZAp">
                  <node concept="2OqwBi" id="2QPHU78fQZS" role="3cqZAk">
                    <node concept="2OqwBi" id="WB9a1LKWZF" role="2Oq$k0">
                      <node concept="2OqwBi" id="WB9a1LKWZG" role="2Oq$k0">
                        <node concept="37vLTw" id="WB9a1LKWZH" role="2Oq$k0">
                          <ref role="3cqZAo" node="WB9a1LKWZz" resolve="bundleHome" />
                        </node>
                        <node concept="liA8E" id="WB9a1LKWZI" role="2OqNvi">
                          <ref role="37wK5l" to="3ju5:~IFile.getFileSystem()" resolve="getFileSystem" />
                        </node>
                      </node>
                      <node concept="liA8E" id="WB9a1LKWZJ" role="2OqNvi">
                        <ref role="37wK5l" to="w827:~FileSystem.getFile(java.lang.String)" resolve="getFile" />
                        <node concept="2OqwBi" id="WB9a1LKWZM" role="37wK5m">
                          <node concept="37vLTw" id="WB9a1LKWZN" role="2Oq$k0">
                            <ref role="3cqZAo" node="WB9a1LKWZz" resolve="bundleHome" />
                          </node>
                          <node concept="liA8E" id="WB9a1LKWZO" role="2OqNvi">
                            <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="2QPHU78fV6u" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="WB9a1LKWZR" role="3cqZAp">
              <node concept="2OqwBi" id="2QPHU78fQ3n" role="3cqZAk">
                <node concept="2OqwBi" id="WB9a1LKWZT" role="2Oq$k0">
                  <node concept="37vLTw" id="WB9a1LKWZU" role="2Oq$k0">
                    <ref role="3cqZAo" node="WB9a1LKWZf" resolve="s" />
                  </node>
                  <node concept="liA8E" id="WB9a1LKWZV" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                  </node>
                </node>
                <node concept="liA8E" id="2QPHU78fQr8" role="2OqNvi">
                  <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="WB9a1LKWZY" role="3cqZAp">
          <node concept="10Nm6u" id="WB9a1LKWZZ" role="3cqZAk" />
        </node>
      </node>
      <node concept="17QB3L" id="2QPHU78fPLL" role="3clF45" />
      <node concept="37vLTG" id="WB9a1LKWYP" role="3clF46">
        <property role="TrG5h" value="aModel" />
        <node concept="H_c77" id="WB9a1LKWYQ" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2Othy1h6EwV" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="3UTNk5VeTOw" role="13h7CW">
      <node concept="3clFbS" id="3UTNk5VeTOx" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="2RpYLN7f$To">
    <ref role="13h7C2" to="hgfn:2RpYLN7f$Tk" resolve="DocxParagraph" />
    <node concept="13hLZK" id="2RpYLN7f$Tp" role="13h7CW">
      <node concept="3clFbS" id="2RpYLN7f$Tq" role="2VODD2">
        <node concept="3clFbF" id="2RpYLN7hens" role="3cqZAp">
          <node concept="37vLTI" id="2RpYLN7hf9k" role="3clFbG">
            <node concept="Xl_RD" id="2RpYLN7hf9A" role="37vLTx">
              <property role="Xl_RC" value="Normal" />
            </node>
            <node concept="2OqwBi" id="2RpYLN7hevg" role="37vLTJ">
              <node concept="13iPFW" id="2RpYLN7henr" role="2Oq$k0" />
              <node concept="3TrcHB" id="2RpYLN7heIU" role="2OqNvi">
                <ref role="3TsBF5" to="hgfn:2RpYLN7has9" resolve="style" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2RpYLN7gos5" role="13h7CS">
      <property role="TrG5h" value="genPOLD" />
      <node concept="37vLTG" id="2RpYLN7goFH" role="3clF46">
        <property role="TrG5h" value="theMainPart" />
        <node concept="3uibUv" id="2RpYLN7goFI" role="1tU5fm">
          <ref role="3uigEE" to="s1v1:~MainDocumentPart" resolve="MainDocumentPart" />
        </node>
      </node>
      <node concept="37vLTG" id="2RpYLN7goLE" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="2RpYLN7goLF" role="1tU5fm">
          <ref role="3uigEE" to="vgdk:~ObjectFactory" resolve="ObjectFactory" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2RpYLN7gos6" role="1B3o_S" />
      <node concept="3cqZAl" id="2RpYLN7goBQ" role="3clF45" />
      <node concept="3clFbS" id="2RpYLN7gos8" role="3clF47">
        <node concept="3cpWs8" id="2RpYLN7goOX" role="3cqZAp">
          <node concept="3cpWsn" id="2RpYLN7goOY" role="3cpWs9">
            <property role="TrG5h" value="p" />
            <node concept="3uibUv" id="2RpYLN7goOZ" role="1tU5fm">
              <ref role="3uigEE" to="vgdk:~P" resolve="P" />
            </node>
            <node concept="2OqwBi" id="2RpYLN7goP0" role="33vP2m">
              <node concept="37vLTw" id="2RpYLN7goP1" role="2Oq$k0">
                <ref role="3cqZAo" node="2RpYLN7goLE" resolve="factory" />
              </node>
              <node concept="liA8E" id="2RpYLN7goP2" role="2OqNvi">
                <ref role="37wK5l" to="vgdk:~ObjectFactory.createP()" resolve="createP" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7gA$Y" role="3cqZAp">
          <node concept="2OqwBi" id="2RpYLN7gCGd" role="3clFbG">
            <node concept="2OqwBi" id="2RpYLN7gAM7" role="2Oq$k0">
              <node concept="13iPFW" id="2RpYLN7gA$W" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2RpYLN7gAZJ" role="2OqNvi">
                <ref role="3TtcxE" to="hgfn:2RpYLN7gnds" resolve="runs" />
              </node>
            </node>
            <node concept="2es0OD" id="2RpYLN7gFJO" role="2OqNvi">
              <node concept="1bVj0M" id="2RpYLN7gFJQ" role="23t8la">
                <node concept="3clFbS" id="2RpYLN7gFJR" role="1bW5cS">
                  <node concept="3clFbF" id="2RpYLN7gFPw" role="3cqZAp">
                    <node concept="2OqwBi" id="2RpYLN7gFYD" role="3clFbG">
                      <node concept="37vLTw" id="2RpYLN7gFPv" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RpYLN7gFJS" resolve="it" />
                      </node>
                      <node concept="2qgKlT" id="2RpYLN7gGbP" role="2OqNvi">
                        <ref role="37wK5l" node="2RpYLN7gp8I" resolve="genR" />
                        <node concept="37vLTw" id="2RpYLN7gGjS" role="37wK5m">
                          <ref role="3cqZAo" node="2RpYLN7goOY" resolve="p" />
                        </node>
                        <node concept="37vLTw" id="2RpYLN7gH56" role="37wK5m">
                          <ref role="3cqZAo" node="2RpYLN7goLE" resolve="factory" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2RpYLN7gFJS" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2RpYLN7gFJT" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7goUO" role="3cqZAp">
          <node concept="2OqwBi" id="2RpYLN7goUQ" role="3clFbG">
            <node concept="2OqwBi" id="2RpYLN7goUR" role="2Oq$k0">
              <node concept="37vLTw" id="2RpYLN7goUS" role="2Oq$k0">
                <ref role="3cqZAo" node="2RpYLN7goFH" resolve="theMainPart" />
              </node>
              <node concept="liA8E" id="2RpYLN7goUT" role="2OqNvi">
                <ref role="37wK5l" to="s1v1:~MainDocumentPart.getContent()" resolve="getContent" />
              </node>
            </node>
            <node concept="liA8E" id="2RpYLN7goUU" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="2RpYLN7goUV" role="37wK5m">
                <ref role="3cqZAo" node="2RpYLN7goOY" resolve="p" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="2RpYLN7gHVY" role="3cqZAp">
          <node concept="3SKdUq" id="2RpYLN7gHW0" role="3SKWNk">
            <property role="3SKdUp" value=" add paragraph style if set" />
          </node>
        </node>
        <node concept="3clFbJ" id="2RpYLN7hcaH" role="3cqZAp">
          <node concept="3clFbS" id="2RpYLN7hcaJ" role="3clFbx">
            <node concept="3cpWs8" id="2RpYLN7h3u5" role="3cqZAp">
              <node concept="3cpWsn" id="2RpYLN7h3u4" role="3cpWs9">
                <property role="TrG5h" value="ppr" />
                <node concept="3uibUv" id="2RpYLN7h3u6" role="1tU5fm">
                  <ref role="3uigEE" to="vgdk:~PPr" resolve="PPr" />
                </node>
                <node concept="2OqwBi" id="2RpYLN7h3Wv" role="33vP2m">
                  <node concept="37vLTw" id="2RpYLN7h3Y1" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RpYLN7goLE" resolve="factory" />
                  </node>
                  <node concept="liA8E" id="2RpYLN7h3Ww" role="2OqNvi">
                    <ref role="37wK5l" to="vgdk:~ObjectFactory.createPPr()" resolve="createPPr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RpYLN7h3u8" role="3cqZAp">
              <node concept="2OqwBi" id="2RpYLN7h3Hv" role="3clFbG">
                <node concept="37vLTw" id="2RpYLN7h3Hu" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RpYLN7goOY" resolve="p" />
                </node>
                <node concept="liA8E" id="2RpYLN7h3Hw" role="2OqNvi">
                  <ref role="37wK5l" to="vgdk:~P.setPPr(org.docx4j.wml.PPr)" resolve="setPPr" />
                  <node concept="37vLTw" id="2RpYLN7h3Hx" role="37wK5m">
                    <ref role="3cqZAo" node="2RpYLN7h3u4" resolve="ppr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="2RpYLN7h3um" role="3cqZAp">
              <node concept="3SKdUq" id="2RpYLN7h3ul" role="3SKWNk">
                <property role="3SKdUp" value="Create object for pStyle" />
              </node>
            </node>
            <node concept="3cpWs8" id="2RpYLN7h3uc" role="3cqZAp">
              <node concept="3cpWsn" id="2RpYLN7h3ub" role="3cpWs9">
                <property role="TrG5h" value="pprbasepstyle" />
                <node concept="3uibUv" id="2RpYLN7h3ud" role="1tU5fm">
                  <ref role="3uigEE" to="vgdk:~PPrBase$PStyle" resolve="PPrBase.PStyle" />
                </node>
                <node concept="2OqwBi" id="2RpYLN7h41B" role="33vP2m">
                  <node concept="37vLTw" id="2RpYLN7h42W" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RpYLN7goLE" resolve="factory" />
                  </node>
                  <node concept="liA8E" id="2RpYLN7h41C" role="2OqNvi">
                    <ref role="37wK5l" to="vgdk:~ObjectFactory.createPPrBasePStyle()" resolve="createPPrBasePStyle" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RpYLN7h3uf" role="3cqZAp">
              <node concept="2OqwBi" id="2RpYLN7h3IB" role="3clFbG">
                <node concept="37vLTw" id="2RpYLN7h3IA" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RpYLN7h3u4" resolve="ppr" />
                </node>
                <node concept="liA8E" id="2RpYLN7h3IC" role="2OqNvi">
                  <ref role="37wK5l" to="vgdk:~PPrBase.setPStyle(org.docx4j.wml.PPrBase$PStyle)" resolve="setPStyle" />
                  <node concept="37vLTw" id="2RpYLN7h3ID" role="37wK5m">
                    <ref role="3cqZAo" node="2RpYLN7h3ub" resolve="pprbasepstyle" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RpYLN7h3ui" role="3cqZAp">
              <node concept="2OqwBi" id="2RpYLN7h3Kh" role="3clFbG">
                <node concept="37vLTw" id="2RpYLN7h3Kg" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RpYLN7h3ub" resolve="pprbasepstyle" />
                </node>
                <node concept="liA8E" id="2RpYLN7h3Ki" role="2OqNvi">
                  <ref role="37wK5l" to="vgdk:~PPrBase$PStyle.setVal(java.lang.String)" resolve="setVal" />
                  <node concept="2OqwBi" id="2RpYLN7hfKs" role="37wK5m">
                    <node concept="13iPFW" id="2RpYLN7hf$M" role="2Oq$k0" />
                    <node concept="3TrcHB" id="2RpYLN7hg0s" role="2OqNvi">
                      <ref role="3TsBF5" to="hgfn:2RpYLN7has9" resolve="style" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2RpYLN7hcaI" role="3cqZAp" />
          </node>
          <node concept="2OqwBi" id="2RpYLN7hdud" role="3clFbw">
            <node concept="2OqwBi" id="2RpYLN7hcEu" role="2Oq$k0">
              <node concept="13iPFW" id="2RpYLN7hcrr" role="2Oq$k0" />
              <node concept="3TrcHB" id="2RpYLN7hcZE" role="2OqNvi">
                <ref role="3TsBF5" to="hgfn:2RpYLN7has9" resolve="style" />
              </node>
            </node>
            <node concept="17RvpY" id="2RpYLN7hel3" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="2RpYLN7h3fg" role="3cqZAp" />
      </node>
    </node>
    <node concept="13i0hz" id="4sixqEheGjo" role="13h7CS">
      <property role="TrG5h" value="GenP" />
      <ref role="13i0hy" node="4sixqEheup$" resolve="GenP" />
      <node concept="3Tm1VV" id="4sixqEheGjt" role="1B3o_S" />
      <node concept="3clFbS" id="4sixqEheGjw" role="3clF47">
        <node concept="3cpWs8" id="4sixqEheHM9" role="3cqZAp">
          <node concept="3cpWsn" id="4sixqEheHMa" role="3cpWs9">
            <property role="TrG5h" value="p" />
            <node concept="3uibUv" id="4sixqEheHMb" role="1tU5fm">
              <ref role="3uigEE" to="vgdk:~P" resolve="P" />
            </node>
            <node concept="2OqwBi" id="4sixqEheHMc" role="33vP2m">
              <node concept="37vLTw" id="4sixqEheHMd" role="2Oq$k0">
                <ref role="3cqZAo" node="4sixqEheGjz" resolve="factory" />
              </node>
              <node concept="liA8E" id="4sixqEheHMe" role="2OqNvi">
                <ref role="37wK5l" to="vgdk:~ObjectFactory.createP()" resolve="createP" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sixqEheHMf" role="3cqZAp">
          <node concept="2OqwBi" id="4sixqEheHMg" role="3clFbG">
            <node concept="2OqwBi" id="4sixqEheHMh" role="2Oq$k0">
              <node concept="13iPFW" id="4sixqEheHMi" role="2Oq$k0" />
              <node concept="3Tsc0h" id="4sixqEheHMj" role="2OqNvi">
                <ref role="3TtcxE" to="hgfn:2RpYLN7gnds" resolve="runs" />
              </node>
            </node>
            <node concept="2es0OD" id="4sixqEheHMk" role="2OqNvi">
              <node concept="1bVj0M" id="4sixqEheHMl" role="23t8la">
                <node concept="3clFbS" id="4sixqEheHMm" role="1bW5cS">
                  <node concept="3clFbF" id="4sixqEheHMn" role="3cqZAp">
                    <node concept="2OqwBi" id="4sixqEheHMo" role="3clFbG">
                      <node concept="37vLTw" id="4sixqEheHMp" role="2Oq$k0">
                        <ref role="3cqZAo" node="4sixqEheHMt" resolve="it" />
                      </node>
                      <node concept="2qgKlT" id="4sixqEheHMq" role="2OqNvi">
                        <ref role="37wK5l" node="2RpYLN7gp8I" resolve="genR" />
                        <node concept="37vLTw" id="4sixqEheHMr" role="37wK5m">
                          <ref role="3cqZAo" node="4sixqEheHMa" resolve="p" />
                        </node>
                        <node concept="37vLTw" id="4sixqEheHMs" role="37wK5m">
                          <ref role="3cqZAo" node="4sixqEheGjz" resolve="factory" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4sixqEheHMt" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4sixqEheHMu" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4sixqEheHMv" role="3cqZAp">
          <node concept="2OqwBi" id="4sixqEheHMw" role="3clFbG">
            <node concept="2OqwBi" id="4sixqEheHMx" role="2Oq$k0">
              <node concept="37vLTw" id="4sixqEheHMy" role="2Oq$k0">
                <ref role="3cqZAo" node="4sixqEheGjx" resolve="theMainPart" />
              </node>
              <node concept="liA8E" id="4sixqEheHMz" role="2OqNvi">
                <ref role="37wK5l" to="s1v1:~MainDocumentPart.getContent()" resolve="getContent" />
              </node>
            </node>
            <node concept="liA8E" id="4sixqEheHM$" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="4sixqEheHM_" role="37wK5m">
                <ref role="3cqZAo" node="4sixqEheHMa" resolve="p" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="4sixqEheHMA" role="3cqZAp">
          <node concept="3SKdUq" id="4sixqEheHMB" role="3SKWNk">
            <property role="3SKdUp" value=" add paragraph style if set" />
          </node>
        </node>
        <node concept="3clFbJ" id="4sixqEheHMC" role="3cqZAp">
          <node concept="3clFbS" id="4sixqEheHMD" role="3clFbx">
            <node concept="3cpWs8" id="4sixqEheHME" role="3cqZAp">
              <node concept="3cpWsn" id="4sixqEheHMF" role="3cpWs9">
                <property role="TrG5h" value="ppr" />
                <node concept="3uibUv" id="4sixqEheHMG" role="1tU5fm">
                  <ref role="3uigEE" to="vgdk:~PPr" resolve="PPr" />
                </node>
                <node concept="2OqwBi" id="4sixqEheHMH" role="33vP2m">
                  <node concept="37vLTw" id="4sixqEheHMI" role="2Oq$k0">
                    <ref role="3cqZAo" node="4sixqEheGjz" resolve="factory" />
                  </node>
                  <node concept="liA8E" id="4sixqEheHMJ" role="2OqNvi">
                    <ref role="37wK5l" to="vgdk:~ObjectFactory.createPPr()" resolve="createPPr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4sixqEheHMK" role="3cqZAp">
              <node concept="2OqwBi" id="4sixqEheHML" role="3clFbG">
                <node concept="37vLTw" id="4sixqEheHMM" role="2Oq$k0">
                  <ref role="3cqZAo" node="4sixqEheHMa" resolve="p" />
                </node>
                <node concept="liA8E" id="4sixqEheHMN" role="2OqNvi">
                  <ref role="37wK5l" to="vgdk:~P.setPPr(org.docx4j.wml.PPr)" resolve="setPPr" />
                  <node concept="37vLTw" id="4sixqEheHMO" role="37wK5m">
                    <ref role="3cqZAo" node="4sixqEheHMF" resolve="ppr" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3SKdUt" id="4sixqEheHMP" role="3cqZAp">
              <node concept="3SKdUq" id="4sixqEheHMQ" role="3SKWNk">
                <property role="3SKdUp" value="Create object for pStyle" />
              </node>
            </node>
            <node concept="3cpWs8" id="4sixqEheHMR" role="3cqZAp">
              <node concept="3cpWsn" id="4sixqEheHMS" role="3cpWs9">
                <property role="TrG5h" value="pprbasepstyle" />
                <node concept="3uibUv" id="4sixqEheHMT" role="1tU5fm">
                  <ref role="3uigEE" to="vgdk:~PPrBase$PStyle" resolve="PPrBase.PStyle" />
                </node>
                <node concept="2OqwBi" id="4sixqEheHMU" role="33vP2m">
                  <node concept="37vLTw" id="4sixqEheHMV" role="2Oq$k0">
                    <ref role="3cqZAo" node="4sixqEheGjz" resolve="factory" />
                  </node>
                  <node concept="liA8E" id="4sixqEheHMW" role="2OqNvi">
                    <ref role="37wK5l" to="vgdk:~ObjectFactory.createPPrBasePStyle()" resolve="createPPrBasePStyle" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4sixqEheHMX" role="3cqZAp">
              <node concept="2OqwBi" id="4sixqEheHMY" role="3clFbG">
                <node concept="37vLTw" id="4sixqEheHMZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4sixqEheHMF" resolve="ppr" />
                </node>
                <node concept="liA8E" id="4sixqEheHN0" role="2OqNvi">
                  <ref role="37wK5l" to="vgdk:~PPrBase.setPStyle(org.docx4j.wml.PPrBase$PStyle)" resolve="setPStyle" />
                  <node concept="37vLTw" id="4sixqEheHN1" role="37wK5m">
                    <ref role="3cqZAo" node="4sixqEheHMS" resolve="pprbasepstyle" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4sixqEheHN2" role="3cqZAp">
              <node concept="2OqwBi" id="4sixqEheHN3" role="3clFbG">
                <node concept="37vLTw" id="4sixqEheHN4" role="2Oq$k0">
                  <ref role="3cqZAo" node="4sixqEheHMS" resolve="pprbasepstyle" />
                </node>
                <node concept="liA8E" id="4sixqEheHN5" role="2OqNvi">
                  <ref role="37wK5l" to="vgdk:~PPrBase$PStyle.setVal(java.lang.String)" resolve="setVal" />
                  <node concept="2OqwBi" id="4sixqEheHN6" role="37wK5m">
                    <node concept="13iPFW" id="4sixqEheHN7" role="2Oq$k0" />
                    <node concept="3TrcHB" id="4sixqEheHN8" role="2OqNvi">
                      <ref role="3TsBF5" to="hgfn:2RpYLN7has9" resolve="style" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4sixqEheHNa" role="3clFbw">
            <node concept="2OqwBi" id="4sixqEheHNb" role="2Oq$k0">
              <node concept="13iPFW" id="4sixqEheHNc" role="2Oq$k0" />
              <node concept="3TrcHB" id="4sixqEheHNd" role="2OqNvi">
                <ref role="3TsBF5" to="hgfn:2RpYLN7has9" resolve="style" />
              </node>
            </node>
            <node concept="17RvpY" id="4sixqEheHNe" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4sixqEheGjx" role="3clF46">
        <property role="TrG5h" value="theMainPart" />
        <node concept="3uibUv" id="4sixqEheGjy" role="1tU5fm">
          <ref role="3uigEE" to="s1v1:~MainDocumentPart" resolve="MainDocumentPart" />
        </node>
      </node>
      <node concept="37vLTG" id="4sixqEheGjz" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="4sixqEheGj$" role="1tU5fm">
          <ref role="3uigEE" to="vgdk:~ObjectFactory" resolve="ObjectFactory" />
        </node>
      </node>
      <node concept="3cqZAl" id="4sixqEheGj_" role="3clF45" />
    </node>
  </node>
  <node concept="13h7C7" id="2RpYLN7gp8z">
    <ref role="13h7C2" to="hgfn:2RpYLN7gndo" resolve="DocxRun" />
    <node concept="13i0hz" id="2RpYLN7gp8I" role="13h7CS">
      <property role="TrG5h" value="genR" />
      <node concept="3Tm1VV" id="2RpYLN7gp8J" role="1B3o_S" />
      <node concept="3cqZAl" id="2RpYLN7gp92" role="3clF45" />
      <node concept="3clFbS" id="2RpYLN7gp8L" role="3clF47">
        <node concept="3cpWs8" id="2RpYLN7gp9u" role="3cqZAp">
          <node concept="3cpWsn" id="2RpYLN7gp9v" role="3cpWs9">
            <property role="TrG5h" value="theRun" />
            <node concept="3uibUv" id="2RpYLN7gp9w" role="1tU5fm">
              <ref role="3uigEE" to="vgdk:~R" resolve="R" />
            </node>
            <node concept="2OqwBi" id="2RpYLN7gp9x" role="33vP2m">
              <node concept="37vLTw" id="2RpYLN7gsMl" role="2Oq$k0">
                <ref role="3cqZAo" node="2RpYLN7gpAJ" resolve="factory" />
              </node>
              <node concept="liA8E" id="2RpYLN7gp9z" role="2OqNvi">
                <ref role="37wK5l" to="vgdk:~ObjectFactory.createR()" resolve="createR" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7gtvi" role="3cqZAp">
          <node concept="2OqwBi" id="2RpYLN7gvSY" role="3clFbG">
            <node concept="2OqwBi" id="2RpYLN7gtIN" role="2Oq$k0">
              <node concept="13iPFW" id="2RpYLN7gtvg" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2RpYLN7gubE" role="2OqNvi">
                <ref role="3TtcxE" to="hgfn:2RpYLN7gndD" resolve="texts" />
              </node>
            </node>
            <node concept="2es0OD" id="2RpYLN7gyUB" role="2OqNvi">
              <node concept="1bVj0M" id="2RpYLN7gyUD" role="23t8la">
                <node concept="3clFbS" id="2RpYLN7gyUE" role="1bW5cS">
                  <node concept="3clFbF" id="2RpYLN7gz0j" role="3cqZAp">
                    <node concept="2OqwBi" id="2RpYLN7gz9s" role="3clFbG">
                      <node concept="37vLTw" id="2RpYLN7gz0i" role="2Oq$k0">
                        <ref role="3cqZAo" node="2RpYLN7gyUF" resolve="it" />
                      </node>
                      <node concept="2qgKlT" id="2RpYLN7g$rc" role="2OqNvi">
                        <ref role="37wK5l" node="2RpYLN7gpWy" resolve="genT" />
                        <node concept="37vLTw" id="2RpYLN7g_cu" role="37wK5m">
                          <ref role="3cqZAo" node="2RpYLN7gp9v" resolve="theRun" />
                        </node>
                        <node concept="37vLTw" id="2RpYLN7g_ua" role="37wK5m">
                          <ref role="3cqZAo" node="2RpYLN7gpAJ" resolve="factory" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="2RpYLN7gyUF" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="2RpYLN7gyUG" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7gp9Q" role="3cqZAp">
          <node concept="2OqwBi" id="2RpYLN7gp9R" role="3clFbG">
            <node concept="2OqwBi" id="2RpYLN7gp9S" role="2Oq$k0">
              <node concept="liA8E" id="2RpYLN7gp9U" role="2OqNvi">
                <ref role="37wK5l" to="vgdk:~P.getContent()" resolve="getContent" />
              </node>
              <node concept="37vLTw" id="2RpYLN7g_FF" role="2Oq$k0">
                <ref role="3cqZAo" node="2RpYLN7gpsz" resolve="theParagraph" />
              </node>
            </node>
            <node concept="liA8E" id="2RpYLN7gp9V" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="2RpYLN7gp9W" role="37wK5m">
                <ref role="3cqZAo" node="2RpYLN7gp9v" resolve="theRun" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2RpYLN7gtfg" role="3cqZAp" />
        <node concept="3cpWs8" id="2RpYLN7gp9X" role="3cqZAp">
          <node concept="3cpWsn" id="2RpYLN7gp9Y" role="3cpWs9">
            <property role="TrG5h" value="rpr" />
            <node concept="3uibUv" id="2RpYLN7gp9Z" role="1tU5fm">
              <ref role="3uigEE" to="vgdk:~RPr" resolve="RPr" />
            </node>
            <node concept="2OqwBi" id="2RpYLN7gpa0" role="33vP2m">
              <node concept="37vLTw" id="2RpYLN7g_M7" role="2Oq$k0">
                <ref role="3cqZAo" node="2RpYLN7gpAJ" resolve="factory" />
              </node>
              <node concept="liA8E" id="2RpYLN7gpa2" role="2OqNvi">
                <ref role="37wK5l" to="vgdk:~ObjectFactory.createRPr()" resolve="createRPr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RpYLN7gpa3" role="3cqZAp">
          <node concept="3cpWsn" id="2RpYLN7gpa4" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="3uibUv" id="2RpYLN7gpa5" role="1tU5fm">
              <ref role="3uigEE" to="vgdk:~BooleanDefaultTrue" resolve="BooleanDefaultTrue" />
            </node>
            <node concept="2ShNRf" id="2RpYLN7gpa6" role="33vP2m">
              <node concept="1pGfFk" id="2RpYLN7gpa7" role="2ShVmc">
                <ref role="37wK5l" to="vgdk:~BooleanDefaultTrue.&lt;init&gt;()" resolve="BooleanDefaultTrue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2RpYLN7hF2V" role="3cqZAp">
          <property role="TyiWL" value="true" />
          <node concept="3clFbS" id="2RpYLN7hF2X" role="3clFbx">
            <node concept="3clFbF" id="2RpYLN7gpa8" role="3cqZAp">
              <node concept="2OqwBi" id="2RpYLN7gpa9" role="3clFbG">
                <node concept="37vLTw" id="2RpYLN7gpaa" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RpYLN7gp9Y" resolve="rpr" />
                </node>
                <node concept="liA8E" id="2RpYLN7gpab" role="2OqNvi">
                  <ref role="37wK5l" to="vgdk:~RPrAbstract.setB(org.docx4j.wml.BooleanDefaultTrue)" resolve="setB" />
                  <node concept="37vLTw" id="2RpYLN7gpac" role="37wK5m">
                    <ref role="3cqZAo" node="2RpYLN7gpa4" resolve="b" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2RpYLN7hG7N" role="3clFbw">
            <node concept="2OqwBi" id="2RpYLN7hFxe" role="2Oq$k0">
              <node concept="13iPFW" id="2RpYLN7hFjf" role="2Oq$k0" />
              <node concept="3TrEf2" id="2RpYLN7hFPl" role="2OqNvi">
                <ref role="3Tt5mk" to="hgfn:2RpYLN7hvYl" resolve="props" />
              </node>
            </node>
            <node concept="3TrcHB" id="2RpYLN7hGBr" role="2OqNvi">
              <ref role="3TsBF5" to="hgfn:2RpYLN7hvXX" resolve="bold" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2RpYLN7hHw2" role="3cqZAp">
          <property role="TyiWL" value="true" />
          <node concept="3clFbS" id="2RpYLN7hHw4" role="3clFbx">
            <node concept="3clFbF" id="2RpYLN7gpad" role="3cqZAp">
              <node concept="2OqwBi" id="2RpYLN7gpae" role="3clFbG">
                <node concept="37vLTw" id="2RpYLN7gpaf" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RpYLN7gp9Y" resolve="rpr" />
                </node>
                <node concept="liA8E" id="2RpYLN7gpag" role="2OqNvi">
                  <ref role="37wK5l" to="vgdk:~RPrAbstract.setI(org.docx4j.wml.BooleanDefaultTrue)" resolve="setI" />
                  <node concept="37vLTw" id="2RpYLN7gpah" role="37wK5m">
                    <ref role="3cqZAo" node="2RpYLN7gpa4" resolve="b" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2RpYLN7hIAW" role="3clFbw">
            <node concept="2OqwBi" id="2RpYLN7hI0E" role="2Oq$k0">
              <node concept="13iPFW" id="2RpYLN7hHMF" role="2Oq$k0" />
              <node concept="3TrEf2" id="2RpYLN7hIg3" role="2OqNvi">
                <ref role="3Tt5mk" to="hgfn:2RpYLN7hvYl" resolve="props" />
              </node>
            </node>
            <node concept="3TrcHB" id="2RpYLN7hJ9n" role="2OqNvi">
              <ref role="3TsBF5" to="hgfn:2RpYLN7hvY0" resolve="italic" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2RpYLN7inUQ" role="3cqZAp">
          <node concept="3clFbS" id="2RpYLN7inUS" role="3clFbx">
            <node concept="3cpWs8" id="2RpYLN7iq8G" role="3cqZAp">
              <node concept="3cpWsn" id="2RpYLN7iq8F" role="3cpWs9">
                <property role="TrG5h" value="u2" />
                <node concept="3uibUv" id="2RpYLN7iq8H" role="1tU5fm">
                  <ref role="3uigEE" to="vgdk:~U" resolve="U" />
                </node>
                <node concept="2OqwBi" id="2RpYLN7iqgN" role="33vP2m">
                  <node concept="37vLTw" id="2RpYLN7iqh1" role="2Oq$k0">
                    <ref role="3cqZAo" node="2RpYLN7gpAJ" resolve="factory" />
                  </node>
                  <node concept="liA8E" id="2RpYLN7iqgO" role="2OqNvi">
                    <ref role="37wK5l" to="vgdk:~ObjectFactory.createU()" resolve="createU" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RpYLN7iq8J" role="3cqZAp">
              <node concept="2OqwBi" id="2RpYLN7iq9E" role="3clFbG">
                <node concept="37vLTw" id="2RpYLN7iq9D" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RpYLN7gp9Y" resolve="rpr" />
                </node>
                <node concept="liA8E" id="2RpYLN7iq9F" role="2OqNvi">
                  <ref role="37wK5l" to="vgdk:~RPrAbstract.setU(org.docx4j.wml.U)" resolve="setU" />
                  <node concept="37vLTw" id="2RpYLN7iq9G" role="37wK5m">
                    <ref role="3cqZAo" node="2RpYLN7iq8F" resolve="u2" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2RpYLN7iq8M" role="3cqZAp">
              <node concept="2OqwBi" id="2RpYLN7iqaG" role="3clFbG">
                <node concept="37vLTw" id="2RpYLN7iqaF" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RpYLN7iq8F" resolve="u2" />
                </node>
                <node concept="liA8E" id="2RpYLN7iqaH" role="2OqNvi">
                  <ref role="37wK5l" to="vgdk:~U.setVal(org.docx4j.wml.UnderlineEnumeration)" resolve="setVal" />
                  <node concept="Rm8GO" id="2RpYLN7iqex" role="37wK5m">
                    <ref role="1Px2BO" to="vgdk:~UnderlineEnumeration" resolve="UnderlineEnumeration" />
                    <ref role="Rm8GQ" to="vgdk:~UnderlineEnumeration.SINGLE" resolve="SINGLE" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2RpYLN7iplu" role="3clFbw">
            <node concept="2OqwBi" id="2RpYLN7ioqw" role="2Oq$k0">
              <node concept="13iPFW" id="2RpYLN7iodI" role="2Oq$k0" />
              <node concept="3TrEf2" id="2RpYLN7ioUM" role="2OqNvi">
                <ref role="3Tt5mk" to="hgfn:2RpYLN7hvYl" resolve="props" />
              </node>
            </node>
            <node concept="3TrcHB" id="2RpYLN7iq3C" role="2OqNvi">
              <ref role="3TsBF5" to="hgfn:2RpYLN7hvY5" resolve="underline" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2RpYLN7gpan" role="3cqZAp">
          <node concept="3cpWsn" id="2RpYLN7gpao" role="3cpWs9">
            <property role="TrG5h" value="color" />
            <node concept="3uibUv" id="2RpYLN7gpap" role="1tU5fm">
              <ref role="3uigEE" to="vgdk:~Color" resolve="Color" />
            </node>
            <node concept="2OqwBi" id="2RpYLN7gpaq" role="33vP2m">
              <node concept="liA8E" id="2RpYLN7gpar" role="2OqNvi">
                <ref role="37wK5l" to="vgdk:~ObjectFactory.createColor()" resolve="createColor" />
              </node>
              <node concept="37vLTw" id="2RpYLN7g_ZN" role="2Oq$k0">
                <ref role="3cqZAo" node="2RpYLN7gpAJ" resolve="factory" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7gpat" role="3cqZAp">
          <node concept="2OqwBi" id="2RpYLN7gpau" role="3clFbG">
            <node concept="37vLTw" id="2RpYLN7gpav" role="2Oq$k0">
              <ref role="3cqZAo" node="2RpYLN7gpao" resolve="color" />
            </node>
            <node concept="liA8E" id="2RpYLN7gpaw" role="2OqNvi">
              <ref role="37wK5l" to="vgdk:~Color.setVal(java.lang.String)" resolve="setVal" />
              <node concept="2OqwBi" id="2RpYLN7hKRA" role="37wK5m">
                <node concept="2OqwBi" id="2RpYLN7hKlO" role="2Oq$k0">
                  <node concept="13iPFW" id="2RpYLN7hKbM" role="2Oq$k0" />
                  <node concept="3TrEf2" id="2RpYLN7hKAZ" role="2OqNvi">
                    <ref role="3Tt5mk" to="hgfn:2RpYLN7hvYl" resolve="props" />
                  </node>
                </node>
                <node concept="3TrcHB" id="2RpYLN7hLn4" role="2OqNvi">
                  <ref role="3TsBF5" to="hgfn:2RpYLN7hvYc" resolve="color" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7gpay" role="3cqZAp">
          <node concept="2OqwBi" id="2RpYLN7gpaz" role="3clFbG">
            <node concept="37vLTw" id="2RpYLN7gpa$" role="2Oq$k0">
              <ref role="3cqZAo" node="2RpYLN7gp9Y" resolve="rpr" />
            </node>
            <node concept="liA8E" id="2RpYLN7gpa_" role="2OqNvi">
              <ref role="37wK5l" to="vgdk:~RPrAbstract.setColor(org.docx4j.wml.Color)" resolve="setColor" />
              <node concept="37vLTw" id="2RpYLN7gpaA" role="37wK5m">
                <ref role="3cqZAo" node="2RpYLN7gpao" resolve="color" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7gpaB" role="3cqZAp">
          <node concept="2OqwBi" id="2RpYLN7gpaC" role="3clFbG">
            <node concept="37vLTw" id="2RpYLN7gpaD" role="2Oq$k0">
              <ref role="3cqZAo" node="2RpYLN7gp9v" resolve="theRun" />
            </node>
            <node concept="liA8E" id="2RpYLN7gpaE" role="2OqNvi">
              <ref role="37wK5l" to="vgdk:~R.setRPr(org.docx4j.wml.RPr)" resolve="setRPr" />
              <node concept="37vLTw" id="2RpYLN7gpaF" role="37wK5m">
                <ref role="3cqZAo" node="2RpYLN7gp9Y" resolve="rpr" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2RpYLN7gsyp" role="3cqZAp" />
      </node>
      <node concept="37vLTG" id="2RpYLN7gpsz" role="3clF46">
        <property role="TrG5h" value="theParagraph" />
        <node concept="3uibUv" id="2RpYLN7gpsy" role="1tU5fm">
          <ref role="3uigEE" to="vgdk:~P" resolve="P" />
        </node>
      </node>
      <node concept="37vLTG" id="2RpYLN7gpAJ" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="2RpYLN7gpJT" role="1tU5fm">
          <ref role="3uigEE" to="vgdk:~ObjectFactory" resolve="ObjectFactory" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="2RpYLN7gp8$" role="13h7CW">
      <node concept="3clFbS" id="2RpYLN7gp8_" role="2VODD2">
        <node concept="3clFbF" id="2RpYLN7hwcs" role="3cqZAp">
          <node concept="37vLTI" id="2RpYLN7hx1u" role="3clFbG">
            <node concept="2ShNRf" id="2RpYLN7hx5S" role="37vLTx">
              <node concept="3zrR0B" id="2RpYLN7hx5Q" role="2ShVmc">
                <node concept="3Tqbb2" id="2RpYLN7hx5R" role="3zrR0E">
                  <ref role="ehGHo" to="hgfn:2RpYLN7hvXW" resolve="DocxRunProps" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2RpYLN7hwk8" role="37vLTJ">
              <node concept="13iPFW" id="2RpYLN7hwcr" role="2Oq$k0" />
              <node concept="3TrEf2" id="2RpYLN7hwGj" role="2OqNvi">
                <ref role="3Tt5mk" to="hgfn:2RpYLN7hvYl" resolve="props" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7hxcJ" role="3cqZAp">
          <node concept="37vLTI" id="2RpYLN7hzdZ" role="3clFbG">
            <node concept="3clFbT" id="2RpYLN7hzmc" role="37vLTx" />
            <node concept="2OqwBi" id="2RpYLN7hy5B" role="37vLTJ">
              <node concept="2OqwBi" id="2RpYLN7hxsb" role="2Oq$k0">
                <node concept="13iPFW" id="2RpYLN7hxcH" role="2Oq$k0" />
                <node concept="3TrEf2" id="2RpYLN7hxEX" role="2OqNvi">
                  <ref role="3Tt5mk" to="hgfn:2RpYLN7hvYl" resolve="props" />
                </node>
              </node>
              <node concept="3TrcHB" id="2RpYLN7hyz$" role="2OqNvi">
                <ref role="3TsBF5" to="hgfn:2RpYLN7hvXX" resolve="bold" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7hzvE" role="3cqZAp">
          <node concept="37vLTI" id="2RpYLN7h_zz" role="3clFbG">
            <node concept="3clFbT" id="2RpYLN7h_FL" role="37vLTx" />
            <node concept="2OqwBi" id="2RpYLN7h$ex" role="37vLTJ">
              <node concept="2OqwBi" id="2RpYLN7hzGr" role="2Oq$k0">
                <node concept="13iPFW" id="2RpYLN7hzvC" role="2Oq$k0" />
                <node concept="3TrEf2" id="2RpYLN7hzW5" role="2OqNvi">
                  <ref role="3Tt5mk" to="hgfn:2RpYLN7hvYl" resolve="props" />
                </node>
              </node>
              <node concept="3TrcHB" id="2RpYLN7h$Hk" role="2OqNvi">
                <ref role="3TsBF5" to="hgfn:2RpYLN7hvY0" resolve="italic" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7h_PQ" role="3cqZAp">
          <node concept="37vLTI" id="2RpYLN7hBPg" role="3clFbG">
            <node concept="3clFbT" id="2RpYLN7hBTX" role="37vLTx" />
            <node concept="2OqwBi" id="2RpYLN7hACK" role="37vLTJ">
              <node concept="2OqwBi" id="2RpYLN7hA4Y" role="2Oq$k0">
                <node concept="13iPFW" id="2RpYLN7h_PO" role="2Oq$k0" />
                <node concept="3TrEf2" id="2RpYLN7hAkA" role="2OqNvi">
                  <ref role="3Tt5mk" to="hgfn:2RpYLN7hvYl" resolve="props" />
                </node>
              </node>
              <node concept="3TrcHB" id="2RpYLN7hB6H" role="2OqNvi">
                <ref role="3TsBF5" to="hgfn:2RpYLN7hvY5" resolve="underline" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7hC4D" role="3cqZAp">
          <node concept="37vLTI" id="2RpYLN7hEh0" role="3clFbG">
            <node concept="Xl_RD" id="2RpYLN7hElH" role="37vLTx">
              <property role="Xl_RC" value="black" />
            </node>
            <node concept="2OqwBi" id="2RpYLN7hCUL" role="37vLTJ">
              <node concept="2OqwBi" id="2RpYLN7hCrh" role="2Oq$k0">
                <node concept="13iPFW" id="2RpYLN7hC4B" role="2Oq$k0" />
                <node concept="3TrEf2" id="2RpYLN7hCE5" role="2OqNvi">
                  <ref role="3Tt5mk" to="hgfn:2RpYLN7hvYl" resolve="props" />
                </node>
              </node>
              <node concept="3TrcHB" id="2RpYLN7hDyH" role="2OqNvi">
                <ref role="3TsBF5" to="hgfn:2RpYLN7hvYc" resolve="color" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="2RpYLN7gpWn">
    <ref role="13h7C2" to="hgfn:2RpYLN7gndv" resolve="DocxText" />
    <node concept="13i0hz" id="2RpYLN7gpWy" role="13h7CS">
      <property role="TrG5h" value="genT" />
      <node concept="3Tm1VV" id="2RpYLN7gpWz" role="1B3o_S" />
      <node concept="3cqZAl" id="2RpYLN7gpWQ" role="3clF45" />
      <node concept="3clFbS" id="2RpYLN7gpW_" role="3clF47">
        <node concept="3cpWs8" id="2RpYLN7gp9$" role="3cqZAp">
          <node concept="3cpWsn" id="2RpYLN7gp9_" role="3cpWs9">
            <property role="TrG5h" value="t" />
            <node concept="3uibUv" id="2RpYLN7gp9A" role="1tU5fm">
              <ref role="3uigEE" to="vgdk:~Text" resolve="Text" />
            </node>
            <node concept="2OqwBi" id="2RpYLN7gp9B" role="33vP2m">
              <node concept="37vLTw" id="2RpYLN7gqgr" role="2Oq$k0">
                <ref role="3cqZAo" node="2RpYLN7gqbJ" resolve="factory" />
              </node>
              <node concept="liA8E" id="2RpYLN7gp9D" role="2OqNvi">
                <ref role="37wK5l" to="vgdk:~ObjectFactory.createText()" resolve="createText" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7gp9E" role="3cqZAp">
          <node concept="2OqwBi" id="2RpYLN7gp9F" role="3clFbG">
            <node concept="37vLTw" id="2RpYLN7gp9G" role="2Oq$k0">
              <ref role="3cqZAo" node="2RpYLN7gp9_" resolve="t" />
            </node>
            <node concept="liA8E" id="2RpYLN7gp9H" role="2OqNvi">
              <ref role="37wK5l" to="vgdk:~Text.setValue(java.lang.String)" resolve="setValue" />
              <node concept="2OqwBi" id="2RpYLN7gqHi" role="37wK5m">
                <node concept="13iPFW" id="2RpYLN7gqxE" role="2Oq$k0" />
                <node concept="3TrcHB" id="2RpYLN7gr76" role="2OqNvi">
                  <ref role="3TsBF5" to="hgfn:2RpYLN7gndA" resolve="value" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2OLty_fkkKQ" role="3cqZAp">
          <node concept="3clFbS" id="2OLty_fkkKS" role="3clFbx">
            <node concept="3clFbF" id="2OLty_fkl$U" role="3cqZAp">
              <node concept="2OqwBi" id="2OLty_fklIZ" role="3clFbG">
                <node concept="37vLTw" id="2OLty_fkl$S" role="2Oq$k0">
                  <ref role="3cqZAo" node="2RpYLN7gp9_" resolve="t" />
                </node>
                <node concept="liA8E" id="2OLty_fkmK4" role="2OqNvi">
                  <ref role="37wK5l" to="vgdk:~Text.setSpace(java.lang.String)" resolve="setSpace" />
                  <node concept="Xl_RD" id="2OLty_fkmKt" role="37wK5m">
                    <property role="Xl_RC" value="preserve" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2OLty_fkl5$" role="3clFbw">
            <node concept="13iPFW" id="2OLty_fkkR7" role="2Oq$k0" />
            <node concept="3TrcHB" id="2OLty_fklyF" role="2OqNvi">
              <ref role="3TsBF5" to="hgfn:2OLty_fk7ep" resolve="pPreserveSpace" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2RpYLN7gp9J" role="3cqZAp">
          <node concept="2OqwBi" id="2RpYLN7gp9K" role="3clFbG">
            <node concept="2OqwBi" id="2RpYLN7gp9L" role="2Oq$k0">
              <node concept="liA8E" id="2RpYLN7gp9N" role="2OqNvi">
                <ref role="37wK5l" to="vgdk:~R.getContent()" resolve="getContent" />
              </node>
              <node concept="37vLTw" id="2RpYLN7gqlm" role="2Oq$k0">
                <ref role="3cqZAo" node="2RpYLN7gq7b" resolve="theRun" />
              </node>
            </node>
            <node concept="liA8E" id="2RpYLN7gp9O" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="2RpYLN7gp9P" role="37wK5m">
                <ref role="3cqZAo" node="2RpYLN7gp9_" resolve="t" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2RpYLN7gq7b" role="3clF46">
        <property role="TrG5h" value="theRun" />
        <node concept="3uibUv" id="2RpYLN7gq7a" role="1tU5fm">
          <ref role="3uigEE" to="vgdk:~R" resolve="R" />
        </node>
      </node>
      <node concept="37vLTG" id="2RpYLN7gqbJ" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="2RpYLN7gqfJ" role="1tU5fm">
          <ref role="3uigEE" to="vgdk:~ObjectFactory" resolve="ObjectFactory" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="2RpYLN7gpWo" role="13h7CW">
      <node concept="3clFbS" id="2RpYLN7gpWp" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4sixqEheupp">
    <ref role="13h7C2" to="hgfn:4sixqEheiIT" resolve="IDocxParagraphs" />
    <node concept="13hLZK" id="4sixqEheupq" role="13h7CW">
      <node concept="3clFbS" id="4sixqEheupr" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4sixqEheup$" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="GenP" />
      <node concept="37vLTG" id="4sixqEheuvY" role="3clF46">
        <property role="TrG5h" value="theMainPart" />
        <node concept="3uibUv" id="4sixqEheuvZ" role="1tU5fm">
          <ref role="3uigEE" to="s1v1:~MainDocumentPart" resolve="MainDocumentPart" />
        </node>
      </node>
      <node concept="37vLTG" id="4sixqEheuWJ" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="4sixqEheuWK" role="1tU5fm">
          <ref role="3uigEE" to="vgdk:~ObjectFactory" resolve="ObjectFactory" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4sixqEheup_" role="1B3o_S" />
      <node concept="3cqZAl" id="4sixqEheupS" role="3clF45" />
      <node concept="3clFbS" id="4sixqEheupB" role="3clF47" />
    </node>
  </node>
  <node concept="13h7C7" id="4sixqEheuXF">
    <ref role="13h7C2" to="hgfn:4sixqEheiIX" resolve="DocxParagraphCollection" />
    <node concept="13hLZK" id="4sixqEheuXG" role="13h7CW">
      <node concept="3clFbS" id="4sixqEheuXH" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="4sixqEheuXQ" role="13h7CS">
      <property role="TrG5h" value="GenP" />
      <ref role="13i0hy" node="4sixqEheup$" resolve="GenP" />
      <node concept="3Tm1VV" id="4sixqEheuXV" role="1B3o_S" />
      <node concept="3clFbS" id="4sixqEheuXY" role="3clF47">
        <node concept="3clFbF" id="4sixqEheuYx" role="3cqZAp">
          <node concept="2OqwBi" id="4sixqEhewNK" role="3clFbG">
            <node concept="2OqwBi" id="4sixqEhev8V" role="2Oq$k0">
              <node concept="13iPFW" id="4sixqEheuYw" role="2Oq$k0" />
              <node concept="3Tsc0h" id="4sixqEhevk9" role="2OqNvi">
                <ref role="3TtcxE" to="hgfn:4sixqEheiJ1" resolve="paragraphs" />
              </node>
            </node>
            <node concept="2es0OD" id="4sixqEheDwv" role="2OqNvi">
              <node concept="1bVj0M" id="4sixqEheDwx" role="23t8la">
                <node concept="3clFbS" id="4sixqEheDwy" role="1bW5cS">
                  <node concept="3clFbF" id="4sixqEheDAb" role="3cqZAp">
                    <node concept="2OqwBi" id="4sixqEheDJe" role="3clFbG">
                      <node concept="37vLTw" id="4sixqEheDAa" role="2Oq$k0">
                        <ref role="3cqZAo" node="4sixqEheDwz" resolve="it" />
                      </node>
                      <node concept="2qgKlT" id="4sixqEheF0o" role="2OqNvi">
                        <ref role="37wK5l" node="4sixqEheup$" resolve="GenP" />
                        <node concept="37vLTw" id="4sixqEheF9b" role="37wK5m">
                          <ref role="3cqZAo" node="4sixqEheuXZ" resolve="theMainPart" />
                        </node>
                        <node concept="37vLTw" id="4sixqEheFsn" role="37wK5m">
                          <ref role="3cqZAo" node="4sixqEheuY1" resolve="factory" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="4sixqEheDwz" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="4sixqEheDw$" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4sixqEheuXZ" role="3clF46">
        <property role="TrG5h" value="theMainPart" />
        <node concept="3uibUv" id="4sixqEheuY0" role="1tU5fm">
          <ref role="3uigEE" to="s1v1:~MainDocumentPart" resolve="MainDocumentPart" />
        </node>
      </node>
      <node concept="37vLTG" id="4sixqEheuY1" role="3clF46">
        <property role="TrG5h" value="factory" />
        <node concept="3uibUv" id="4sixqEheuY2" role="1tU5fm">
          <ref role="3uigEE" to="vgdk:~ObjectFactory" resolve="ObjectFactory" />
        </node>
      </node>
      <node concept="3cqZAl" id="4sixqEheuY3" role="3clF45" />
    </node>
  </node>
</model>


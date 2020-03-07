<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:444087cc-0725-4f37-a70e-bb88d18f2da2(com.dslfoundry.docx.samples.tests.unit@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="2" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="7850b982-0ec2-45d4-8e0f-ee23786dc16a" name="com.dslfoundry.docx" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="8oaq" ref="b0f8641f-bd77-4421-8425-30d9088a82f7/java:org.apache.commons.io(org.apache.commons/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="w827" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs.openapi(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="2o" ref="3669929d-7269-4de9-a160-f80b04ef909d/java:difflib(DiffUtils/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test">
      <concept id="5097124989038916362" name="jetbrains.mps.lang.test.structure.TestInfo" flags="ng" index="2XOHcx">
        <property id="5097124989038916363" name="projectPath" index="2XOHcw" />
      </concept>
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
      <concept id="7080278351417106679" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertIsNotNull" flags="nn" index="2Hmddi">
        <child id="7080278351417106681" name="expression" index="2Hmdds" />
      </concept>
      <concept id="1171931690126" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethod" flags="ig" index="3s$Bmu">
        <property id="1171931690128" name="methodName" index="3s$Bm0" />
      </concept>
      <concept id="1171931851043" name="jetbrains.mps.baseLanguage.unitTest.structure.BTestCase" flags="ig" index="3s_ewN">
        <property id="1171931851045" name="testCaseName" index="3s_ewP" />
        <child id="1171931851044" name="testMethodList" index="3s_ewO" />
      </concept>
      <concept id="1171931858461" name="jetbrains.mps.baseLanguage.unitTest.structure.TestMethodList" flags="ng" index="3s_gsd">
        <child id="1171931858462" name="testMethod" index="3s_gse" />
      </concept>
      <concept id="1171981022339" name="jetbrains.mps.baseLanguage.unitTest.structure.AssertTrue" flags="nn" index="3vwNmj">
        <child id="1171981057159" name="condition" index="3vwVQn" />
      </concept>
      <concept id="1172073500303" name="jetbrains.mps.baseLanguage.unitTest.structure.Message" flags="ng" index="3_1$Yv">
        <child id="1172073511101" name="message" index="3_1BAH" />
      </concept>
      <concept id="1172075514136" name="jetbrains.mps.baseLanguage.unitTest.structure.MessageHolder" flags="ng" index="3_9gw8">
        <child id="1172075534298" name="message" index="3_9lra" />
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
      <concept id="559557797393017698" name="jetbrains.mps.lang.smodel.structure.ModelReferenceExpression" flags="nn" index="BaHAS">
        <property id="559557797393021807" name="stereotype" index="BaGAP" />
        <property id="559557797393017702" name="name" index="BaHAW" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
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
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="3s_ewN" id="2QPHU78pska">
    <property role="3s_ewP" value="templates" />
    <node concept="312cEg" id="2QPHU78yU4m" role="jymVt">
      <property role="TrG5h" value="theTestModelName" />
      <node concept="17QB3L" id="2QPHU78yTxS" role="1tU5fm" />
      <node concept="Xl_RD" id="2QPHU78whA5" role="33vP2m">
        <property role="Xl_RC" value="com.dslfoundry.docx.samples.templates" />
      </node>
    </node>
    <node concept="312cEg" id="2QPHU78w1BX" role="jymVt">
      <property role="TrG5h" value="theFixturesSolutionPath" />
      <node concept="3uibUv" id="2QPHU78w1n5" role="1tU5fm">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
      <node concept="2YIFZM" id="2QPHU78w22r" role="33vP2m">
        <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
        <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
        <node concept="Xl_RD" id="2QPHU78w22s" role="37wK5m">
          <property role="Xl_RC" value="D:/GitHub/DSLFoundry/mps-docxgen/solutions/com.dslfoundry.docx.samples" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2QPHU78vI3K" role="jymVt">
      <property role="TrG5h" value="theActualResultPath" />
      <node concept="3uibUv" id="2QPHU78vHMp" role="1tU5fm">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
      <node concept="2OqwBi" id="2QPHU78w4RH" role="33vP2m">
        <node concept="2OqwBi" id="2QPHU78vNPP" role="2Oq$k0">
          <node concept="37vLTw" id="2QPHU78w2Rx" role="2Oq$k0">
            <ref role="3cqZAo" node="2QPHU78w1BX" resolve="theFixturesSolutionPath" />
          </node>
          <node concept="liA8E" id="2QPHU78w05J" role="2OqNvi">
            <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
            <node concept="Xl_RD" id="2QPHU78w364" role="37wK5m">
              <property role="Xl_RC" value="docx_gen" />
            </node>
          </node>
        </node>
        <node concept="liA8E" id="2QPHU78whoO" role="2OqNvi">
          <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
          <node concept="37vLTw" id="2QPHU78yV4l" role="37wK5m">
            <ref role="3cqZAo" node="2QPHU78yU4m" resolve="theTestModelName" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2QPHU78vLPz" role="jymVt">
      <property role="TrG5h" value="theTestSolutionPath" />
      <node concept="3uibUv" id="2QPHU78vLyI" role="1tU5fm">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
      <node concept="2YIFZM" id="2QPHU78vM4P" role="33vP2m">
        <ref role="37wK5l" to="eoo2:~Paths.get(java.lang.String,java.lang.String...)" resolve="get" />
        <ref role="1Pybhc" to="eoo2:~Paths" resolve="Paths" />
        <node concept="Xl_RD" id="2QPHU78vMb9" role="37wK5m">
          <property role="Xl_RC" value="D:/GitHub/DSLFoundry/mps-docxgen/solutions/com.dslfoundry.docx.samples.tests" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2QPHU78wkHt" role="jymVt">
      <property role="TrG5h" value="theExpectationsPath" />
      <node concept="3uibUv" id="2QPHU78wkmS" role="1tU5fm">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
      <node concept="2OqwBi" id="2QPHU78wz3U" role="33vP2m">
        <node concept="2OqwBi" id="2QPHU78wl$O" role="2Oq$k0">
          <node concept="37vLTw" id="2QPHU78wl9U" role="2Oq$k0">
            <ref role="3cqZAo" node="2QPHU78vLPz" resolve="theTestSolutionPath" />
          </node>
          <node concept="liA8E" id="2QPHU78wxm3" role="2OqNvi">
            <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
            <node concept="Xl_RD" id="2QPHU78wxzk" role="37wK5m">
              <property role="Xl_RC" value="expectations" />
            </node>
          </node>
        </node>
        <node concept="liA8E" id="2QPHU78wJd7" role="2OqNvi">
          <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
          <node concept="37vLTw" id="2QPHU78yVup" role="37wK5m">
            <ref role="3cqZAo" node="2QPHU78yU4m" resolve="theTestModelName" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2QPHU78ypQc" role="jymVt" />
    <node concept="3clFb_" id="2QPHU78y4TH" role="jymVt">
      <property role="TrG5h" value="assert_generated_file_equals_expected_file" />
      <node concept="3clFbS" id="2QPHU78y4TK" role="3clF47">
        <node concept="3cpWs8" id="2QPHU78wNjk" role="3cqZAp">
          <node concept="3cpWsn" id="2QPHU78wNjl" role="3cpWs9">
            <property role="TrG5h" value="theActualResultsFile" />
            <node concept="3uibUv" id="2QPHU78wQVn" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2OqwBi" id="2QPHU78x6Gz" role="33vP2m">
              <node concept="2OqwBi" id="2QPHU78wRHL" role="2Oq$k0">
                <node concept="37vLTw" id="2QPHU78wRiT" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QPHU78vI3K" resolve="theActualResultPath" />
                </node>
                <node concept="liA8E" id="2QPHU78x3vx" role="2OqNvi">
                  <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
                  <node concept="37vLTw" id="2QPHU78ypiF" role="37wK5m">
                    <ref role="3cqZAo" node="2QPHU78ynSJ" resolve="testcase" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2QPHU78xjhS" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.toFile()" resolve="toFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2QPHU78xkdG" role="3cqZAp">
          <node concept="3cpWsn" id="2QPHU78xkdH" role="3cpWs9">
            <property role="TrG5h" value="theExpectationsFile" />
            <node concept="3uibUv" id="2QPHU78xkdI" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~File" resolve="File" />
            </node>
            <node concept="2OqwBi" id="2QPHU78xylO" role="33vP2m">
              <node concept="2OqwBi" id="2QPHU78xlNN" role="2Oq$k0">
                <node concept="37vLTw" id="2QPHU78xlnL" role="2Oq$k0">
                  <ref role="3cqZAo" node="2QPHU78wkHt" resolve="theExpectationsPath" />
                </node>
                <node concept="liA8E" id="2QPHU78xxaP" role="2OqNvi">
                  <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
                  <node concept="37vLTw" id="2QPHU78yfMc" role="37wK5m">
                    <ref role="3cqZAo" node="2QPHU78ynSJ" resolve="testcase" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2QPHU78xKdd" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.toFile()" resolve="toFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3vwNmj" id="2QPHU78yKA2" role="3cqZAp">
          <node concept="3_1$Yv" id="2QPHU78yKA3" role="3_9lra">
            <node concept="Xl_RD" id="2QPHU78yKA4" role="3_1BAH">
              <property role="Xl_RC" value="--- Content is not Equal ---" />
            </node>
          </node>
          <node concept="2YIFZM" id="2QPHU78yKJn" role="3vwVQn">
            <ref role="1Pybhc" node="WB9a1LKwEn" resolve="Helper" />
            <ref role="37wK5l" node="WB9a1LKXNN" resolve="contentEquals" />
            <node concept="37vLTw" id="2QPHU78yLcE" role="37wK5m">
              <ref role="3cqZAo" node="2QPHU78wNjl" resolve="theActualResultsFile" />
            </node>
            <node concept="37vLTw" id="2QPHU78yLeX" role="37wK5m">
              <ref role="3cqZAo" node="2QPHU78xkdH" resolve="theExpectationsFile" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2QPHU78y4pv" role="1B3o_S" />
      <node concept="3cqZAl" id="2QPHU78y4Bi" role="3clF45" />
      <node concept="37vLTG" id="2QPHU78ynSJ" role="3clF46">
        <property role="TrG5h" value="testcase" />
        <node concept="17QB3L" id="2QPHU78ynSI" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2QPHU78pskb" role="1B3o_S" />
    <node concept="3s_gsd" id="2QPHU78pskc" role="3s_ewO">
      <node concept="3s$Bmu" id="2QPHU78ptXp" role="3s_gse">
        <property role="3s$Bm0" value="HelloWorld_NoTemplate" />
        <node concept="3cqZAl" id="2QPHU78ptXq" role="3clF45" />
        <node concept="3Tm1VV" id="2QPHU78ptXr" role="1B3o_S" />
        <node concept="3clFbS" id="2QPHU78ptXs" role="3clF47">
          <node concept="3clFbF" id="2QPHU78yr9F" role="3cqZAp">
            <node concept="1rXfSq" id="2QPHU78yr9E" role="3clFbG">
              <ref role="37wK5l" node="2QPHU78y4TH" resolve="assert_generated_file_equals_expected_file" />
              <node concept="Xl_RD" id="2QPHU78yfiS" role="37wK5m">
                <property role="Xl_RC" value="HelloWorld_NoTemplate.docx" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="2QPHU78y5CT" role="3s_gse">
        <property role="3s$Bm0" value="HelloWorld_TemplateNotFound" />
        <node concept="3cqZAl" id="2QPHU78y5CU" role="3clF45" />
        <node concept="3Tm1VV" id="2QPHU78y5CV" role="1B3o_S" />
        <node concept="3clFbS" id="2QPHU78y5CW" role="3clF47">
          <node concept="3clFbF" id="2QPHU78yypO" role="3cqZAp">
            <node concept="1rXfSq" id="2QPHU78yypQ" role="3clFbG">
              <ref role="37wK5l" node="2QPHU78y4TH" resolve="assert_generated_file_equals_expected_file" />
              <node concept="Xl_RD" id="2QPHU78yypR" role="37wK5m">
                <property role="Xl_RC" value="HelloWorld_TemplateNotFound.docx" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="2QPHU78y5UD" role="3s_gse">
        <property role="3s$Bm0" value="HelloWorld_WithTemplate" />
        <node concept="3cqZAl" id="2QPHU78y5UE" role="3clF45" />
        <node concept="3Tm1VV" id="2QPHU78y5UF" role="1B3o_S" />
        <node concept="3clFbS" id="2QPHU78y5UG" role="3clF47">
          <node concept="3clFbF" id="2QPHU78yy_a" role="3cqZAp">
            <node concept="1rXfSq" id="2QPHU78yy_c" role="3clFbG">
              <ref role="37wK5l" node="2QPHU78y4TH" resolve="assert_generated_file_equals_expected_file" />
              <node concept="Xl_RD" id="2QPHU78yy_d" role="37wK5m">
                <property role="Xl_RC" value="HelloWorld_WithTemplate.docx" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2XOHcx" id="1LJipm$5syH">
    <property role="2XOHcw" value="${mps-docxgen}" />
  </node>
  <node concept="312cEu" id="WB9a1LKwEn">
    <property role="TrG5h" value="Helper" />
    <property role="1EXbeo" value="true" />
    <node concept="2tJIrI" id="WB9a1LKwET" role="jymVt" />
    <node concept="2YIFZL" id="7Rtv0wX5Zor" role="jymVt">
      <property role="TrG5h" value="getExpectationsRoot" />
      <node concept="3clFbS" id="7Rtv0wX5Zou" role="3clF47">
        <node concept="3SKdUt" id="7Rtv0wX91Yy" role="3cqZAp">
          <node concept="3SKdUq" id="7Rtv0wX91Y$" role="3SKWNk">
            <property role="3SKdUp" value="TODO remove deprecated way of finding model" />
          </node>
        </node>
        <node concept="3SKdUt" id="7Rtv0wXaxOh" role="3cqZAp">
          <node concept="3SKdUq" id="7Rtv0wXaxOj" role="3SKWNk">
            <property role="3SKdUp" value="  WARN - ns.mps.smodel.SModelRepository - Use of SModelRepository.getModelDescriptor(String) is ineffective, please refactor to use SModelReference" />
          </node>
        </node>
        <node concept="3cpWs8" id="7Rtv0wX61xS" role="3cqZAp">
          <node concept="3cpWsn" id="7Rtv0wX61xT" role="3cpWs9">
            <property role="TrG5h" value="m" />
            <node concept="H_c77" id="7Rtv0wX61xU" role="1tU5fm" />
            <node concept="BaHAS" id="7Rtv0wX61xV" role="33vP2m">
              <property role="BaHAW" value="com.oce.Gherkin.tests.generator" />
              <property role="BaGAP" value="tests" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="7ljEj9ZkC$2" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="2xdQw9" id="7Rtv0wX6oqc" role="8Wnug">
            <property role="2xdLsb" value="debug" />
            <node concept="3cpWs3" id="7Rtv0wX6oqd" role="9lYJi">
              <node concept="Xl_RD" id="7Rtv0wX6oqe" role="3uHU7B">
                <property role="Xl_RC" value="theExpectationsModel=" />
              </node>
              <node concept="2OqwBi" id="7Rtv0wX6oqf" role="3uHU7w">
                <node concept="LkI2h" id="7Rtv0wX6oqg" role="2OqNvi" />
                <node concept="37vLTw" id="7Rtv0wX6qSG" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Rtv0wX61xT" resolve="m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Rtv0wX61xW" role="3cqZAp">
          <node concept="3cpWsn" id="7Rtv0wX61xX" role="3cpWs9">
            <property role="TrG5h" value="theExpectationRoot" />
            <node concept="3uibUv" id="7Rtv0wX61xY" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="1rXfSq" id="7Rtv0wX61xZ" role="33vP2m">
              <ref role="37wK5l" node="WB9a1LKWYL" resolve="getSolutionRelativePath" />
              <node concept="3cpWs3" id="7LctUU$AflI" role="37wK5m">
                <node concept="37vLTw" id="7LctUU$AftL" role="3uHU7w">
                  <ref role="3cqZAo" node="7LctUU$Adok" resolve="model" />
                </node>
                <node concept="Xl_RD" id="7Rtv0wX61y0" role="3uHU7B">
                  <property role="Xl_RC" value="generator_expectations/" />
                </node>
              </node>
              <node concept="37vLTw" id="7Rtv0wX61y1" role="37wK5m">
                <ref role="3cqZAo" node="7Rtv0wX61xT" resolve="m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="7ljEj9ZkEi$" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="2xdQw9" id="7Rtv0wX61y2" role="8Wnug">
            <property role="2xdLsb" value="debug" />
            <node concept="3cpWs3" id="7Rtv0wX66Lx" role="9lYJi">
              <node concept="Xl_RD" id="7Rtv0wX66LZ" role="3uHU7w">
                <property role="Xl_RC" value="'" />
              </node>
              <node concept="3cpWs3" id="7Rtv0wX61y3" role="3uHU7B">
                <node concept="Xl_RD" id="7Rtv0wX61y7" role="3uHU7B">
                  <property role="Xl_RC" value="theExpectationRoot='" />
                </node>
                <node concept="2OqwBi" id="7Rtv0wX61y4" role="3uHU7w">
                  <node concept="37vLTw" id="7Rtv0wX61y5" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Rtv0wX61xX" resolve="theExpectationRoot" />
                  </node>
                  <node concept="liA8E" id="7Rtv0wX61y6" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Rtv0wX62My" role="3cqZAp">
          <node concept="37vLTw" id="7Rtv0wX630S" role="3cqZAk">
            <ref role="3cqZAo" node="7Rtv0wX61xX" resolve="theExpectationRoot" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Rtv0wX5WlS" role="1B3o_S" />
      <node concept="3uibUv" id="7Rtv0wX5ZxZ" role="3clF45">
        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
      </node>
      <node concept="37vLTG" id="7LctUU$Adok" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="17QB3L" id="7LctUU$Adoj" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Rtv0wX6bpR" role="jymVt">
      <property role="TrG5h" value="getActualResultRoot" />
      <node concept="3clFbS" id="7Rtv0wX6bpU" role="3clF47">
        <node concept="1X3_iC" id="7ljEj9ZkErW" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="2xdQw9" id="7Rtv0wX6b$J" role="8Wnug">
            <property role="2xdLsb" value="debug" />
            <node concept="3cpWs3" id="7Rtv0wX6b$K" role="9lYJi">
              <node concept="Xl_RD" id="7Rtv0wX6b$L" role="3uHU7B">
                <property role="Xl_RC" value="theActualResultModel=" />
              </node>
              <node concept="2OqwBi" id="7Rtv0wX6b$M" role="3uHU7w">
                <node concept="LkI2h" id="7Rtv0wX6b$N" role="2OqNvi" />
                <node concept="37vLTw" id="7LctUU$_Set" role="2Oq$k0">
                  <ref role="3cqZAo" node="7LctUU$_NpU" resolve="m" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Rtv0wX6b$P" role="3cqZAp">
          <node concept="3cpWsn" id="7Rtv0wX6b$Q" role="3cpWs9">
            <property role="TrG5h" value="theActualResultRoot" />
            <node concept="3uibUv" id="7Rtv0wX6b$R" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="2YIFZM" id="7Rtv0wX6b$S" role="33vP2m">
              <ref role="37wK5l" to="w1kc:~SModelOperations.getOutputLocation(org.jetbrains.mps.openapi.model.SModel)" resolve="getOutputLocation" />
              <ref role="1Pybhc" to="w1kc:~SModelOperations" resolve="SModelOperations" />
              <node concept="37vLTw" id="7LctUU$_Ssx" role="37wK5m">
                <ref role="3cqZAo" node="7LctUU$_NpU" resolve="m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="7ljEj9ZkG85" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="2xdQw9" id="7Rtv0wX6b$U" role="8Wnug">
            <property role="2xdLsb" value="debug" />
            <node concept="3cpWs3" id="7Rtv0wX6lON" role="9lYJi">
              <node concept="Xl_RD" id="7Rtv0wX6mX6" role="3uHU7w">
                <property role="Xl_RC" value="'" />
              </node>
              <node concept="3cpWs3" id="7Rtv0wX6b$V" role="3uHU7B">
                <node concept="Xl_RD" id="7Rtv0wX6b$Z" role="3uHU7B">
                  <property role="Xl_RC" value="theActualResultRoot='" />
                </node>
                <node concept="2OqwBi" id="7Rtv0wX6b$W" role="3uHU7w">
                  <node concept="37vLTw" id="7Rtv0wX6b$X" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Rtv0wX6b$Q" resolve="theActualResultRoot" />
                  </node>
                  <node concept="liA8E" id="7Rtv0wX6b$Y" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Rtv0wX6dT2" role="3cqZAp">
          <node concept="37vLTw" id="7Rtv0wX6dZG" role="3cqZAk">
            <ref role="3cqZAo" node="7Rtv0wX6b$Q" resolve="theActualResultRoot" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Rtv0wX691Z" role="1B3o_S" />
      <node concept="3uibUv" id="7Rtv0wX6afN" role="3clF45">
        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
      </node>
      <node concept="37vLTG" id="7LctUU$_NpU" role="3clF46">
        <property role="TrG5h" value="m" />
        <node concept="H_c77" id="7LctUU$_NpT" role="1tU5fm" />
      </node>
    </node>
    <node concept="2YIFZL" id="7Rtv0wX5oz9" role="jymVt">
      <property role="TrG5h" value="getFileByPathSteps" />
      <node concept="3clFbS" id="7Rtv0wX5ozc" role="3clF47">
        <node concept="3cpWs8" id="7Rtv0wX5zQt" role="3cqZAp">
          <node concept="3cpWsn" id="7Rtv0wX5zQu" role="3cpWs9">
            <property role="TrG5h" value="here" />
            <node concept="3uibUv" id="7Rtv0wX5zQv" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="37vLTw" id="7Rtv0wX5$Pq" role="33vP2m">
              <ref role="3cqZAo" node="7Rtv0wX5xPI" resolve="root" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7Rtv0wX5_I1" role="3cqZAp">
          <node concept="2GrKxI" id="7Rtv0wX5_I3" role="2Gsz3X">
            <property role="TrG5h" value="step" />
          </node>
          <node concept="37vLTw" id="7Rtv0wX5A$z" role="2GsD0m">
            <ref role="3cqZAo" node="7Rtv0wX5xzM" resolve="pathsteps" />
          </node>
          <node concept="3clFbS" id="7Rtv0wX5_I7" role="2LFqv$">
            <node concept="3cpWs8" id="7Rtv0wX5E6B" role="3cqZAp">
              <node concept="3cpWsn" id="7Rtv0wX5E6C" role="3cpWs9">
                <property role="TrG5h" value="children" />
                <node concept="_YKpA" id="7Rtv0wX5E6D" role="1tU5fm">
                  <node concept="3uibUv" id="7Rtv0wX5E6E" role="_ZDj9">
                    <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7Rtv0wX5E6F" role="33vP2m">
                  <node concept="37vLTw" id="7Rtv0wX5Et2" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Rtv0wX5zQu" resolve="here" />
                  </node>
                  <node concept="liA8E" id="7Rtv0wX5E6H" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.getChildren()" resolve="getChildren" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3vwNmj" id="7Rtv0wX9ioj" role="3cqZAp">
              <node concept="2OqwBi" id="7Rtv0wX9jSz" role="3vwVQn">
                <node concept="37vLTw" id="7Rtv0wX9jo6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Rtv0wX5E6C" resolve="children" />
                </node>
                <node concept="3GX2aA" id="7Rtv0wX9wVa" role="2OqNvi" />
              </node>
              <node concept="3_1$Yv" id="7Rtv0wX9ZWQ" role="3_9lra">
                <node concept="3cpWs3" id="7Rtv0wXam2g" role="3_1BAH">
                  <node concept="Xl_RD" id="7Rtv0wXam2F" role="3uHU7w">
                    <property role="Xl_RC" value="'" />
                  </node>
                  <node concept="3cpWs3" id="7Rtv0wXajLV" role="3uHU7B">
                    <node concept="3cpWs3" id="7Rtv0wX7ZRp" role="3uHU7B">
                      <node concept="3cpWs3" id="7Rtv0wX7ZRq" role="3uHU7B">
                        <node concept="Xl_RD" id="7Rtv0wX7ZRr" role="3uHU7B">
                          <property role="Xl_RC" value="getFileByPathSteps: step has no children: '" />
                        </node>
                        <node concept="2GrUjf" id="7Rtv0wX8j89" role="3uHU7w">
                          <ref role="2Gs0qQ" node="7Rtv0wX5_I3" resolve="step" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7Rtv0wX7ZRt" role="3uHU7w">
                        <property role="Xl_RC" value="' in '" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7Rtv0wXaksx" role="3uHU7w">
                      <node concept="37vLTw" id="7Rtv0wXak4B" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Rtv0wX5zQu" resolve="here" />
                      </node>
                      <node concept="liA8E" id="7Rtv0wXalxU" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7Rtv0wXaKs1" role="3cqZAp">
              <node concept="3cpWsn" id="7Rtv0wXaKs2" role="3cpWs9">
                <property role="TrG5h" value="next" />
                <node concept="3uibUv" id="7Rtv0wXaKs3" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="2OqwBi" id="7Rtv0wX5E6L" role="33vP2m">
                  <node concept="37vLTw" id="7Rtv0wX5E6M" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Rtv0wX5E6C" resolve="children" />
                  </node>
                  <node concept="1z4cxt" id="7Rtv0wX5E6N" role="2OqNvi">
                    <node concept="1bVj0M" id="7Rtv0wX5E6O" role="23t8la">
                      <node concept="3clFbS" id="7Rtv0wX5E6P" role="1bW5cS">
                        <node concept="3clFbF" id="7Rtv0wX5E6Q" role="3cqZAp">
                          <node concept="2OqwBi" id="7Rtv0wX5E6R" role="3clFbG">
                            <node concept="2OqwBi" id="7Rtv0wX5E6S" role="2Oq$k0">
                              <node concept="37vLTw" id="7Rtv0wX5E6T" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Rtv0wX5E6X" resolve="it" />
                              </node>
                              <node concept="liA8E" id="7Rtv0wX5E6U" role="2OqNvi">
                                <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7Rtv0wX5E6V" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                              <node concept="2GrUjf" id="7Rtv0wX5F9U" role="37wK5m">
                                <ref role="2Gs0qQ" node="7Rtv0wX5_I3" resolve="step" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="7Rtv0wX5E6X" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="7Rtv0wX5E6Y" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Hmddi" id="7Rtv0wX7MYL" role="3cqZAp">
              <node concept="37vLTw" id="7Rtv0wXaNTR" role="2Hmdds">
                <ref role="3cqZAo" node="7Rtv0wXaKs2" resolve="next" />
              </node>
              <node concept="3_1$Yv" id="7Rtv0wX7MYN" role="3_9lra">
                <node concept="3cpWs3" id="7Rtv0wXaq5w" role="3_1BAH">
                  <node concept="Xl_RD" id="7Rtv0wXar7D" role="3uHU7w">
                    <property role="Xl_RC" value="'" />
                  </node>
                  <node concept="3cpWs3" id="7Rtv0wXanMT" role="3uHU7B">
                    <node concept="3cpWs3" id="7Rtv0wX7MYQ" role="3uHU7B">
                      <node concept="3cpWs3" id="7Rtv0wX7MYR" role="3uHU7B">
                        <node concept="Xl_RD" id="7Rtv0wX7MYS" role="3uHU7B">
                          <property role="Xl_RC" value="getFileByPathSteps: step not found: '" />
                        </node>
                        <node concept="2GrUjf" id="7Rtv0wX8iPZ" role="3uHU7w">
                          <ref role="2Gs0qQ" node="7Rtv0wX5_I3" resolve="step" />
                        </node>
                      </node>
                      <node concept="Xl_RD" id="7Rtv0wX7MYW" role="3uHU7w">
                        <property role="Xl_RC" value="' in '" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7Rtv0wXapwx" role="3uHU7w">
                      <node concept="37vLTw" id="7Rtv0wXapwy" role="2Oq$k0">
                        <ref role="3cqZAo" node="7Rtv0wX5zQu" resolve="here" />
                      </node>
                      <node concept="liA8E" id="7Rtv0wXapwz" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Rtv0wXaPk_" role="3cqZAp">
              <node concept="37vLTI" id="7Rtv0wXaPz8" role="3clFbG">
                <node concept="37vLTw" id="7Rtv0wXaPQJ" role="37vLTx">
                  <ref role="3cqZAo" node="7Rtv0wXaKs2" resolve="next" />
                </node>
                <node concept="37vLTw" id="7Rtv0wXaPkz" role="37vLTJ">
                  <ref role="3cqZAo" node="7Rtv0wX5zQu" resolve="here" />
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="7ljEj9ZkHJy" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="2xdQw9" id="7Rtv0wX5Hv$" role="8Wnug">
                <property role="2xdLsb" value="debug" />
                <node concept="3cpWs3" id="7Rtv0wX8DoH" role="9lYJi">
                  <node concept="Xl_RD" id="7Rtv0wX8ENf" role="3uHU7w">
                    <property role="Xl_RC" value="'" />
                  </node>
                  <node concept="3cpWs3" id="7Rtv0wX5IYf" role="3uHU7B">
                    <node concept="Xl_RD" id="7Rtv0wX5HvA" role="3uHU7B">
                      <property role="Xl_RC" value="getFileByPathSteps: step found = '" />
                    </node>
                    <node concept="2GrUjf" id="7Rtv0wX5IYO" role="3uHU7w">
                      <ref role="2Gs0qQ" node="7Rtv0wX5_I3" resolve="step" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Rtv0wX5Buy" role="3cqZAp">
          <node concept="37vLTw" id="7Rtv0wX5Cl1" role="3cqZAk">
            <ref role="3cqZAo" node="7Rtv0wX5zQu" resolve="here" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Rtv0wX5QT$" role="1B3o_S" />
      <node concept="3uibUv" id="7Rtv0wX5oGL" role="3clF45">
        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
      </node>
      <node concept="37vLTG" id="7Rtv0wX5xPI" role="3clF46">
        <property role="TrG5h" value="root" />
        <node concept="3uibUv" id="7Rtv0wX5xS9" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="37vLTG" id="7Rtv0wX5xzM" role="3clF46">
        <property role="TrG5h" value="pathsteps" />
        <node concept="10Q1$e" id="7Rtv0wX5x_Q" role="1tU5fm">
          <node concept="17QB3L" id="7Rtv0wX5xzL" role="10Q1$1" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="WB9a1LKWYL" role="jymVt">
      <property role="TrG5h" value="getSolutionRelativePath" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="WB9a1LKWYS" role="3clF47">
        <node concept="3SKdUt" id="7Rtv0wX903h" role="3cqZAp">
          <node concept="3SKdUq" id="7Rtv0wX903j" role="3SKWNk">
            <property role="3SKdUp" value="code from BVDM" />
          </node>
        </node>
        <node concept="3SKdUt" id="7Rtv0wX96Vk" role="3cqZAp">
          <node concept="3SKdUq" id="7Rtv0wX96Vm" role="3SKWNk">
            <property role="3SKdUp" value="JGEE says: I have no clue what an abstract module is and if I have one or not" />
          </node>
        </node>
        <node concept="3SKdUt" id="7Rtv0wX99HK" role="3cqZAp">
          <node concept="3SKdUq" id="7Rtv0wX99HM" role="3SKWNk">
            <property role="3SKdUp" value="anyway this works, so don't touch it" />
          </node>
        </node>
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
                  <ref role="3cqZAo" node="WB9a1LKWYP" resolve="im" />
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
                  <node concept="2OqwBi" id="WB9a1LKWZF" role="3cqZAk">
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
                      <node concept="3cpWs3" id="WB9a1LKWZK" role="37wK5m">
                        <node concept="3cpWs3" id="WB9a1LKWZL" role="3uHU7B">
                          <node concept="2OqwBi" id="WB9a1LKWZM" role="3uHU7B">
                            <node concept="37vLTw" id="WB9a1LKWZN" role="2Oq$k0">
                              <ref role="3cqZAo" node="WB9a1LKWZz" resolve="bundleHome" />
                            </node>
                            <node concept="liA8E" id="WB9a1LKWZO" role="2OqNvi">
                              <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="WB9a1LKWZP" role="3uHU7w">
                            <property role="Xl_RC" value="!" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="WB9a1LKWZQ" role="3uHU7w">
                          <ref role="3cqZAo" node="WB9a1LKWYN" resolve="path" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="WB9a1LKWZR" role="3cqZAp">
              <node concept="2OqwBi" id="WB9a1LKWZS" role="3cqZAk">
                <node concept="2OqwBi" id="WB9a1LKWZT" role="2Oq$k0">
                  <node concept="37vLTw" id="WB9a1LKWZU" role="2Oq$k0">
                    <ref role="3cqZAo" node="WB9a1LKWZf" resolve="s" />
                  </node>
                  <node concept="liA8E" id="WB9a1LKWZV" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                  </node>
                </node>
                <node concept="liA8E" id="WB9a1LKWZW" role="2OqNvi">
                  <ref role="37wK5l" to="3ju5:~IFile.getDescendant(java.lang.String)" resolve="getDescendant" />
                  <node concept="37vLTw" id="WB9a1LKWZX" role="37wK5m">
                    <ref role="3cqZAo" node="WB9a1LKWYN" resolve="path" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="WB9a1LKWZY" role="3cqZAp">
          <node concept="10Nm6u" id="WB9a1LKWZZ" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="WB9a1LKWYR" role="3clF45">
        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
      </node>
      <node concept="37vLTG" id="WB9a1LKWYN" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="17QB3L" id="WB9a1LKWYO" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="WB9a1LKWYP" role="3clF46">
        <property role="TrG5h" value="im" />
        <node concept="H_c77" id="WB9a1LKWYQ" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="WB9a1LKX00" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="WB9a1LKwF5" role="jymVt" />
    <node concept="2YIFZL" id="7Rtv0wX72Lv" role="jymVt">
      <property role="TrG5h" value="assertHaveEqualContent" />
      <node concept="3clFbS" id="7Rtv0wX72Ly" role="3clF47">
        <node concept="3vwNmj" id="7Rtv0wX78oY" role="3cqZAp">
          <node concept="3_1$Yv" id="7Rtv0wX78oZ" role="3_9lra">
            <node concept="Xl_RD" id="7Rtv0wX78p5" role="3_1BAH">
              <property role="Xl_RC" value="--- Content is not Equal ---" />
            </node>
          </node>
          <node concept="1rXfSq" id="7Rtv0wX78pd" role="3vwVQn">
            <ref role="37wK5l" node="WB9a1LKXNN" resolve="contentEquals" />
            <node concept="37vLTw" id="7Rtv0wX78_p" role="37wK5m">
              <ref role="3cqZAo" node="7Rtv0wX72WI" resolve="actual" />
            </node>
            <node concept="37vLTw" id="7Rtv0wX78De" role="37wK5m">
              <ref role="3cqZAo" node="7Rtv0wX73i4" resolve="expect" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Rtv0wX70t6" role="1B3o_S" />
      <node concept="3cqZAl" id="7Rtv0wX7g0h" role="3clF45" />
      <node concept="37vLTG" id="7Rtv0wX72WI" role="3clF46">
        <property role="TrG5h" value="actual" />
        <node concept="3uibUv" id="2QPHU78xL3q" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="7Rtv0wX73i4" role="3clF46">
        <property role="TrG5h" value="expect" />
        <node concept="3uibUv" id="2QPHU78xLf0" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Rtv0wX8MXZ" role="jymVt" />
    <node concept="2YIFZL" id="WB9a1LKXNN" role="jymVt">
      <property role="TrG5h" value="contentEquals" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="WB9a1LKXNU" role="3clF47">
        <node concept="3SKdUt" id="7Rtv0wX8Qmo" role="3cqZAp">
          <node concept="3SKdUq" id="7Rtv0wX8Qmq" role="3SKWNk">
            <property role="3SKdUp" value="this comparison is rather basic it does not give any clue about the mismatch" />
          </node>
        </node>
        <node concept="SfApY" id="WB9a1LKXNV" role="3cqZAp">
          <node concept="3clFbS" id="WB9a1LKXNW" role="SfCbr">
            <node concept="3cpWs6" id="WB9a1LKXNX" role="3cqZAp">
              <node concept="2YIFZM" id="WB9a1LKXNY" role="3cqZAk">
                <ref role="37wK5l" to="8oaq:~IOUtils.contentEquals(java.io.InputStream,java.io.InputStream)" resolve="contentEquals" />
                <ref role="1Pybhc" to="8oaq:~IOUtils" resolve="IOUtils" />
                <node concept="2YIFZM" id="2QPHU78xNm1" role="37wK5m">
                  <ref role="37wK5l" to="8oaq:~FileUtils.openInputStream(java.io.File)" resolve="openInputStream" />
                  <ref role="1Pybhc" to="8oaq:~FileUtils" resolve="FileUtils" />
                  <node concept="37vLTw" id="2QPHU78xNyc" role="37wK5m">
                    <ref role="3cqZAo" node="WB9a1LKXNP" resolve="actual" />
                  </node>
                </node>
                <node concept="2YIFZM" id="2QPHU78xPF9" role="37wK5m">
                  <ref role="37wK5l" to="8oaq:~FileUtils.openInputStream(java.io.File)" resolve="openInputStream" />
                  <ref role="1Pybhc" to="8oaq:~FileUtils" resolve="FileUtils" />
                  <node concept="37vLTw" id="2QPHU78xPQp" role="37wK5m">
                    <ref role="3cqZAo" node="WB9a1LKXNR" resolve="expect" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="WB9a1LKXO5" role="TEbGg">
            <node concept="3clFbS" id="WB9a1LKXO6" role="TDEfX">
              <node concept="2xdQw9" id="WB9a1LKXO7" role="3cqZAp">
                <property role="2xdLsb" value="error" />
                <node concept="Xl_RD" id="WB9a1LKXO8" role="9lYJi">
                  <property role="Xl_RC" value="contentEquals IO error occured: " />
                </node>
                <node concept="37vLTw" id="WB9a1LKXO9" role="9lYJj">
                  <ref role="3cqZAo" node="WB9a1LKXOc" resolve="e" />
                </node>
              </node>
              <node concept="3cpWs6" id="WB9a1LKXOa" role="3cqZAp">
                <node concept="3clFbT" id="WB9a1LKXOb" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3cpWsn" id="WB9a1LKXOc" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="WB9a1LKXOd" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="WB9a1LKXNT" role="3clF45" />
      <node concept="37vLTG" id="WB9a1LKXNP" role="3clF46">
        <property role="TrG5h" value="actual" />
        <node concept="3uibUv" id="2QPHU78xLq_" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="37vLTG" id="WB9a1LKXNR" role="3clF46">
        <property role="TrG5h" value="expect" />
        <node concept="3uibUv" id="2QPHU78xLBt" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~File" resolve="File" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2QPHU78yNyy" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7ljEj9ZfWDg" role="jymVt" />
    <node concept="2YIFZL" id="7ljEj9ZfYsp" role="jymVt">
      <property role="TrG5h" value="diff" />
      <node concept="3clFbS" id="7ljEj9ZfYss" role="3clF47">
        <node concept="3SKdUt" id="7ljEj9Zi$Y8" role="3cqZAp">
          <node concept="3SKdUq" id="7ljEj9Zi$Ya" role="3SKWNk">
            <property role="3SKdUp" value="use java-diff-utils to provide more details about the mismatch" />
          </node>
        </node>
        <node concept="3cpWs8" id="7ljEj9ZggTn" role="3cqZAp">
          <node concept="3cpWsn" id="7ljEj9ZggTq" role="3cpWs9">
            <property role="TrG5h" value="actual" />
            <node concept="_YKpA" id="7ljEj9ZggTj" role="1tU5fm">
              <node concept="3uibUv" id="7ljEj9Zgh20" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="7ljEj9Zg8Wv" role="3cqZAp">
          <node concept="3clFbS" id="7ljEj9Zg8Wx" role="SfCbr">
            <node concept="3clFbF" id="7ljEj9Zgkp5" role="3cqZAp">
              <node concept="37vLTI" id="7ljEj9Zgl3m" role="3clFbG">
                <node concept="37vLTw" id="7ljEj9Zgkp3" role="37vLTJ">
                  <ref role="3cqZAo" node="7ljEj9ZggTq" resolve="actual" />
                </node>
                <node concept="2YIFZM" id="7ljEj9Zg6JS" role="37vLTx">
                  <ref role="1Pybhc" to="8oaq:~IOUtils" resolve="IOUtils" />
                  <ref role="37wK5l" to="8oaq:~IOUtils.readLines(java.io.InputStream)" resolve="readLines" />
                  <node concept="2OqwBi" id="7ljEj9Zg6UG" role="37wK5m">
                    <node concept="37vLTw" id="7ljEj9Zg6ND" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ljEj9ZfY_F" resolve="actualFile" />
                    </node>
                    <node concept="liA8E" id="7ljEj9Zg83q" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.openInputStream()" resolve="openInputStream" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="7ljEj9Zg8Wy" role="TEbGg">
            <node concept="3cpWsn" id="7ljEj9Zg8W$" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="7ljEj9ZgaHW" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="7ljEj9Zg8WC" role="TDEfX">
              <node concept="2xdQw9" id="7ljEj9ZgbAo" role="3cqZAp">
                <property role="2xdLsb" value="error" />
                <node concept="3cpWs3" id="7ljEj9ZiT43" role="9lYJi">
                  <node concept="Xl_RD" id="7ljEj9ZiTez" role="3uHU7w">
                    <property role="Xl_RC" value="'" />
                  </node>
                  <node concept="3cpWs3" id="7ljEj9ZiQPu" role="3uHU7B">
                    <node concept="Xl_RD" id="7ljEj9ZgbAp" role="3uHU7B">
                      <property role="Xl_RC" value="IOUtils.readlines: error occured on file '" />
                    </node>
                    <node concept="2OqwBi" id="7ljEj9ZiR4F" role="3uHU7w">
                      <node concept="37vLTw" id="7ljEj9ZiQRF" role="2Oq$k0">
                        <ref role="3cqZAo" node="7ljEj9ZfY_F" resolve="actualFile" />
                      </node>
                      <node concept="liA8E" id="7ljEj9ZiSMI" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7ljEj9ZgbAq" role="9lYJj">
                  <ref role="3cqZAo" node="7ljEj9Zg8W$" resolve="e" />
                </node>
              </node>
              <node concept="3cpWs6" id="7ljEj9ZgbAr" role="3cqZAp">
                <node concept="3clFbT" id="7ljEj9ZgbAs" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ljEj9Zgi8q" role="3cqZAp">
          <node concept="3cpWsn" id="7ljEj9Zgi8t" role="3cpWs9">
            <property role="TrG5h" value="expect" />
            <node concept="_YKpA" id="7ljEj9Zgi8m" role="1tU5fm">
              <node concept="3uibUv" id="7ljEj9Zgihg" role="_ZDj9">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="7ljEj9Zj08I" role="3cqZAp">
          <node concept="3clFbS" id="7ljEj9Zj08J" role="SfCbr">
            <node concept="3clFbF" id="7ljEj9Zj08R" role="3cqZAp">
              <node concept="37vLTI" id="7ljEj9Zj08S" role="3clFbG">
                <node concept="37vLTw" id="7ljEj9Zj08T" role="37vLTJ">
                  <ref role="3cqZAo" node="7ljEj9Zgi8t" resolve="expect" />
                </node>
                <node concept="2YIFZM" id="7ljEj9Zj08U" role="37vLTx">
                  <ref role="1Pybhc" to="8oaq:~IOUtils" resolve="IOUtils" />
                  <ref role="37wK5l" to="8oaq:~IOUtils.readLines(java.io.InputStream)" resolve="readLines" />
                  <node concept="2OqwBi" id="7ljEj9Zj08V" role="37wK5m">
                    <node concept="liA8E" id="7ljEj9Zj08W" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.openInputStream()" resolve="openInputStream" />
                    </node>
                    <node concept="37vLTw" id="7ljEj9Zj08X" role="2Oq$k0">
                      <ref role="3cqZAo" node="7ljEj9ZfYGk" resolve="expectFile" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="7ljEj9Zj08Y" role="TEbGg">
            <node concept="3cpWsn" id="7ljEj9Zj08Z" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="7ljEj9Zj090" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="7ljEj9Zj091" role="TDEfX">
              <node concept="2xdQw9" id="7ljEj9Zj092" role="3cqZAp">
                <property role="2xdLsb" value="error" />
                <node concept="3cpWs3" id="7ljEj9Zj093" role="9lYJi">
                  <node concept="Xl_RD" id="7ljEj9Zj094" role="3uHU7w">
                    <property role="Xl_RC" value="'" />
                  </node>
                  <node concept="3cpWs3" id="7ljEj9Zj095" role="3uHU7B">
                    <node concept="Xl_RD" id="7ljEj9Zj096" role="3uHU7B">
                      <property role="Xl_RC" value="IOUtils.readlines: error occured on file '" />
                    </node>
                    <node concept="2OqwBi" id="7ljEj9Zj097" role="3uHU7w">
                      <node concept="37vLTw" id="7ljEj9Zj4PK" role="2Oq$k0">
                        <ref role="3cqZAo" node="7ljEj9ZfYGk" resolve="expectFile" />
                      </node>
                      <node concept="liA8E" id="7ljEj9Zj099" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7ljEj9Zj09a" role="9lYJj">
                  <ref role="3cqZAo" node="7ljEj9Zj08Z" resolve="e" />
                </node>
              </node>
              <node concept="3cpWs6" id="7ljEj9Zj09b" role="3cqZAp">
                <node concept="3clFbT" id="7ljEj9Zj09c" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7ljEj9ZiJtG" role="3cqZAp" />
        <node concept="3cpWs8" id="7ljEj9ZgqUi" role="3cqZAp">
          <node concept="3cpWsn" id="7ljEj9ZgqUj" role="3cpWs9">
            <property role="TrG5h" value="patch" />
            <node concept="3uibUv" id="7ljEj9ZgzFT" role="1tU5fm">
              <ref role="3uigEE" to="2o:~Patch" resolve="Patch" />
            </node>
            <node concept="2YIFZM" id="7ljEj9Zg4Jw" role="33vP2m">
              <ref role="37wK5l" to="2o:~DiffUtils.diff(java.util.List,java.util.List)" resolve="diff" />
              <ref role="1Pybhc" to="2o:~DiffUtils" resolve="DiffUtils" />
              <node concept="37vLTw" id="7ljEj9ZgpG0" role="37wK5m">
                <ref role="3cqZAo" node="7ljEj9Zgi8t" resolve="expect" />
              </node>
              <node concept="37vLTw" id="7ljEj9ZlaDr" role="37wK5m">
                <ref role="3cqZAo" node="7ljEj9ZggTq" resolve="actual" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7ljEj9ZibId" role="3cqZAp" />
        <node concept="3clFbJ" id="7ljEj9ZhtY4" role="3cqZAp">
          <node concept="3clFbS" id="7ljEj9ZhtY6" role="3clFbx">
            <node concept="3cpWs6" id="7ljEj9ZhNN5" role="3cqZAp">
              <node concept="3clFbT" id="7ljEj9ZhPrA" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7ljEj9ZhKUN" role="3clFbw">
            <node concept="3cmrfG" id="7ljEj9ZhLRq" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="7ljEj9ZhAVg" role="3uHU7B">
              <node concept="2OqwBi" id="7ljEj9ZhwEu" role="2Oq$k0">
                <node concept="37vLTw" id="7ljEj9ZhvXm" role="2Oq$k0">
                  <ref role="3cqZAo" node="7ljEj9ZgqUj" resolve="patch" />
                </node>
                <node concept="liA8E" id="7ljEj9ZhAp2" role="2OqNvi">
                  <ref role="37wK5l" to="2o:~Patch.getDeltas()" resolve="getDeltas" />
                </node>
              </node>
              <node concept="liA8E" id="7ljEj9ZhIcu" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7ljEj9ZhXzb" role="9aQIa">
            <node concept="3clFbS" id="7ljEj9ZhXzc" role="9aQI4">
              <node concept="1DcWWT" id="7ljEj9Zg_rR" role="3cqZAp">
                <node concept="3clFbS" id="7ljEj9Zg_rT" role="2LFqv$">
                  <node concept="3clFbF" id="7ljEj9ZgKe2" role="3cqZAp">
                    <node concept="2OqwBi" id="7ljEj9ZgKvO" role="3clFbG">
                      <node concept="10M0yZ" id="7ljEj9ZgKeS" role="2Oq$k0">
                        <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                        <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
                      </node>
                      <node concept="liA8E" id="7ljEj9ZgMhe" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.Object)" resolve="println" />
                        <node concept="37vLTw" id="7ljEj9ZgMiX" role="37wK5m">
                          <ref role="3cqZAo" node="7ljEj9Zg_rU" resolve="delta" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWsn" id="7ljEj9Zg_rU" role="1Duv9x">
                  <property role="TrG5h" value="delta" />
                  <node concept="3uibUv" id="7ljEj9Zg_HQ" role="1tU5fm">
                    <ref role="3uigEE" to="2o:~Delta" resolve="Delta" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7ljEj9ZgBgO" role="1DdaDG">
                  <node concept="37vLTw" id="7ljEj9ZgB2O" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ljEj9ZgqUj" resolve="patch" />
                  </node>
                  <node concept="liA8E" id="7ljEj9ZgGdT" role="2OqNvi">
                    <ref role="37wK5l" to="2o:~Patch.getDeltas()" resolve="getDeltas" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7ljEj9Zi4tn" role="3cqZAp">
                <node concept="3clFbT" id="7ljEj9Zi4UI" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7ljEj9ZfX_e" role="1B3o_S" />
      <node concept="10P_77" id="7ljEj9ZfXKg" role="3clF45" />
      <node concept="37vLTG" id="7ljEj9ZfY_F" role="3clF46">
        <property role="TrG5h" value="actualFile" />
        <node concept="3uibUv" id="7ljEj9ZfY_E" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="37vLTG" id="7ljEj9ZfYGk" role="3clF46">
        <property role="TrG5h" value="expectFile" />
        <node concept="3uibUv" id="7ljEj9ZfYIG" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ljEj9Zjrbi" role="jymVt" />
    <node concept="3Tm1VV" id="WB9a1LKwEo" role="1B3o_S" />
  </node>
</model>


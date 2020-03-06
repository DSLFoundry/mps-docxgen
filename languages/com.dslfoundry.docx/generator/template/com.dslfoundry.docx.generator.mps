<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b4f7d452-ea5a-4798-a286-d903ac28c88f(com.dslfoundry.docx.generator)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="w827" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs.openapi(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4uRoABxENtb">
    <property role="TrG5h" value="Helper" />
    <node concept="2tJIrI" id="2QPHU78fQRu" role="jymVt" />
    <node concept="2YIFZL" id="WB9a1LKWYL" role="jymVt">
      <property role="TrG5h" value="absPath2Solution4Model" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
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
    <node concept="2tJIrI" id="4uRoABxENtF" role="jymVt" />
    <node concept="3Tm1VV" id="4uRoABxENtc" role="1B3o_S" />
  </node>
</model>


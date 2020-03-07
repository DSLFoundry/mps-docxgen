<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8275cd5a-742e-439d-807d-4c44e43384b0(org.xmlunit.tests.samples@tests)">
  <persistence version="9" />
  <languages>
    <use id="8585453e-6bfb-4d80-98de-b16074f1d86c" name="jetbrains.mps.lang.test" version="2" />
    <use id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
  </languages>
  <imports>
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="4k19" ref="1fd846c3-c5f9-4b9e-9ecc-e716f7149f86/java:org.hamcrest(Hamcrest/)" />
    <import index="rjhg" ref="49808fad-9d41-4b96-83fa-9231640f6b2b/java:org.junit(JUnit/)" />
    <import index="4cse" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.xmlunit.matchers(org.xmlunit/)" />
    <import index="ga82" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.xmlunit.diff(org.xmlunit/)" />
    <import index="529q" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.xmlunit.builder(org.xmlunit/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="sqz" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.error.uri(org.xmlunit/)" />
    <import index="sun4" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.condition(org.xmlunit/)" />
    <import index="xy7b" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.api.filter(org.xmlunit/)" />
    <import index="hflw" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.error.future(org.xmlunit/)" />
    <import index="m2rp" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.data(org.xmlunit/)" />
    <import index="v17z" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.groups(org.xmlunit/)" />
    <import index="y889" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.extractor(org.xmlunit/)" />
    <import index="1mgw" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.api.exception(org.xmlunit/)" />
    <import index="n0b" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.configuration(org.xmlunit/)" />
    <import index="7631" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.error(org.xmlunit/)" />
    <import index="gi1a" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.api.junit.jupiter(org.xmlunit/)" />
    <import index="5gj8" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.api.recursive.comparison(org.xmlunit/)" />
    <import index="qtwf" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.api(org.xmlunit/)" />
    <import index="pp0p" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.annotations(org.xmlunit/)" />
    <import index="rjj5" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.api.iterable(org.xmlunit/)" />
    <import index="jge9" ref="c8271b23-b6fe-421a-8a18-978af92cc71c/java:org.assertj.core.description(org.xmlunit/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
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
    </language>
    <language id="f61473f9-130f-42f6-b98d-6c438812c2f6" name="jetbrains.mps.baseLanguage.unitTest">
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3s_ewN" id="6ItT4KaXnv$">
    <property role="3s_ewP" value="First" />
    <node concept="3Tm1VV" id="6ItT4KaXnv_" role="1B3o_S" />
    <node concept="3s_gsd" id="6ItT4KaXnvA" role="3s_ewO">
      <node concept="3s$Bmu" id="6ItT4KaXnwp" role="3s_gse">
        <property role="3s$Bm0" value="t001" />
        <node concept="3cqZAl" id="6ItT4KaXnwq" role="3clF45" />
        <node concept="3Tm1VV" id="6ItT4KaXnwr" role="1B3o_S" />
        <node concept="3clFbS" id="6ItT4KaXnws" role="3clF47">
          <node concept="3cpWs8" id="6ItT4KaXnKr" role="3cqZAp">
            <node concept="3cpWsn" id="6ItT4KaXnKq" role="3cpWs9">
              <property role="TrG5h" value="controlXml" />
              <node concept="3uibUv" id="6ItT4KaXnKs" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="Xl_RD" id="6ItT4KaXnKt" role="33vP2m">
                <property role="Xl_RC" value="&lt;struct&gt;&lt;int&gt;3&lt;/int&gt;&lt;boolean&gt;false&lt;/boolean&gt;&lt;/struct&gt;" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="6ItT4KaXnKv" role="3cqZAp">
            <node concept="3cpWsn" id="6ItT4KaXnKu" role="3cpWs9">
              <property role="TrG5h" value="testXml" />
              <node concept="3uibUv" id="6ItT4KaXnKw" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="Xl_RD" id="6ItT4KaXnKx" role="33vP2m">
                <property role="Xl_RC" value="&lt;struct&gt;&lt;int&gt;3&lt;/int&gt;&lt;boolean&gt;false&lt;/boolean&gt;&lt;/struct&gt;" />
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="3o10vYBZin" role="3cqZAp">
            <node concept="3SKdUq" id="3o10vYBZip" role="3SKWNk">
              <property role="3SKdUp" value="CompareMatcher is a factory, it returns a matcher that needs to be called with instance method" />
            </node>
          </node>
          <node concept="3clFbF" id="3o10vYBSMR" role="3cqZAp">
            <node concept="2YIFZM" id="3o10vYBVBw" role="3clFbG">
              <ref role="37wK5l" to="4k19:~MatcherAssert.assertThat(java.lang.String,boolean)" resolve="assertThat" />
              <ref role="1Pybhc" to="4k19:~MatcherAssert" resolve="MatcherAssert" />
              <node concept="37vLTw" id="3o10vYBVBx" role="37wK5m">
                <ref role="3cqZAo" node="6ItT4KaXnKu" resolve="testXml" />
              </node>
              <node concept="2OqwBi" id="aZ10a9u7KX" role="37wK5m">
                <node concept="2YIFZM" id="3o10vYBVBy" role="2Oq$k0">
                  <ref role="37wK5l" to="4cse:~CompareMatcher.isIdenticalTo(java.lang.Object)" resolve="isIdenticalTo" />
                  <ref role="1Pybhc" to="4cse:~CompareMatcher" resolve="CompareMatcher" />
                  <node concept="37vLTw" id="3o10vYBVBz" role="37wK5m">
                    <ref role="3cqZAo" node="6ItT4KaXnKq" resolve="controlXml" />
                  </node>
                </node>
                <node concept="liA8E" id="aZ10a9u8bh" role="2OqNvi">
                  <ref role="37wK5l" to="4cse:~CompareMatcher.matches(java.lang.Object)" resolve="matches" />
                  <node concept="37vLTw" id="aZ10a9u8fl" role="37wK5m">
                    <ref role="3cqZAo" node="6ItT4KaXnKu" resolve="testXml" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3s$Bmu" id="6ItT4KaXt8M" role="3s_gse">
        <property role="3s$Bm0" value="t002" />
        <node concept="3cqZAl" id="6ItT4KaXt8N" role="3clF45" />
        <node concept="3Tm1VV" id="6ItT4KaXt8O" role="1B3o_S" />
        <node concept="3clFbS" id="6ItT4KaXt8P" role="3clF47">
          <node concept="3SKdUt" id="3o10vYBjZ8" role="3cqZAp">
            <node concept="3SKdUq" id="3o10vYBjZa" role="3SKWNk">
              <property role="3SKdUp" value="source: https://github.com/xmlunit/user-guide/wiki/DiffBuilder" />
            </node>
          </node>
          <node concept="3cpWs8" id="2Rlv0MYx58v" role="3cqZAp">
            <node concept="3cpWsn" id="2Rlv0MYx58u" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="control" />
              <node concept="3uibUv" id="2Rlv0MYx58w" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="Xl_RD" id="2Rlv0MYx58x" role="33vP2m">
                <property role="Xl_RC" value="&lt;a&gt;&lt;b attr=\&quot;abc\&quot;&gt;&lt;/b&gt;&lt;/a&gt;" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2Rlv0MYx58z" role="3cqZAp">
            <node concept="3cpWsn" id="2Rlv0MYx58y" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="test" />
              <node concept="3uibUv" id="2Rlv0MYx58$" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="Xl_RD" id="2Rlv0MYx58_" role="33vP2m">
                <property role="Xl_RC" value="&lt;a&gt;&lt;b attr=\&quot;abc\&quot;&gt;&lt;/b&gt;&lt;/a&gt;" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="2Rlv0MYx8qa" role="3cqZAp">
            <node concept="3cpWsn" id="2Rlv0MYx8qb" role="3cpWs9">
              <property role="TrG5h" value="myDiff" />
              <node concept="3uibUv" id="2Rlv0MYx8qc" role="1tU5fm">
                <ref role="3uigEE" to="ga82:~Diff" resolve="Diff" />
              </node>
              <node concept="2OqwBi" id="2Rlv0MYx58D" role="33vP2m">
                <node concept="2OqwBi" id="2Rlv0MYx58E" role="2Oq$k0">
                  <node concept="2YIFZM" id="2Rlv0MYx6Ia" role="2Oq$k0">
                    <ref role="37wK5l" to="529q:~DiffBuilder.compare(java.lang.Object)" resolve="compare" />
                    <ref role="1Pybhc" to="529q:~DiffBuilder" resolve="DiffBuilder" />
                    <node concept="2YIFZM" id="2Rlv0MYx7gE" role="37wK5m">
                      <ref role="1Pybhc" to="529q:~Input" resolve="Input" />
                      <ref role="37wK5l" to="529q:~Input.fromString(java.lang.String)" resolve="fromString" />
                      <node concept="37vLTw" id="2Rlv0MYx7gF" role="37wK5m">
                        <ref role="3cqZAo" node="2Rlv0MYx58u" resolve="control" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2Rlv0MYx58I" role="2OqNvi">
                    <ref role="37wK5l" to="529q:~DiffBuilder.withTest(java.lang.Object)" resolve="withTest" />
                    <node concept="2YIFZM" id="2Rlv0MYx6H6" role="37wK5m">
                      <ref role="37wK5l" to="529q:~Input.fromString(java.lang.String)" resolve="fromString" />
                      <ref role="1Pybhc" to="529q:~Input" resolve="Input" />
                      <node concept="37vLTw" id="2Rlv0MYx6H7" role="37wK5m">
                        <ref role="3cqZAo" node="2Rlv0MYx58y" resolve="test" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="aZ10a9u3Lt" role="2OqNvi">
                  <ref role="37wK5l" to="529q:~DiffBuilder.build()" resolve="build" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2Rlv0MYx9TJ" role="3cqZAp">
            <node concept="2YIFZM" id="2Rlv0MYxa1h" role="3clFbG">
              <ref role="1Pybhc" to="rjhg:~Assert" resolve="Assert" />
              <ref role="37wK5l" to="rjhg:~Assert.assertFalse(java.lang.String,boolean)" resolve="assertFalse" />
              <node concept="2OqwBi" id="2Rlv0MYx6UG" role="37wK5m">
                <node concept="37vLTw" id="2Rlv0MYx6UF" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Rlv0MYx8qb" resolve="myDiff" />
                </node>
                <node concept="liA8E" id="aZ10a9u4AX" role="2OqNvi">
                  <ref role="37wK5l" to="ga82:~Diff.toString()" resolve="toString" />
                </node>
              </node>
              <node concept="2OqwBi" id="2Rlv0MYx6U3" role="37wK5m">
                <node concept="37vLTw" id="2Rlv0MYxaeP" role="2Oq$k0">
                  <ref role="3cqZAo" node="2Rlv0MYx8qb" resolve="myDiff" />
                </node>
                <node concept="liA8E" id="aZ10a9u5pe" role="2OqNvi">
                  <ref role="37wK5l" to="ga82:~Diff.hasDifferences()" resolve="hasDifferences" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


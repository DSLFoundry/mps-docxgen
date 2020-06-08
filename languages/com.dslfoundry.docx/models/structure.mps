<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9742a092-2a39-4a23-b1f7-4e446da4d386(com.dslfoundry.docx.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="3UTNk5VeTNB">
    <property role="EcuMT" value="4519869382167076071" />
    <property role="TrG5h" value="DocxDocument" />
    <property role="34LRSv" value="DOCX" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2RpYLN7f$Th" role="1TKVEi">
      <property role="IQ2ns" value="3303947902673374801" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="content" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="4sixqEheiIX" resolve="DocxParagraphCollection" />
    </node>
    <node concept="1TJgyj" id="2QPHU78fsef" role="1TKVEi">
      <property role="IQ2ns" value="3293740607968494479" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="template" />
      <ref role="20lvS9" node="2QPHU78fsec" resolve="DocxTemplate" />
    </node>
    <node concept="PrWs8" id="3ITti2R6C26" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="2QPHU78qYrB" role="1TKVEl">
      <property role="IQ2nx" value="3293740607971518183" />
      <property role="TrG5h" value="outputPath" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2QPHU78qYJW" role="1TKVEl">
      <property role="IQ2nx" value="3293740607971519484" />
      <property role="TrG5h" value="templatePath" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2RpYLN7f$Tk">
    <property role="EcuMT" value="3303947902673374804" />
    <property role="TrG5h" value="DocxParagraph" />
    <property role="34LRSv" value="P" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2RpYLN7gnds" role="1TKVEi">
      <property role="IQ2ns" value="3303947902673580892" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="runs" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2RpYLN7gndo" resolve="DocxRun" />
    </node>
    <node concept="1TJgyi" id="2RpYLN7has9" role="1TKVEl">
      <property role="IQ2nx" value="3303947902673790729" />
      <property role="TrG5h" value="style" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="PrWs8" id="4sixqEheiIU" role="PzmwI">
      <ref role="PrY4T" node="4sixqEheiIT" resolve="IDocxParagraphs" />
    </node>
  </node>
  <node concept="1TIwiD" id="2RpYLN7gndo">
    <property role="EcuMT" value="3303947902673580888" />
    <property role="TrG5h" value="DocxRun" />
    <property role="34LRSv" value="R" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2RpYLN7gndD" role="1TKVEi">
      <property role="IQ2ns" value="3303947902673580905" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="texts" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2RpYLN7gndv" resolve="DocxText" />
    </node>
    <node concept="1TJgyj" id="2RpYLN7hvYl" role="1TKVEi">
      <property role="IQ2ns" value="3303947902673878933" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="props" />
      <ref role="20lvS9" node="2RpYLN7hvXW" resolve="DocxRunProps" />
    </node>
  </node>
  <node concept="1TIwiD" id="2RpYLN7gndv">
    <property role="EcuMT" value="3303947902673580895" />
    <property role="TrG5h" value="DocxText" />
    <property role="34LRSv" value="T" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="2RpYLN7gndA" role="1TKVEl">
      <property role="IQ2nx" value="3303947902673580902" />
      <property role="TrG5h" value="value" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="2OLty_fk7ep" role="1TKVEl">
      <property role="IQ2nx" value="3256513925361988505" />
      <property role="TrG5h" value="pPreserveSpace" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
  </node>
  <node concept="1TIwiD" id="2RpYLN7hvXW">
    <property role="EcuMT" value="3303947902673878908" />
    <property role="TrG5h" value="DocxRunProps" />
    <property role="34LRSv" value="rPr" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="2RpYLN7hvXX" role="1TKVEl">
      <property role="IQ2nx" value="3303947902673878909" />
      <property role="TrG5h" value="bold" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="2RpYLN7hvY0" role="1TKVEl">
      <property role="IQ2nx" value="3303947902673878912" />
      <property role="TrG5h" value="italic" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="2RpYLN7hvY5" role="1TKVEl">
      <property role="IQ2nx" value="3303947902673878917" />
      <property role="TrG5h" value="underline" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="1TJgyi" id="2RpYLN7hvYc" role="1TKVEl">
      <property role="IQ2nx" value="3303947902673878924" />
      <property role="TrG5h" value="color" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="PlHQZ" id="4sixqEheiIT">
    <property role="EcuMT" value="5121302693901052857" />
    <property role="TrG5h" value="IDocxParagraphs" />
  </node>
  <node concept="1TIwiD" id="4sixqEheiIX">
    <property role="EcuMT" value="5121302693901052861" />
    <property role="TrG5h" value="DocxParagraphCollection" />
    <property role="34LRSv" value="P*" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="4sixqEheiIY" role="PzmwI">
      <ref role="PrY4T" node="4sixqEheiIT" resolve="IDocxParagraphs" />
    </node>
    <node concept="1TJgyj" id="4sixqEheiJ1" role="1TKVEi">
      <property role="IQ2ns" value="5121302693901052865" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="paragraphs" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="4sixqEheiIT" resolve="IDocxParagraphs" />
    </node>
  </node>
  <node concept="1TIwiD" id="2QPHU78fsec">
    <property role="EcuMT" value="3293740607968494476" />
    <property role="TrG5h" value="DocxTemplate" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2QPHU78fsed" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
</model>


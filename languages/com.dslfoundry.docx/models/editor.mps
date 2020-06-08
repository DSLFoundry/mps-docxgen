<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3a449a93-3e9f-43f3-bcfd-d4e6256698c9(com.dslfoundry.docx.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="13" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="hgfn" ref="r:9742a092-2a39-4a23-b1f7-4e446da4d386(com.dslfoundry.docx.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1237375020029" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineChildrenStyleClassItem" flags="ln" index="pj6Ft" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414976055" name="jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem" flags="ln" index="VPXOz" />
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1233823429331" name="jetbrains.mps.lang.editor.structure.HorizontalGapStyleClassItem" flags="ln" index="15ARfc" />
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="1236262245656" name="jetbrains.mps.lang.editor.structure.MatchingLabelStyleClassItem" flags="ln" index="3mYdg7">
        <property id="1238091709220" name="labelName" index="1413C4" />
      </concept>
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="3UTNk5VffO1">
    <ref role="1XX52x" to="hgfn:3UTNk5VeTNB" resolve="DocxDocument" />
    <node concept="3EZMnI" id="2RpYLN7fNJo" role="2wV5jI">
      <node concept="l2Vlx" id="2RpYLN7fNJp" role="2iSdaV" />
      <node concept="3F0ifn" id="2RpYLN7fNJq" role="3EZMnx">
        <property role="3F0ifm" value="Document:" />
      </node>
      <node concept="3F0A7n" id="2Othy1h6abb" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2QPHU78fGFQ" role="3EZMnx">
        <property role="3F0ifm" value=".docx" />
        <node concept="11L4FC" id="2QPHU78fGG6" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="2QPHU78fGGb" role="3F10Kt">
          <property role="Vb096" value="fLJRk5_/gray" />
        </node>
      </node>
      <node concept="3F0ifn" id="2QPHU78fsev" role="3EZMnx">
        <property role="3F0ifm" value="with Template:" />
      </node>
      <node concept="3F1sOY" id="2QPHU78fseV" role="3EZMnx">
        <ref role="1NtTu8" to="hgfn:2QPHU78fsef" resolve="template" />
      </node>
      <node concept="3F0ifn" id="2RpYLN7fNJr" role="3EZMnx">
        <property role="3F0ifm" value="{" />
        <node concept="3mYdg7" id="2RpYLN7fNJs" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
        <node concept="ljvvj" id="2RpYLN7fNJt" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3EZMnI" id="2RpYLN7fNJu" role="3EZMnx">
        <node concept="l2Vlx" id="2RpYLN7fNJv" role="2iSdaV" />
        <node concept="lj46D" id="2RpYLN7fNJw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="3F1sOY" id="4sixqEheUVv" role="3EZMnx">
          <ref role="1NtTu8" to="hgfn:2RpYLN7f$Th" resolve="content" />
        </node>
      </node>
      <node concept="3F0ifn" id="2RpYLN7fNJE" role="3EZMnx">
        <property role="3F0ifm" value="}" />
        <node concept="3mYdg7" id="2RpYLN7fNJF" role="3F10Kt">
          <property role="1413C4" value="body-brace" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2RpYLN7hg4$">
    <ref role="1XX52x" to="hgfn:2RpYLN7f$Tk" resolve="DocxParagraph" />
    <node concept="3EZMnI" id="2RpYLN7hg4A" role="2wV5jI">
      <node concept="l2Vlx" id="2RpYLN7hg4B" role="2iSdaV" />
      <node concept="3F0ifn" id="2OLty_folsr" role="3EZMnx">
        <property role="3F0ifm" value="P" />
        <node concept="ljvvj" id="2OLty_folsR" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="4sixqEhfSEZ" role="3EZMnx">
        <property role="3F0ifm" value="(  " />
        <node concept="11LMrY" id="4sixqEhfURv" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="30gYXW" id="2OLty_fnEo6" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
        <node concept="VechU" id="2OLty_fnEoB" role="3F10Kt">
          <property role="Vb096" value="hEZAO13/white" />
        </node>
        <node concept="VPXOz" id="2OLty_fnEo8" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="2RpYLN7hg4N" role="3EZMnx">
        <ref role="1NtTu8" to="hgfn:2RpYLN7gnds" resolve="runs" />
        <node concept="l2Vlx" id="2RpYLN7hg4O" role="2czzBx" />
        <node concept="lj46D" id="4sixqEhfSFu" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="ljvvj" id="2RpYLN7hg8d" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="3F0ifn" id="2OLty_fnzaP" role="3EZMnx">
        <property role="3F0ifm" value="  )" />
        <node concept="VPXOz" id="2OLty_fnEoj" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="30gYXW" id="2OLty_foaF8" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
        </node>
        <node concept="VechU" id="2OLty_foaF9" role="3F10Kt">
          <property role="Vb096" value="hEZAO13/white" />
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="2OLty_fnz9B" role="6VMZX">
      <node concept="l2Vlx" id="2OLty_fnz9C" role="2iSdaV" />
      <node concept="3F0ifn" id="2OLty_fnz9Q" role="3EZMnx">
        <property role="3F0ifm" value="style:" />
      </node>
      <node concept="3F0A7n" id="2OLty_fnz2i" role="3EZMnx">
        <ref role="1NtTu8" to="hgfn:2RpYLN7has9" resolve="style" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2RpYLN7hvHs">
    <ref role="1XX52x" to="hgfn:2RpYLN7gndo" resolve="DocxRun" />
    <node concept="3EZMnI" id="2RpYLN7hvHu" role="2wV5jI">
      <node concept="15ARfc" id="4sixqEhgK1C" role="3F10Kt">
        <property role="3$6WeP" value="0" />
      </node>
      <node concept="l2Vlx" id="2RpYLN7hvHv" role="2iSdaV" />
      <node concept="3F0ifn" id="2RpYLN7hvHw" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11LMrY" id="2RpYLN7i5_0" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="30gYXW" id="4sixqEhgRn8" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
          <node concept="1iSF2X" id="4sixqEhgRn9" role="VblUZ">
            <property role="1iTho6" value="DDFFFF" />
          </node>
        </node>
        <node concept="VPXOz" id="4sixqEhgOXw" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="2RpYLN7hvHE" role="3EZMnx">
        <ref role="1NtTu8" to="hgfn:2RpYLN7gndD" resolve="texts" />
        <node concept="l2Vlx" id="2RpYLN7hvHF" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="4sixqEhg_sM" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="4sixqEhg_t1" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="30gYXW" id="4sixqEhgHyY" role="3F10Kt">
          <property role="Vb096" value="fLJRk5A/lightGray" />
          <node concept="1iSF2X" id="4sixqEhgRn5" role="VblUZ">
            <property role="1iTho6" value="DDFFFF" />
          </node>
        </node>
        <node concept="VPXOz" id="4sixqEhgOYd" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
    <node concept="3F1sOY" id="2RpYLN7hLsR" role="6VMZX">
      <ref role="1NtTu8" to="hgfn:2RpYLN7hvYl" resolve="props" />
    </node>
  </node>
  <node concept="24kQdi" id="2RpYLN7hSIg">
    <ref role="1XX52x" to="hgfn:2RpYLN7gndv" resolve="DocxText" />
    <node concept="3F0A7n" id="2RpYLN7hSIQ" role="2wV5jI">
      <ref role="1NtTu8" to="hgfn:2RpYLN7gndA" resolve="value" />
      <node concept="VPXOz" id="2RpYLN7hSIU" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
    <node concept="3EZMnI" id="2OLty_fkw9a" role="6VMZX">
      <node concept="2iRfu4" id="2OLty_fkw9b" role="2iSdaV" />
      <node concept="3F0ifn" id="2OLty_fkw9p" role="3EZMnx">
        <property role="3F0ifm" value="preserve space" />
      </node>
      <node concept="3F0A7n" id="2OLty_fkw97" role="3EZMnx">
        <ref role="1NtTu8" to="hgfn:2OLty_fk7ep" resolve="pPreserveSpace" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4sixqEheUVy">
    <ref role="1XX52x" to="hgfn:4sixqEheiIX" resolve="DocxParagraphCollection" />
    <node concept="3EZMnI" id="4sixqEheUVE" role="2wV5jI">
      <node concept="VPXOz" id="4sixqEhfURT" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
      <node concept="l2Vlx" id="4sixqEheUVF" role="2iSdaV" />
      <node concept="PMmxH" id="2OLty_fnsGR" role="3EZMnx">
        <ref role="PMmxG" to="tpco:2wZex4PafBj" resolve="alias" />
        <node concept="ljvvj" id="2OLty_fop3C" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F2HdR" id="4sixqEheUVL" role="3EZMnx">
        <ref role="1NtTu8" to="hgfn:4sixqEheiJ1" resolve="paragraphs" />
        <node concept="l2Vlx" id="4sixqEheUVM" role="2czzBx" />
        <node concept="pj6Ft" id="4sixqEheUVN" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="ljvvj" id="4sixqEheUVP" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="lj46D" id="2OLty_folsU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2QPHU78fIWN">
    <ref role="1XX52x" to="hgfn:2QPHU78fsec" resolve="DocxTemplate" />
    <node concept="3EZMnI" id="2QPHU78fIWP" role="2wV5jI">
      <node concept="l2Vlx" id="2QPHU78fIWQ" role="2iSdaV" />
      <node concept="3F0A7n" id="2QPHU78fIWS" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2QPHU78fIWT" role="3EZMnx">
        <property role="3F0ifm" value=".docx" />
        <node concept="11L4FC" id="2QPHU78fIWU" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="VechU" id="2QPHU78fIXu" role="3F10Kt">
          <property role="Vb096" value="fLJRk5_/gray" />
        </node>
      </node>
    </node>
  </node>
</model>


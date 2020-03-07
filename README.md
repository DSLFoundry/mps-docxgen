# mps-docxgen

This project provides a generation target language named `com.dslfoundry.docx` for generating .docx files from an MPS model.
It is based on the good work from the [docx4j project](https://docx4java.org/).

The structure of the language closely mimics the structure of the WordProcessingML international standard.
In fact, we recommend that you use the documentation of the standard for using com.dslfoundry.docx.
There are multiple sources, for example
[Microsoft](https://docs.microsoft.com/en-us/office/open-xml/structure-of-a-wordprocessingml-document)
or [Apache](https://wiki.openoffice.org/wiki/OOXML/WordProcessingML)
or [ISO/IEC](https://www.iso.org/standard/71691.html)

The com.dslfoundry.docx language includes custom editors that should make life somehwat more easy
when defining templates and reduction rules.
You find examples in the c.d.docx.samples solution.

You may specify a template document which is a regular .docx file
For each generator run, the template document is copied and filled with the output from the generator.
In this way you can create styles and set document properties without coding.
You may even add standard content like headers & footers.

#### Status

This is very much a work in progress.
The the set of concepts presently adopted from the WordProcessingML standard is rather small,
but the ones adopted work pretty well.
It is not the intention to provide each and every piece of functionality of the standard in this language.
Development is "on demand", implementing only what is needed for client projects.
Contributions welcome!


## Usage

1. Add solution org.docx4j and language com.dslfoundry.docx to your own project.
   TODO: explain how.
2. Write a generator for your source language, using com.dslfoundry.docx as target language.
   TODO: provide example project

When invoking this generator on a model in your source language, this happens:
1. MPS runs the generator you wrote in step 2 above.
   This transforms your source language model to a com.dslfoundry.docx model.
   This step uses reduction rules etcetera that you have written in your generator.
2. MPS runs the generator that comes with com.dslfoundry.docx.
   This transforms the c.d.docx model to a .docx file.
   This step does not use reduction rules, it does a recursive descent of the c.d.docx model,
   triggered from a preprocessing script in the generator of c.d.docx.
   On each node in the descent, calls are made to docx4j to do the writing to the .docx file.
   You find these calls in the behavior aspect of the concepts in c.d.docx.
   After the descent, the c.d.docx root node is just dropped, thus completing the generation process.
   
NB. a first run of the generator may take well over a minute, heating up the JVM.
Subsequent runs are much faster, more like 1 second.

#### Templates

When defining a generator targeting com.dslfoundry.docx, you may specify a template file.
The template file may be any .docx file that you have prepared and stored in the templates folder (see below).
When generation starts, the template file serves as a starting point
- all settings of the template file are copied over
- all style definitions of the template file are copied over
- all content in the template file is copied over

The generator looks for the template file in a folder named 'templates.docx'
in the same solution that contains the DocxDocument root node you want to generate from.
In this way you can have different templates for different solutions.

If the generator cannot find the template, it proceeds without a template.
TODO: it proceeds with a template stored in the generator module (default template).


## Details & Dependencies

#### com.dslfoundry.docx

This language serves as a generation target for creating .docx files from MPS.

#### com.dslfoundry.docx.samples

This solution provides some samples of how to use the language.

#### com.dslfoundry.docx.samples.tests

This solution invokes the generator on the samples
and compares the actual generator output with the expected output (a reference file).
Such file-based comparison tests tend to be brittle, 
but having a few of them is helpful to see if nothing major is broken.

To run these tests you have to set the path variable ${mps-docxgen} to the root of the project.

To locate the actual and expected output, here are the path name conventions:
(TODO: remove hard coded absolute paths to the solutions)

actual = where the docx generator writes its output (not under version control)
- absolute path to fixture solution `com.dslfoundry.docx.samples`
- `"docx_gen"`
- `<name of model under test>`
- `<name of root node>.docx`

expected = where we keep the reference (under version control)
- absolute path to test solution `com.dslfoundry.docx.samples.tests`
- `"expectations"`
- `<name of model under test>`
- `<name of root node>.docx`

There are helper methods to build these paths.
These helper methods rely on these classes (which are all included in JDK)
- java.io.File
- java.nio.file.Files
- java.nio.file.Path
- java.nio.file.Paths

#### org.docx4j

This solution is a wrapper for the docx4j binaries (MPS @java_stub models)
found at the [docx4j site](https://www.docx4java.org/trac/docx4j)
For the JAXB processing, the JAXB reference implementation has been selected.

Wrapping these jars was for the most part a textbook exercise in MPS, 
but there were a few snags related to log4j conflicts.
All steps to reproduce this solution are documented here: <TODO: publish article on dslfoundry.com>

The docx4j jars write log info using log4j using this config file:
`${mps-docxgen}\solutions\org.docx4j\docx4j-community-8.1.3\resources\log.xml`
As configured now, it writes to a log file `C:\temp\org.docx4j\samples.log`.
You may want to change that.
This [article](http://dslfoundry.com/using-apache-chainsaw-to-view-the-mps-log/) on logging configurations may be hepful.

#### org.docx4j.samples

This solution contains all source code samples provided by docx4j.
The samples serve as documetnation,
which is very useful when extending the language and the recursive descent code.

All steps to reproduce this solution are documented here: <TODO: publish article on dslfoundry.com>
The source code is left untouched for the most part.
There is one exception related to the use of property `user.dir`, see below.

Each sample is one Class node in BaseLanguage.
You can run each sample directly from MPS using the Run command:
- put the cursor in the function header or body of the static main method
- choose `run 'Class <class you selected>'`

Creating the Class nodes from the source text was for the most part a textbook exercise in MPS,
but it took a few hours of manual editing, because of a number of issues in pasting BaseLanguage as text into MPS
- static imports are not recognised like regular imports
  (which get transfered automatically in the module/model properties)
- generic types (the resulting AST is wrong in a very weird way)

This caused many unresolved references and missing nodes, which took a lot of manual work to fix.
TODO: file bug reports with JetBrains.

Many samples require one or more files as input.
These samples are provided in
`${mps-docxgen}\solutions\org.docx4j.samples\sample-docs\`.
You need to copy over this entire folder
to the folder where the property "user.dir" points to.

The samples as downloaded from docx4j.org rely heavily on the property "user.dir"
for reading and writing files.
It typically points to the directory from which the JVM was started.
When running the samples from within MPS, "user.dir" points to the bin folder from your MPS install.
This is not where you want to have your files written (at least I don't).
One way of dealing with this is to set "user.dir" to another value yourself.
This can be done in more than one way:

- edit the MPS run configuration:
  in the field "Working Directory" enter "C:\temp\org.docx4j".
  You may want to do this for all samples, by editing the Run Configuration Template for Java Application.

- edit the sample code:
  `AbstractSample.setUserDir();`
  I have added setUserDir as a static method to AbstractExample
  so there is only one place to edit if you change your mind about the path.
  As configured now, it points to folder `C:\temp\org.docx4j`

#### org.docx4j.samples

Ignore.
This solution contains a few experiments that may be removed later.

#### org.xmlunit

This solution is a wrapper for the xmlunit binaries (MPS @java_stub models)
found at the [xmlunit site](https://www.xmlunit.org/).

Purpose: provide a better matcher for tests that compare actual generator output with expected generator output.
Status: not in use yet.

#### org.xmlunit.tests

For the moment, this solution is a playground to try out xmlunit.

### Version Info

This repository is based on
- MPS: 2019.1.1
- docx4j: 8.1.3 -- downloads:
  [[binaries]](https://docx4java.org/docx4j/archive/docx4j-8.1.3/docx4j-community-8.1.3.zip)
  [[source code samples]](https://docx4java.org/docx4j/archive/docx4j-8.1.3/docx4j-samples-docx4j-8.1.3.zip)
  [[JAXB]](https://docx4java.org/docx4j/archive/docx4j-8.1.3/docx4j-JAXB-ReferenceImpl-8.1.3.zip)
- xmlunit: 2.6.3 -- downloads:
  [[binaries]](https://github.com/xmlunit/xmlunit/releases/download/v2.6.3/xmlunit-2.6.3-bin.zip)

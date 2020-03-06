# mps-docxgen

### Contents

Language `com.dslfoundry.com`:
Generation target language for creating .docx files from MPS.
In the spirit of `com.dslfoundry.plaintextgen`.
This language depends on the docx4j library from https://www.docx4java.org/trac/docx4j
Status: very much a work in progress. 
At this time no samples of using the language are provided.
This language is in development in a company internal project so language updates in the near future are to be expected.

Solution `org.docx4j`:
wrapper for the docx4j jars. using docx4j-community-8.1.3.zip found here https://docx4java.org/docx4j/docx4j-8.1.3/
Status: done.

Solution `org.docx4j.tests`: wrapper for the samples in docx4j-samples-docx4j-8.1.3.zip found here https://docx4java.org/docx4j/docx4j-8.1.3/
These samples are wrapped in an MPS node test, so you can run them using the test runner.
Status: only a few samples have been made available, more will come.
Some of the samples depend on files that are not yet in the repository. This needs to be fixed. 

Wrapping these jars and samples was for the most part a textbook exercise in MPS, but there were a few snags. 
This is documented here: <TODO: publish article on dslfoundry.com>

This repository is made using MPS version 2019.1.1

### File & Path dependencies

There are a number of folders and files that are not part of tthe MPS project that need to be present for the code to run.
We list them here.

#### org.docx4j
depends on these files
- docx4j-community-8.1.3/resources
- C:/temp/org.docx4j/samples.log

the log file is set in the log.xml file in

`D:\git\GitHub\DSLFoundry\mps-docxgen\solutions\org.docx4j\docx4j-community-8.1.3\resources`

TODO think of a place inside the project

#### org.docx4j.samples

Samples as downloaded from docx4j.org rely on the property "user.dir"
which typically points to the directory from which the process was started.
When running the samples from within MPS, "user.dir" points to the bin folder from your MPS install.
This is not where you want to have your temporary files (at least I don't).

One way of dealing with this is to set "user.dir" to another value yourself.
This can be done in more than one way

- from the JVM command line

in a run configuration, in the field "..." add `-Duser.dir="somepath"`

- from the sample code

`System.setProperty("user.dir", "C:/temp/org.docx4j");`

I have added a static method to AbstractExample that does this for you:
`AbstractSample.setUserDir();`
In this way there is only one place to edit if you change your mind about the path.

copy over the folder `sample-docs` from the zip to the `user.dir` folder

### org.docx4j.tests


### com.dslfoundry.docx.samples.tests

actual = where the docx generator writes its output
- absolute path to fixture solution `com.dslfoundry.docx.samples`
- `"docx_gen"`
- `<name of model under test>`
- `<name of root node>.docx`

expected = where we keep the reference
- absolute path to test solution `com.dslfoundry.docx.samples.tests`
- `"expectations"`
- `<name of model under test>`
- `<name of root node>.docx`

Therre are helper methods to build these paths.
These helper methods rely on these classes
- java.io.File
- java.nio.file.Files
- java.nio.file.Path
- java.nio.file.Paths


### Templates

When defining a .docx file you may specify a template file.
The template file may be any .docx file that you have prepared and stored in the templates folder (see below).
When generation starts, the template file serves as a starting point
- all settings of the template file are carried over
- all style definitions of the template file are carried over
- all content in the template file is copied over

The template file must be put in a folder named 'templates' in the same solution
that contains the DocxDocument node serving as input to the generator.
In this way you can have different templates for different solutions.

If the generator cannot find the template, it proceeds without a template.
TODO: it proceeds with a template stored in the generator module (default template)





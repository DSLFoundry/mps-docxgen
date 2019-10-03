# mps-docxgen

#### Contents

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


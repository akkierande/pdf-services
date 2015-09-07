This project aims to provide free WEB APIs for pdf conversion/creation using existing open source Java APIs like pdfbox and itext.

**The services planned are:
  1. PDF 2 text conversion online.
  1. PDF generation from text online.
  1. Converting file type like MS word, excel, etc to PDF online.
> > -- The hard bit is that google cloud doesnt support disk based file storage from web application and the micro$oft components. One has to rely on pure java implementation hence.
  1. Converting PDF to image, word,etc
  1. Generating PDF from live web pages.**


This can be achieved by building a web tier over open source PDF  libraries using spring mvc and velocity templating engine.

These service will be hosted on google cloud(Google app engine).

It is still in its nascent stages but a basic working service(PDF2Text) can be found for now at:

http://jshoutbox.appspot.com/pdf2text
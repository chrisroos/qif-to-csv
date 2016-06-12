# QIF to CSV

Simple Ruby script allowing me to convert from [QIF][qif] to [CSV][csv].

## Usage

    $ ruby qif-to-csv.rb /path/to/file.qif > output.csv

## Motivation

I wanted to be able to import the transactions from my Santander 123 account to a spreadsheet. The transactions are available in QIF, XLS, text, QIF, PDF and Midata formats.

* QIF: Standard format with Ruby library support in the form of the [qif Gem][ruby-qif].

* XLS: This would require additional work to get it in a format I want.

* Text: I don't believe this is using a standard format although it'd be relatively easy to parse and convert.

* PDF: It's relatively hard to extract data from PDF documents.

* Midata: Doesn't contain all transaction details so isn't useful for what I want.

[csv]: https://en.wikipedia.org/wiki/Comma-separated_values
[ruby-qif]: https://github.com/jemmyw/Qif
[qif]: https://en.wikipedia.org/wiki/Quicken_Interchange_Format

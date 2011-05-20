# Priehlazx

Text converting utility. Now supports the following codepages:
 * UCS8 - Unified 8-bit church-slavonic codepage;
 * UTF8 - 8-bit coding that uses multi-byte sequences;
 * UTF8/HIP - Invariant representation of church, old-slavic, and old-greek texts, based on UTF 8-bit coding;
 * UTF8/TR-CYR - Russian translit coding, based on UTF 8-bit coding;
 * UTF8/TR-CYR-S - Simplified russian translit coding, based on UTF 8-bit coding;

## Console software

    $ priehlag --help
    Usage: priehlag [OPTIONS]

    Mandatory arguments to long options are mandatory for short options too.
      -i, --input-file=val             Input file to convert
      --, --stdin-input		   Read standard input to convert
      -o, --output-file=val            Output file to convert
      -I, --input-string=val           Input string to convert
      -c, --codepage=val               Target (and source) code page(s) separated with signs '<' or '>'
      -w, --acquire-word-regexp=val    Acquire RegExp for the code page
      -r, --acquire-regexp=val         Acquire RegExp for the code page
      -l, --list-codepages             List available codepages and exit
      -d, --set-debug-info-level=val   Set debug information log level

      -h, --help                       Show this help message.

Обычный запускъ таковъ есть:

    $ priehlag -I "Во о_у='трiй  же ви'дjь _i=wа'ннъ _i=и~са гряду'ща къ себjь\`, и= глаго'ла: се\` а='гнецъ бж~iй, взе'мляй грjьхи\` м_i'ра" -c 'UTF8/HIP>UTF8'
    Во ѹ҆́трїй  же ви́дѣ ї҆ѡа́ннъ ї҆и҃са грѧдꙋ́ща къ себѣ̀, и҆ глаго́ла: сѐ а҆́гнецъ бж҃їй, взе́млѧй грѣхѝ мї́ра

## Copyright

Copyright (c) 2011 Malo Skrylevo. See LICENSE for details.

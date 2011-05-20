# Прехлагъ

Текстопреобразующая программка и библіотека. Сейчасъ поддерживаетъ слѣдующія кодировки:
 * UCS8 - Обобщённая 8-битная церковнославянская кодировка;
 * UTF8 - 8-битная обобщенная кодировка, использующая многобайтныя послѣдовательности;
 * UTF8/HIP - Независимое представленіе церковныхъ, древнеславянскихъ и древнегрѣческихъ текстовъ на основѣ 8-битной обобщенной кодировки;
 * UTF8/TR-CYR - Представленіе кириллическихъ знаковъ латиницею на основѣ 8-битной обобщенной кодировки;
 * UTF8/TR-CYR-S - Упрощённое представленіе кириллическихъ знаковъ латиницею на основѣ 8-битной обобщенной кодировки;

## Консольная программка

    $ прѣхлагъ --help
    Usage: прѣхлагъ [OPTIONS]

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

## Права

Авторскія и исключительныя права (а) 2011 Малъ Скрылевъ. Зри LICENSE за подробностями.

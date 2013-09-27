/*
Language: SQF
Author: Usenko Denis <denvdmj@gmail.com>
Description: Scripting language of ArmA2 game by Bohemia Interactive Studio
*/


hljs.LANGUAGES.sqf = {
  case_insensitive: true,
  defaultMode: {
    keywords: {
      keyword: {
        /*** COMMANDS INSERT HERE ***/
      },
      literal: {
        /*** KEYWORDS INSERT HERE ***/
      }
    },
    contains: [
      hljs.C_LINE_COMMENT_MODE,
      hljs.C_BLOCK_COMMENT_MODE,
      { // preprocessor directives
        className: 'preprocessor',
        begin: '#(?:(?:include)|(?:define)|(?:undef)|(?:ifdef)|(?:ifndef)|(?:else)|(?:endif))'
      },
      { // preprocessor directives
        className: 'preprocessor',
        begin: '\\b__(?:(?:LINE)|(?:FILE)|(?:EXEC)|(?:EVAL))__\\b'
      },
      { // macro name
        className: 'preprocessor',
        begin: '\\b__[a-zA-Z0-9_]+'
      },
      { // double quoted string
        className: 'string',
        begin: '"((?:[^"])|(?:""))*"',
        relevance: 0
      },
      { // single quoted string
        className: 'string',
        begin: "'((?:[^'])|(?:''))*'",
        relevance: 0
      },
      { // local vriable
        className: 'variable',
        begin: '\\b_[a-zA-Z0-9_]+'
      }
    ]
  }
};


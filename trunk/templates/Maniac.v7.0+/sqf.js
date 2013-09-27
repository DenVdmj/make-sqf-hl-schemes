/*
Language: SQF
Author: Usenko Denis <denvdmj@gmail.com>
Description: Scripting language of ArmA2 game by Bohemia Interactive Studio
*/


function(hljs) {

  var sqf_keyword = '/*** COMMANDS INSERT HERE ***/',
      sqf_literal = '/*** KEYWORDS INSERT HERE ***/';

  window['-SQF-KEYWORDS-'] = sqf_keyword + ' ' + sqf_literal;

  return {
    case_insensitive: true,
    keywords: {
      keyword: sqf_keyword.toLowerCase(),
      literal: sqf_literal.toLowerCase()
    },
    //illegal: 'class\s*\w+(\s*:\s*\w+)?\s*\{',
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
      },
      { // cba_fnc_
        className: 'cba_fnc_',
        begin: '\\CBA_fnc_[a-zA-Z0-9_]+'
      },
      { // bis_fnc_
        className: 'BIS_fnc_',
        begin: '\\BIS_fnc_[a-zA-Z0-9_]+'
      }
    ]
  };
}


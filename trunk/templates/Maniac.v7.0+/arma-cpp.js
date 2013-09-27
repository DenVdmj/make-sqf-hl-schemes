/*
Language: C++
Contributors: Evgeny Stepanischev <imbolk@gmail.com>
*/

function(hljs) {
  var CPP_KEYWORDS = {
    keyword: 'class|1000 false true',
    reserved: 'onloadmission onloadintro onloadmissiontime onloadintrotime loadscreen cfgloadingtexts minscore avgscore maxscore respawn respawndelay respawnvehicledelay respawndialog cfgsounds cfgradio cfgmusic cfgidentities keys keyslimit donekeys disableai aikills briefing debriefing showgps showcompass showmap shownotepad showpad showwatch scriptedplayer rsctitles weapons magazines backpacks weaponpool params header disablechannels enableitemsdropping'
  };
  return {
    case_insensitive: true,
    keywords: CPP_KEYWORDS,
    contains: [
      hljs.C_LINE_COMMENT_MODE,
      hljs.C_BLOCK_COMMENT_MODE,
      {
        className: 'string',
        begin: '"((?:[^"])|(?:""))*"',
        relevance: 0
      },
      {
        className: 'number',
        begin: '\\b(\\d+(\\.\\d*)?|\\.\\d+)(u|U|l|L|ul|UL|f|F)'
      },
      hljs.C_NUMBER_MODE,
      {
        className: 'preprocessor',
        begin: '#(?:(?:include)|(?:define)|(?:undef)|(?:ifdef)|(?:ifndef)|(?:else)|(?:endif))'
      },
      {
        className: 'preprocessor',
        begin: '\\b__(?:(?:LINE)|(?:FILE)|(?:EXEC)|(?:EVAL))__\\b'
      },
      {
        className: 'reserved',
        begin: '\\b(title|values|defValue|texts)Param\\d+\\b'
      }
    ]
  };
}

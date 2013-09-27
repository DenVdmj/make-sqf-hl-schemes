return
{
    Sublime_Text_2 = {
        template = 'SQF.tmLanguage',
        placeholder = {
            keywords = '<!-- keywords insert here -->',
            commands = '<!-- commands insert here -->',
        },
        wrapper = '<<KEYWORD>>',
        separator = "|",
        padding = false,
    },
    Sublime_Text_2_sublime_completions = {
        template = 'SQF.sublime-completions',
        placeholder = {
            keywords = '/* keywords insert here */',
            commands = '/* commands insert here */',
        },
        wrapper = '"<<KEYWORD>>"',
        separator = ",",
        padding = true,
    },


}
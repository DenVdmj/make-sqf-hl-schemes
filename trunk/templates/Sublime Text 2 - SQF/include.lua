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
        otherfiles = {
            "SQF-EventHandlerSnippets.sublime-completions",
            "SQF-ConfigName.sublime-completions",
            "SQF-ConfigName.sublime-completions",
            "for_array.sublime-snippet",
            "for_array_reverse.sublime-snippet",
            "for_config.sublime-snippet",
            "for_range.sublime-snippet",
            "for_range_reverse.sublime-snippet",
            "Comments.tmPreferences",
            "Indent.tmPreferences",
        }
    },
}
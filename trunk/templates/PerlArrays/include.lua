return
{
    commands = {
        template = 'commands.pl',
        placeholder = {
            commands = '#(commands-insert-here)',
            keywords = '#(keywords-insert-here)',
        },
        wrapper = '"<<KEYWORD>>"',
        separator = ",",
        padding = true,
    },
    keywords = {
        template = 'keywords.pl',
        placeholder = {
            commands = '#(commands-insert-here)',
            keywords = '#(keywords-insert-here)',
        },
        wrapper = '"<<KEYWORD>>"',
        separator = ",",
        padding = true,
    },
    commands2 = {
        template = 'commands2.pl',
        placeholder = {
            commands = '#(commands-insert-here)',
            keywords = '#(keywords-insert-here)',
        },
        wrapper = '<<KEYWORD>>',
        padding = true,
    },
    keywords2 = {
        template = 'keywords2.pl',
        placeholder = {
            commands = '#(commands-insert-here)',
            keywords = '#(keywords-insert-here)',
        },
        wrapper = '<<KEYWORD>>',
        padding = true,
    }
}
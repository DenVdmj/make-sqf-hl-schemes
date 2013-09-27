return
{
    ['SQF for Highlight.js'] = {
        template = 'sqf.js',
        sources = {
            keywords = '',
            constants = '',
            types = '',
            commands = 'http://community.bistudio.com/wiki/Category:Scripting_Commands_ArmA2',
            properties = '',
        },
        placeholder = {
            commands = '/*** COMMANDS INSERT HERE ***/',
            keywords = '/*** KEYWORDS INSERT HERE ***/',
        },
        --lowercase = true,
        wrapper = '<<KEYWORD>>',
        separator = " ",
        padding = false,
    },
    ['Arma C++ for Highlight.js'] = {
        template = 'arma-cpp.js',
    },
}


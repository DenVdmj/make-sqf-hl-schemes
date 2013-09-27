return {
    ['SQF for Highlight.js'] = {
        template = 'sqf.js';
        sources = {
            keywords = '';
            constants = '';
            types = '';
            commands = 'http://community.bistudio.com/wiki/Category:Scripting_Commands_ArmA2';
            properties = '';
        };
        placeholder = {
            commands = '/*** COMMANDS INSERT HERE ***/';
            keywords = '/*** KEYWORDS INSERT HERE ***/';
        };
        --lowercase = true,
        wrapper = '<<KEYWORD>>';
        separator = " ";
        padding = false;
    };
    ['Arma C++ for Highlight.js'] = {
        template = 'arma-cpp.js';
    };
}

{
    -- scheme name, any uniq string
    maniac = {
        -- description field, optional
        description = 'Scheme for highlight.js by Ivan Sagalaev';
        -- template file, this file are template of final scheme
        template = 'sqf.js';
        -- file which contains commands which will be interpreted as keywords
        -- by default this is '../keywords.lst'
        -- Keywords = '../keywords.lst';
        -- placeholders form which used in the template file
        placeholder = {
            keywords = '/*** KEYWORDS INSERT HERE ***/';
            commands = '/*** COMMANDS INSERT HERE ***/';
        };
        -- tag form which used in the format field
        tag = '<>';
        -- format field, the template of one chunk for one keyword.
        format = '<padding>"<lc:word>": 1<separator:,><br>';
        -- <padding>         -- insert padding
        -- <lc:word>         -- insert keyword as word in lower case
        -- <separator:,>     -- insert string "," as separator, i.e.
        --                      insert "," everywhere except for last entry
        -- <br>              -- insert line break, also you can use a "\n"
    };

    anotherSchemeTemplate = {
    -- Also, you can use a Filters subs, for example;
    -- we transform <keyword> to lower case
    --
        -- here we use other tag form
        tag = '{}';
        -- here we use a "\n", note: we must use a double quotes:
        format = "{padding}\"{word}\": 1{separator:,}\n";
        -- filter for {word} tag, note: use Capitalize name form
        filters = {
            word = sub { lc(shift) }
        };
    }
};

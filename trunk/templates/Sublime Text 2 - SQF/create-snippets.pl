use locale;
use strict;

my @snippets = split(/\n~~/, fileGetContents('create-snippets.tpl'));
my @chunks;

for my $snippet (@snippets) {
    my ($body, $desc) = $snippet =~ /\s*(addEventHandler\s*\["(\w+)".+?)$/s;
    push(
        @chunks,
        templateLine(
            escape($body),
            escape(qq($desc (Event handler snippet))),
        )
    );
};

filePutContents(
    "SQF-EventHandlerSnippets.sublime-completions",
    templateBody(join(",\n        ", @chunks))
);

sub templateLine {
    my ($body, $tag, $desc) = @_;
    qq({ "trigger": "$tag", "contents": "$body" });
}

sub escape {
    my ($text) = @_;
    #$text =~ s/(?:\x0D\x0A)|(?:\x0A\x0D)|(?:\x0A)|(?:\x0D)/\\n/g;
    $text =~ s/(?:\x0D\x0A?)|(?:\x0A?\x0D)/\\n/g;
    $text =~ s/"/\\"/g;
    $text;
}

sub templateBody {qq{
{
    "scope": "source.sqf",
    "completions":
    [
        @_[0]
    ]
}
}}

sub fileGetContents {
    my ($filename, $binmode) = @_;
    local *file;
    open(*file, $filename) or return undef;
    binmode *file if $binmode;
    my $string;
    sysread(*file, $string, -s *file);
    close(*file);
    return $string;
}

sub filePutContents {
    my ($filename, $contents, $binmode) = @_;
    local *file;
    open(*file, "+>$filename");
    binmode *file if $binmode;
    syswrite(*file, $contents, length $contents);
    close(*file);
}

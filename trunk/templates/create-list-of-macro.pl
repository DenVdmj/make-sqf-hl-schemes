
require 'utils.pl';

my $basedir = 'F:/Games/ArmA2/@/$vdmj/css/css-src/trunk/css';

my @files = qw(
    css
    config.macro
    dik-codes.macro
    profiler.macro
);

filePutContents("keywords-css-macro.txt", join("\n",
  q(
    exec execVM spawn call
    exit exitwith exitWith
    private
    if then else
    with while foreach for from to do step
    switch case default
    try catch throw
    and or not
    this _this _x
    false true nil pi
 ),
  map {
    map { '    ' . $_ } (
      fileGetContents("$basedir/$_") =~ m( ^ \s* \# \s* define \s+ (\w+) )xgcim
    )
  } @files

));



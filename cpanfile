requires "Dist::Zilla" => "5.037";
requires "Moose" => "2.1405";
requires "Perl::Version" => "1.013";
requires "perl" => "5.008";

on 'build' => sub {
  requires "Module::Build" => "0.4004";
  requires "Test::Requires" => "0.06";
  requires "version" => "0.88";
};

on 'configure' => sub {
  requires "Module::Build" => "0.4004";
  requires "version" => "0.88";
};

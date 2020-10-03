my %state =  task-run "readme html", "text-markdown", %(
  file => "README.md"
);

"README.html".IO.spurt(%state<html>);

say "README.html updated";

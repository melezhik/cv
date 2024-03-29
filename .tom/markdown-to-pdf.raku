my %state =  task-run "readme html", "text-markdown", %(
  file => "README.md"
);

my $cv-name = "Aleksei_Melezhik_CV.05.pdf";

"README.html".IO.spurt(%state<html>);

say "<README.html> updated";

task-run "html-to-pdf", "weasyprint", %(
  in => "README.html",
  out => $cv-name
);

say "<$cv-name> updated";


my %state =  task-run "readme html", "text-markdown", %(
  file => "README.md"
);

"README.html".IO.spurt(%state<html>);

say "<README.html> updated";

task-run "html-to-pdf", "weasyprint", %(
  in => "README.html",
  out => "Aleksei Melezhik CV.pdf"
);

say "<Aleksei Melezhik CV.pdf> updated";


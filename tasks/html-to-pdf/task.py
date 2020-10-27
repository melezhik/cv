import weasyprint
pdf = weasyprint.HTML('https://raw.githubusercontent.com/melezhik/cv/master/README.html').write_pdf()
len(pdf)
open('Aleksei Melezhik CV.pdf', 'wb').write(pdf)

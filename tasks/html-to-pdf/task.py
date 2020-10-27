import weasyprint
pdf = weasyprint.HTML('https://raw.githubusercontent.com/melezhik/cv/master/README.html').write_pdf()
len(pdf)
open('cv.pdf', 'wb').write(pdf)

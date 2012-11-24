TARGETS=cv letter

all: $(TARGETS)

# Create cv pdf
cv:
	make -C open-application/curriculum-vitae pdf
	mv open-application/curriculum-vitae/cv.pdf samuel-cv.pdf

# Create cover letter pdf
letter:
	make -C open-application/cover-letter pdf
	mv open-application/cover-letter/cover-letter.pdf samuel-letter.pdf

# CLean rule
clean:
	make -C open-application/curriculum-vitae clean
	make -C open-application/cover-letter clean
	rm -fv samuel-{cv,letter}.pdf


.PHONY: cv letter

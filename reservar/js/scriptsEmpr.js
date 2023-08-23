const btnGenerate = document.querySelector("#generate-pdf");

btnGenerate.addEventListener("click", () => {
	
	const content = document.querySelector("#content")
	

	const option = {
		margin:[10, 10, 10, 10],
		filename: "arquivo.pdf",
		html2canvas: {scale: 2},
		jsPDF: {unit: "mm", format: "a4", orientation: "portrait"},
};

	html2pdf().set(option).from(content).save();

});
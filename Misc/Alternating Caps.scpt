JsOsaDAS1.001.00bplist00�Vscript_�let se = Application('System Events')
se.includeStandardAdditions = true;

function alternatingCaps(output) {
	str = output.textReturned.toLowerCase()
	offset = (output.buttonReturned == "Start Caps") ? (0) : (1)
	
	returnText = ""
	for(let i = 0; i < str.length; i++) {
		if(str.charAt(i) == " ") offset++;
		returnText += (((i+offset) % 2 == 0) ? str.charAt(i).toUpperCase() : str.charAt(i))
	}
	return returnText;
}

let outputText = alternatingCaps(
					se.displayDialog("Input String: ", {
						buttons:["Start Lower", "Start Caps"], 
						defaultAnswer: "",
						defaultButton: 2

					})
				 );

if(outputText.length > 0) se.setTheClipboardTo(outputText)





                              �jscr  ��ޭ
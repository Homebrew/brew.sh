if (navigator.clipboard) {
    for (let element of document.getElementsByClassName("copyable")) {
        let text = element.innerText.trim();
        if(text.startsWith("$")){
          text = text.substr(1).trimLeft();
        }
        const btn = document.createElement("button");
        btn.innerHTML = "📋";
        btn.setAttribute("aria-label", "Copy to clipboard");
        btn.onclick= () => navigator.clipboard.writeText(text)
        element.appendChild(btn);
    }
}
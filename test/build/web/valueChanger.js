let arrNames = [];

for (let i = 1; i <= 4; i++) {
    arrNames = [...arrNames, [].slice.call(document.querySelectorAll(`.p${i}`))];
}

arrNames.map(x => {
    x.map(item => {
        item.addEventListener("change", () => {
            const checkedElements = x.filter(i => i.checked & i !== item);
            (checkedElements.length > 0) ? checkedElements[0].checked = false : checkedElements = [];
        })
    })
})
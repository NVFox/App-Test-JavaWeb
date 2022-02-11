let arrNames = [];

for (let i = 1; i <= 4; i++) {
    arrNames = [...arrNames, [].slice.call(document.querySelectorAll(`input[name="p${i}"]`))]
}

const rightValues = [3, 4, 1, 2];
let selectedValues = [];

arrNames.map(x, y => {
    x.map(item => {
        item.addEventListener("change", () => {
            item.checked && (selectedValues.find(item) ? selectedValues[x.indexOf(item)] = item : selectedValues = [...selectedValues, [item, x.indexOf(item)]]) 
        })
    })
})

selectedValues.map(item => )
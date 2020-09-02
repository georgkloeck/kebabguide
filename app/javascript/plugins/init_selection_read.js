
function selection(rating)
{ // initialize
  let formData = new FormData();
  const optionsList = document.querySelector("#fillings");
    const selectedElement = optionsList.options[optionsList.selectedIndex];
    // console.log(selectedElement.value); value not nil
    constructTag(selectedElement);
    // add pair to hash before removing list selection
    dataHash(formData, "selectedElement.value", rating);
    formData.append("key","value");
    removeListOption(optionsList, selectedElement);
    displayStars(rating);
    // hide/show list
    if ($(optionsList).has('option'.length > 0)) {
      toggleDisplay(optionsList);
      console.log('not empty');
    } else {
      console.log('empty');
      // toggleDisplay(optionsList);
    }
  }

const displayStars = (rating) => {
  for (let step = 0; step < rating; step++){
    const html = '<i style="color:yellow;" class="far fa-star"></i>'
    document.querySelector("#demo").insertAdjacentHTML('beforeend', html);
  }
}
const addDeleteIcon = (tag, element) => {
const html = '<i class="far fa-times-circle deleter"></i>';
tag.insertAdjacentHTML('afterbegin', html);
addClickEvent(element);
}

const constructTag = (element) => {
  const newTag = document.createElement("p");
  // newTag.id =`filling_${counter}`;
  const tagText = document.createTextNode(element.text);
  document.querySelector("#demo").appendChild(newTag);
  newTag.appendChild(tagText);
  addDeleteIcon(newTag, element);
}

const dataHash = (formdata, key, value) => {
  console.log(value);
  formdata.append(key, value);
  console.log(formdata);
}

const addClickEvent = (element) => {
  const icons = document.querySelectorAll(".deleter");
  icons.forEach(function(button){
    button.addEventListener('click', (event) => {
    // console.log('icon clicked');
    const deleteTag = button.parentNode;
    const deleteTagParent = deleteTag.parentNode;
    deleteTagParent.removeChild(deleteTag);
    // console.log(element);
    toggleHiddenListItems(element, "");
  });
});

}

const toggleDisplay = (element) => {
  element.classList.toggle('hidden');
}

const removeListOption = (list, option) => {
  list.removeChild(option);
}

const addListOption = (list, option) => {
  list.appendChild(option);
}

export {selection};

// my hash
// var a = {};
// a["key1"] = "value1";
// a["key2"] = "value2";
// todo grab from hash and construct list option bach when clicking

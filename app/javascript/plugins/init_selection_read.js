import { score } from "./fetch_score";
import { initStarRating } from './init_star_rating';

function selection(rating)
{ // initialize
  // console.log(rating);
  const optionsList = document.querySelector("#filling");
  const selectedElement = optionsList.options[optionsList.selectedIndex];
  const ingredientId = selectedElement.value;
  const tag = document.querySelector("#record");
  if (rating){
    constructTag(tag, selectedElement);
    createCheckbox("ingredients[][id]", ingredientId);
    createCheckbox("ingredients[][score]", rating);
    selectedElement.setAttribute('disabled', true);
    displayStars(tag, rating);
    // removeListOption(optionsList, selectedElement);
  }

  if ($(optionsList).has('option'.length > 0)) {
    // toggleDisplay(optionsList);
    console.log('not empty');
  } else {
    console.log('empty');
    // toggleDisplay(optionsList);
  }
  }

const addDeleteIcon = (tag, element) => {
  const html = '<i class="far fa-times-circle deleter"></i>';
  tag.insertAdjacentHTML('afterbegin', html);
  addClickEvent(element);
  }

const displayStars = (tag, rating) => {
  for (let step = 0; step < rating; step++){
    const html = '<i style="color:yellow;" class="far fa-star"></i>'
    tag.insertAdjacentHTML('beforeend', html);
  }
}

const constructTag = (tag , element) => {
  const newTag = document.createElement("p");
  // newTag.id =`filling_${counter}`;
  const tagText = document.createTextNode(element.text);
  tag.appendChild(newTag);
  newTag.appendChild(tagText);
  addDeleteIcon(newTag, element);
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
    // toggleHiddenListItems(element, "");
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

const createCheckbox = (name, value) => {
  const form = document.querySelector('#form');
  const checkbox = document.createElement('input');
  checkbox.type = "checkbox";
  checkbox.name = name;
  checkbox.value = value;
  checkbox.checked = true;
  form.appendChild(checkbox);
  // checkbox.display = none;
  // checkbox.id = "id"

}

export {selection};

// my hash
// var a = {};
// a["key1"] = "value1";
// a["key2"] = "value2";
// todo grab from hash and construct list option bach when clicking

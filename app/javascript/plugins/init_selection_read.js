import { score } from "./fetch_score";
import { initStarRating } from './init_star_rating';

function selection(rating)
{ // initialize
  const categories = ['#filling','#sauce','#extra','#bread','#salad']
  const categoryOptionsList = document.querySelector('#filling');
  const selectedElement = categoryOptionsList.options[categoryOptionsList.selectedIndex];
  const ingredientId = selectedElement.value;
  const tag = document.querySelector("#record");
  // check
  if (rating){
    constructTag(tag, categoryOptionsList ,selectedElement, ingredientId);
    createCheckbox("ingredients[][id]", ingredientId, ingredientId);
    createCheckbox("ingredients[][score]", rating, ingredientId);
    selectedElement.setAttribute('disabled', true);
    displayStars(tag, rating);
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

const constructTag = (tag , list, element, ingId) => {
  const newTag = document.createElement("p");
  // newTag.id =`filling_${counter}`;
  const tagText = document.createTextNode(element.text);
  tag.appendChild(newTag);
  newTag.appendChild(tagText)
  newTag.setAttribute("data-ing-id", ingId);
  addDeleteIcon(newTag, element);
}


const addClickEvent = (element) => {
  const icons = document.querySelectorAll(".deleter");
  icons.forEach(function(button){
    button.addEventListener('click', (event) => {
      // delete parent
      const deleteTag = button.parentNode;
      const deleteTagParent = deleteTag.parentNode;
      let ingId = deleteTag.dataset.ingId;
      if (ingId) {
        let match = getIngredientFromList(ingId)
        console.log(match);
      } else {console.log("match not found");}
      deleteTagParent.removeChild(deleteTag);
      // deleteCheckbox(ingId);
  });
});

}

const toggleDisplay = (element) => {
  element.classList.toggle('hidden');
}

const createCheckbox = (name, value, ingid) => {
  const form = document.querySelector('#form');
  const checkbox = document.createElement('input');
  checkbox.type = "checkbox";
  checkbox.name = name;
  checkbox.value = value;
  checkbox.checked = true;
  checkbox.setAttribute("data-cb-id", ingid);
  form.appendChild(checkbox);
  // checkbox.display = none;
  // checkbox.id = "id"

}

const getIngredientFromList = (ingId) => {
  let ingredients = document.querySelector('#filling');
  document.querySelector(`option[value="${ingId}"]`).disabled = false;
}

// const deleteCheckbox = (id) => {
//   let checkboxes = document.querySelectorAll([`data-cb-id=${id}`]);
//   console.log(checkboxes);
// }

// const target

export {selection};

/* document.querySelectorAll("[data-ingredient='4']") */


function selection()

{ // initialize
  const links = document.querySelectorAll('.link');
  console.log(links);
  links.forEach(link => {
    link.addEventListener('click', (event) => {
    event.preventDefault();
    // stop propagation
    let category = link.dataset.category;
    // console.log(category);
    const categoryOptionsList = document.querySelector(`#${category}`);
    console.log(categoryOptionsList);
    let rating = parseInt(categoryOptionsList.parentNode.querySelector('.br-current-rating').innerText);
    console.log(rating);
    const selectedElement = categoryOptionsList.options[categoryOptionsList.selectedIndex];
    // console.dir(selectedElement);
    if (selectedElement.disabled === true){
      window.alert('you have already selected this one')
      return
    }
    const ingredientId = selectedElement.value;
    const tag = document.querySelector("#record");
    // check
    if (rating){
      let newTag = constructTag(tag, categoryOptionsList ,selectedElement, ingredientId);
      console.log(newTag);
      createCheckbox("ingredients[][id]", ingredientId, ingredientId);
      createCheckbox("ingredients[][score]", rating, ingredientId);
      selectedElement.disabled = true;
      displayStars(newTag, rating);
    }


  })
  })

  // const categories = ['#filling','#sauce','#extra','#bread','#salad']
  }

const addDeleteIcon = (tag, element) => {
  const html = '<i style="color:#0E0000;"class="fas fa-minus deleter"></i>';
  tag.insertAdjacentHTML('afterbegin', html);
  addClickEvent(element);
  }

const displayStars = (tag, rating) => {
  for (let step = 0; step < rating; step++){
    const html = '<i style="color:#edb867;" class="fas fa-star"></i>'
    tag.insertAdjacentHTML('beforeend', html);
  }
}

const constructTag = (tag , list, element, ingId) => {
  const newTag = document.createElement("p");
  const tagText = document.createTextNode(element.text);
  tag.appendChild(newTag);
  newTag.appendChild(tagText)
  newTag.setAttribute("data-ing-id", ingId);
  addDeleteIcon(newTag, element);
  return newTag;
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
      deleteCheckbox(ingId);

  });
});

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
  checkbox.style.visibility = "hidden";
  // checkbox.id = "id"

}

const getIngredientFromList = (ingId) => {
  let ingredients = document.querySelector('#filling');
  document.querySelector(`option[value="${ingId}"]`).disabled = false;
}

const deleteCheckbox = (id) => {
  $("input:checkbox").each(function() {
    if ($(this).data("cb-id") == id) {
        $(this).remove();
    }
  });
}


export {selection};

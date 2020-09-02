import "jquery-bar-rating";
import $ from 'jquery'; // <-- if you're NOT using a Le Wagon template (cf jQuery section)
import { score } from "./fetch_score";
import { selection } from "./init_selection_read";

const initStarRating = () => {
  $('.review_rating').barrating({
    theme: 'css-stars',
    // theme: 'fontawesome-stars',
    onSelect:function(value, text, event)
    {
        selection(value);
    }
  });
};

export { initStarRating };
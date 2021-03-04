import {tns} from 'tiny-slider/src/tiny-slider';

const initCarousel = () => {
  const slider = tns({
    "container": ".my-slider",
    "items": 4,
    "edgePadding": 40,
    "lazyload": true,
    "lazyloadSelector": ".tns-lazy",
    "swipeAngle": false,
    "speed": 400,
    "mouseDrag": true,
  });
};

export { initCarousel };

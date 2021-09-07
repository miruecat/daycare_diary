const { Modal } = require("bootstrap");

document.querySelectorAll(".child_card").forEach((card) => {
    card.addEventListener("click", (event) => {
      event.currentTarget.classList.toggle(".imgback");
    });
  });
  
  //be able to select all of the inputs of a specific form
  //foodinput on all the checks of the food Modal, give a common class
  //play 
  //health 
  //sleep

  //each (food, health et) submit button needs a unique class for the queryselector
  
  //when totalinput == false, submit_button displays none
  //when input == true, submit_button displays

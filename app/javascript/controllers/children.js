let ids = [];
$(".child_card").on("click", function(){
  // If the id is not already in the array, add it. If it is, remove it
  ids.indexOf(this.id) === -1 ? ids.push(this.id) : ids.splice(ids.indexOf(this.id),1);
  $('input').val(ids.join(", ")); // populate the input with the array items separated with a comma
});

document.querySelectorAll(".child_card").forEach((card) => {
    card.addEventListener("click", (event) => {
      event.currentTarget.classList.toggle(".imgback");
    });
  });
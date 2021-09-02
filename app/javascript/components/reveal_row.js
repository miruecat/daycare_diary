const revealRow = () => {
  const input = document.querySelector("#date-activities")
  if (input) {
    input.addEventListener("change", (event) => {
      let input = event.currentTarget.value
      document.querySelectorAll(".activity-row").forEach((row) => {
        if (row.dataset.date===input) {
          row.classList.remove("d-none")
          console.log(row.dataset.date)
        } else {
          row.classList.add("d-none")
        }
      })
    })
  }
}
export {revealRow}

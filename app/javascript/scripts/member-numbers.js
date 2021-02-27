const init_member_numbers = () => { 
  const member_number_input = document.querySelector("#event_number_of_members");
  if (member_number_input) {
    document.querySelector("#number-1").addEventListener("click", (event) => {
      member_number_input.value = event.target.innerText;
      console.log(event.target)
    });
    document.querySelector("#number-2").addEventListener("click", (event) => {
      member_number_input.value = event.target.innerText;
      console.log(event.target)
    });
    document.querySelector("#number-3").addEventListener("click", (event) => {
      member_number_input.value = event.target.innerText;
      console.log(event.target)
    });
    document.querySelector("#number-4").addEventListener("click", (event) => {
      member_number_input.value = event.target.innerText;
      console.log(event.target)
    });
    document.querySelector("#number-5").addEventListener("click", (event) => {
      member_number_input.value = event.target.innerText;
      console.log(event.target)
    });
    document.querySelector("#number-6").addEventListener("click", (event) => {
      member_number_input.value = event.target.innerText;
      console.log(event.target)
    });
    document.querySelector("#number-7").addEventListener("click", (event) => {
      member_number_input.value = event.target.innerText;
      console.log(event.target)
    });
    document.querySelector("#number-8").addEventListener("click", (event) => {
      member_number_input.value = event.target.innerText;
      console.log(event.target)
    });
    document.querySelector("#number-9").addEventListener("click", (event) => {
      member_number_input.value = event.target.innerText;
      console.log(event.target)
    });
    document.querySelector("#number-10").addEventListener("click", (event) => {
      member_number_input.value = event.target.innerText;
      console.log(event.target)
    });
    document.querySelector("#number-11").addEventListener("click", (event) => {
      member_number_input.value = event.target.innerText;
      console.log(event.target)
    });
    document.querySelector("#number-12").addEventListener("click", (event) => {
      member_number_input.value = event.target.innerText;
      console.log(event.target)
    });
  }
};

export {init_member_numbers}
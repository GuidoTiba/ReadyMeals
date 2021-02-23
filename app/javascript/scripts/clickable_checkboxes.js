const init_clickable_checkboxes = () => { 
  const restrictions = document.querySelectorAll(".oval.clickable");
  if (restrictions) {
    restrictions.forEach((restriction) => {
      restriction.addEventListener("click", (event) => {
        event.currentTarget.classList.toggle("active");
      });
    });
  }
};

export {init_clickable_checkboxes}

/*      const actives = document.querySelectorAll(".active");
     console.log(actives);

     actives.forEach((element) => {console.log(`"options_${element.innerText}"`)
      const list2 = document.getElementById(`"options_mexicana"`);
      list.value = true; */
  /*   }); */
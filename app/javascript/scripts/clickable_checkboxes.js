/* const restrictions = document.querySelectorAll(".clickable");
if (restrictions) {
  restrictions.forEach((restriction) => {
   restriction.addEventListener("click", (event) => {
     event.currentTarget.classList.toggle("active");
     const actives = document.querySelectorAll(".active");
     console.log(actives);

     actives.forEach((element) => {console.log(`"options_${element.innerText}"`)
      const list = document.getElementById(`"options_vegana"`);
      const list2 = document.getElementById(`"options_mexicana"`);
      list.value = true;
      list2.value = true });
   
    });
  
  });
}



//
//if (actives) {
//  actives.forEach((active) => {
//   active.addEventListener("click", (event) => {
//     event.currentTarget.classList.value("true");
//     active.forEach(element => console.log(element.classList));

 //    active.forEach(element => console.log(element.innerHTML));
 //   });
  
 // });
//}



restrictions.forEach(element => console.log(element.classList));

restrictions.forEach(element => console.log(element.innerHTML));

// poner valor true a 1 elemento
// const list = document.getElementById("options_mexicana");
// list.value = true;
 */
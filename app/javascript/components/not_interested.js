const notInterested = () => {

 const listTing = document.querySelectorAll(".buttons-holder");
   listTing.forEach(item => {
    item.addEventListener('click', e => {
      const blarg = document.getElementById(`big-${e.target.id}`)
      blarg.classList.add("hidden")
    });
   });
};

export { notInterested };

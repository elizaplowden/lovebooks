const notInterested = () => {

 const listTing = document.querySelectorAll(".buttons-holder");
   listTing.forEach(item => {
    item.addEventListener('click', e => {
      const blarg = document.getElementById(`book_${e.target.id}`)
      blarg.classList.add("rejected")
      setTimeout(blarg.remove(), 3000)
    });
   });
};

export { notInterested };

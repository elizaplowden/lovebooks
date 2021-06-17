const notInterested = () => {

 const listTing = document.querySelectorAll(".btn-danger");
 if(listTing) {
   listTing.forEach(item => {
    item.addEventListener('click', e => {
      const blarg = document.getElementById(`book_${e.target.id}`)
      blarg.classList.add("rejected");
      const destroyer = () => { blarg.remove() };
      let blob = setTimeout(destroyer , 3000);
    });
   });
  }
};

export { notInterested };

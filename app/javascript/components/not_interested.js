const notInterested = () => {

 const listTing = document.querySelectorAll(".btn-warning");
 if(listTing) {
   listTing.forEach(item => {
    item.addEventListener('click', e => {

      document.getElementById(`book_${e.target.id}`).classList.add("rejected");
      setTimeout(() => { document.getElementById(`book_${e.target.id}`).remove()} , 3000);
      // const destroyer = () => { blarg.remove() };
      // let blob = setTimeout(destroyer , 3000);
    });
   });
  }
};

export { notInterested };

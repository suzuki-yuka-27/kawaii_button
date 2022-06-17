(() => {
  const upbutton = document.getElementById('up');
  const text = document.getElementById('textbox');

  upbutton.addEventListener('click', (event) => {
    text.value++;
  })

  reset.addEventListener('click', (event) => {
    text.value = 0;
  })

  reset.addEventListener('click', (event) => {
    text.value = 0;
  })

})();
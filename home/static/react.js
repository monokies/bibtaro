fetch('http://127.0.0.1:8000/api/books').then(
  function(response) {
    return response.json();
}).then(
  function(json) {
    var a = json[0].author;
    const element = (<p>Hello {a}!</p>)
    
    ReactDOM.render(
      element,
      document.getElementById('app')
    );
  }
);

function book_search() {
  function test() {
      var s = "";
      for (var i=0; i<5; i++) {
        s += "<p>test</p><br>"
    }
      return s
  };
  fetch('http://127.0.0.1:8000/api/books').then(
    function(response) {
      return response.json();
  }).then(
    function(json) {
      var a = json[0].author;
      const element = (
        <table className="table table-bordered">
          <tr>
            <th></th>
            <th>著者</th>
            <th>タイトル</th>
            <th>発行日</th>
            <th>画像</th>
          </tr>
          <tr>
            <td>1</td>
            <td>{a}</td>
            <td>タイトル</td>
            <td>発行日</td>
            <td>画像</td>
          </tr>
          {test()}
        </table>
      )
      ReactDOM.render(
        element,
        document.getElementById('result')
      );
    }
  );
};

function searchBook() {
  var requestUrl = 'http://127.0.0.1:8000/api/books';
  function createParameter() {
    let idList = ['title', 'author', 'category'];
    let params = [];
    for (let i in idList) {
      let t = idList[i];
      let v = document.getElementById(t).value;
      if (v !== null && v !== '') {
        params.push(encodeURIComponent(t) + '=' + encodeURIComponent(v));
      }
    }
    return params.join('&');
  };
  fetch(requestUrl + '?' + createParameter()).then(
    function(response) {
      return response.json();
  }).then(
    function(json) {
      const header = (
              <tr>
                <th></th>
                <th>著者</th>
                <th>タイトル</th>
                <th>発行日</th>
                <th>画像</th>
                <th></th>
              </tr>
      )
      let t = [...Array(json.length).keys()]
      const body = t.map((n) =>
              <tr>
                <td>1</td>
                <td>{json[n].author}</td>
                <td>{json[n].title}</td>
                <td>{json[n].publishedDate}</td>
                <td><img height="150" src={json[n].image} /></td>
                <td><button className="btn btn-default">読む</button></td>
              </tr>
      )
      const element = (
        <table className="table table-sm">
          <thead>
            {header}
          </thead>
          <tbody>
            {body}
          </tbody>
        </table>
      )
      ReactDOM.render(
        element,
        document.getElementById('result')
      );
    }
  );
};

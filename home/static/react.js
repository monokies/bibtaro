function book_search() {
  fetch('http://127.0.0.1:8000/api/books').then(
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
              </tr>
      )
      const body = [0].map((n) =>
              <tr>
                <td>1</td>
                <td>{json[n].author}</td>
                <td>{json[n].title}</td>
                <td>{json[n].publishedDate}</td>
                <td>画像</td>
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

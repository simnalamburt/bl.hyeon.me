function load(name) {
  var req = new XMLHttpRequest();
  req.onreadystatechange = function() {
    if (req.readyState != 4) { return; }

    // TODO: Error handling
    if (req.status != 200) { return; }

    document.getElementById('content').textContent = req.responseText;
  };
  req.open('GET', '/raw/'+name+'.txt', true);
  req.send(null);
}

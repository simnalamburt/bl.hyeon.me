require 'sinatra'
require 'tilt/erubis'

get '/:title' do
  @title = params['title']
  erb :reader
end

__END__
@@reader
<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css">
  <link rel="stylesheet" href="/style.css">
</head>
<body>

<div class="container">
  <pre id="content"></pre>
</div>

<script src="/script.js"></script>
<script>load('<%= @title %>')</script>
</body>
</html>

content = <<-html_text
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">

<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <title>Urban Dictionary - Something went wrong</title>
	<style type="text/css">
    body {
      width: 800px;
      margin: auto;
      background-image: -webkit-gradient(
          linear,
          left bottom,
          left top,
          color-stop(0.07, rgb(55,78,92)),
          color-stop(0.77, rgb(91,131,156))
      );
      background-image: -moz-linear-gradient(
          center bottom,
          rgb(55,78,92) 7%,
          rgb(91,131,156) 77%
      );
    }
    h1 { text-align: center; margin: 20px; }
    .message { text-align: center; color: white; font-weight: bold; font-size: 11pt; font-family: Arial, Helvetica, sans-serif; margin: 20px; }
	</style>
</head>

<body>
  <h1><img src="data:image/png;base64,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" width="262" height="84"></h1>
  <p class="message">Urban Dictionary's taking a quick nap and will be right back.</p>
  <script src="http://widgets.twimg.com/j/2/widget.js"></script>
  <script>
  new TWTR.Widget({
    version: 2,
    type: 'list',
    rpp: 30,
    interval: 6000,
    title: 'recent tweets',
    subject: '',
    width: 'auto',
    height: 600,
    theme: {
      shell: {
        background: '#ffffff',
        color: '#000000'
      },
      tweets: {
        background: '#ffffff',
        color: '#444444',
        links: '#b740c2'
      }
    },
    features: {
      scrollbar: true,
      loop: false,
      live: true,
      hashtags: true,
      timestamp: true,
      avatars: true,
      behavior: 'all'
    }
  }).render().setList('apeckham', 'urban500').start();
  </script>

  <script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-31805-9']);
    _gaq.push(['_trackPageview']);

    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

  </script>
</body>
</html>
html_text

run proc { |request|
  [500, {"Content-Type" => "text/html"}, [content]]
}
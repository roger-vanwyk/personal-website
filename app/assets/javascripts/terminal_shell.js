// setup typewriter effect in the terminal demo
if (document.getElementsByClassName('demo').length > 0) {
  var i = 0;
  var txt = `I'm adept with a majority of web development frameworks such as Ruby on Rails and Laravel. I also know my way around front-end JS frameworks such as React and AngularJS. I have experience working with databases (MySQL, PostgreSQL, SQLite), and industry tools (Git, AWS, Slack, Travis-Cl, Heroku).`;
  var speed = 25;

  function typeItOut () {
    if (i < txt.length) {
      document.getElementsByClassName('demo')[0].innerHTML += txt.charAt(i);
      i++;
      setTimeout(typeItOut, speed);
    }
  }
  setTimeout(typeItOut, 200);
}

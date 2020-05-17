//
// Well, this is gonna suck...
// I tried to make several YouTube comment downloaders work...
// None of them worked. At least not for me, not easily, maybe I'm just dumb.
// 
// So I decided to just load a bunch of comments and just navigate the DOM and
// get them myself.
//
// So, go to YouTube and open a video with a bunch of comments. 
// I chose the trailer for Avengers Infinity War just because it was the first one
// that came to my mind and it did had way too many comments. 
// Now, note that those comments are lazy loaded, so you will need to scroll down 
// for a while until you guesstimate there's enough.
//
// Once there's enough comments loaded, open the console and run the following code
// and copy the results. That's it.
//
//      It sucks, I know.
//

let nodes = document.getElementsByTagName('ytd-comment-renderer');
let comments = [];
for (let i = 0; i < nodes.length; i++) {
  node = nodes[i].querySelector('#content-text');
  if (node.children.length) {
    let text = [];
    for (let j = 0; j < node.children.length; j++) {
      text.push(node.children[j].innerHTML);
    }
    text = text.join('\n');
    comments.push(text);
  } else {
    comments.push(node.innerHTML);
  }
}
let result = { comments };
let json = JSON.stringify(result, null, 2);
console.log(json);
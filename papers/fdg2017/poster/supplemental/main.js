var story;
var continueStory;

var storyScript = [
0, // 11:52
0,
2,
2, // Kick down door
0,
0, // What's going on here
2, // SHUT UP
1, // What happened?
];

/*var storyScript = [1,0,3,1,0,0,1,2,0,1, 2, 1, 1, 2, 2, 0, 0, 1, 0, 2, 1, 1, 0,0,0,0,1,0,0,1,2,2,5,5,3,0,0,0,1,1,2,2,1,0,1,0,0,0,0,0,0,0,3,0,0,0,0,0,1,1,0,2,2,0,3,0,2,0,0,2,0,2,3,1,3,5,6,4,2,2,1,4,4,4,4,1,0,7,0,0,1,1,1,2,2,2,1,0,3,2,0,0,3,0,0,0,2,1,2,0,1,0,1,1,3,1,2,0,1,2,1,0,0,0,1,0,0,1,0,1,0,0,1,1,1,0,
1,1,1,1,1,1,2,
// After panel
1,2,2,0,0,0,0,0,0,2,2
// DEE Chase
,1,1,0,0,1,1
// CAB Scene
,3,2,0,0,2,2
// TRIP TRAP BAR
,0,1,0,1,0,0,0,0,0,1,2
// WOODSMAN ENTERS
,0,1,2,3,1,0,0,2,0,1,1
// CHOICE POINT
,0
];*/

var curChoice = 0;
if ( typeof String.prototype.startsWith != 'function' ) {
  String.prototype.startsWith = function( str ) {
    return this.substring( 0, str.length ) === str;
  }
};

if ( typeof String.prototype.endsWith != 'function' ) {
  String.prototype.endsWith = function( str ) {
    return this.substring( this.length - str.length, this.length ) === str;
  }
};

(function(storyContent) {

    story = new inkjs.Story(storyContent);

    var storyContainer = document.querySelectorAll('#story')[0];

    function hasTag(tag) {
        for(var i = 0; i < story.currentTags.length; i++) {
            if(story.currentTags[i] == tag)
                return true;
            else if (story.currentTags[i].startsWith(tag)){
                return story.currentTags[i].substring(tag.length+1);
            }
        }
        return false;
    }
    function showAfter(delay, el) {
        setTimeout(function() { el.classList.add("show");
                // Remove all existing choices
                var existingChoices = storyContainer.querySelectorAll('p.choice');
                                /*
                for(var i=0; i<existingChoices.length; i++) {
                    var c = existingChoices[i];
                    c.parentNode.removeChild(c);
                }
*/
                // Tell the story where to go next
                if(curChoice < storyScript.length) {
                  story.ChooseChoiceIndex(storyScript[curChoice++]);
                  // Aaand loop
                  continueStory();
                }
                              }, delay);
    }

    function scrollToBottom() {
        var progress = 0.0;
        var start = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
        var dist = document.body.scrollHeight - window.innerHeight - start;
        if( dist < 0 ) return;

        var duration = 1;//300 + 300*dist/100;
        var startTime = null;
        function step(time) {
            if( startTime == null ) startTime = time;
            var t = (time-startTime) / duration;
            var lerp = 3*t*t - 2*t*t*t;
            window.scrollTo(0, start + lerp*dist);
            if( t < 1 ) requestAnimationFrame(step);
        }
        requestAnimationFrame(step);
    }

    continueStory = function continueStory() {

        var paragraphIndex = 0;
        var delay = 0.0;

        // Generate story text - loop through available content
        while(story.canContinue) {

            // Get ink to generate the next paragraph
            var paragraphText = story.Continue();

            // Create paragraph element
            var paragraphElement = document.createElement('p');
            var charName = hasTag("actor");
            if(charName != false && charName != null)
                paragraphElement.innerHTML = charName +": " +paragraphText;
            else
                paragraphElement.innerHTML = paragraphText;
            storyContainer.appendChild(paragraphElement);

            // Fade in paragraph after a short delay
            showAfter(delay, paragraphElement);

            delay += 0.0;
        }

        // Create HTML choices from ink choices
        story.currentChoices.forEach(function(choice) {

            // Create paragraph with anchor element
            var choiceParagraphElement = document.createElement('p');
            choiceParagraphElement.classList.add("choice");
          if(choice.index != storyScript[curChoice]) {
            choiceParagraphElement.innerHTML = `- <a href='#'> ${choice.text}</a>`;
          } else {
            console.log("Bolding " + choice.text);
            choiceParagraphElement.innerHTML = `* <a href='#'> <b>${choice.text}</b></a>`;
          }

            storyContainer.appendChild(choiceParagraphElement);

            // Fade choice in after a short delay
            showAfter(delay, choiceParagraphElement);
            delay += 200.0;

            // Click on choice
            var choiceAnchorEl = choiceParagraphElement.querySelectorAll("a")[0];
            choiceAnchorEl.addEventListener("click", function(event) {

                // Don't follow <a> link
                event.preventDefault();

                // Remove all existing choices
                var existingChoices = storyContainer.querySelectorAll('p.choice');
                for(var i=0; i<existingChoices.length; i++) {
                    var c = existingChoices[i];
                    c.parentNode.removeChild(c);
                }

                // Tell the story where to go next
                story.ChooseChoiceIndex(choice.index);

                // Aaand loop
                continueStory();
            });
        });

        scrollToBottom();
    }

    continueStory();

})(storyContent);

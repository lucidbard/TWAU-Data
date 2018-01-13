var module = (function () {
    "use strict";
    // one for each track element
    var cur_segment = -1;
    var decision_list = [];
    var beat_list = [];
    var choice_list = [];
    var segment_list = [];

    var shot_list = [];
    var edit_list = [0, 0, 0, 0];
    var line_list = [];
    var outer_div;
    var loaded_choices=false;
    var on_loaded_choices;
    var loaded_dialogue=false;
    var on_loaded_dialogue;
    var dialogue_data=null;
    var loaded_segments=false;
    var on_loaded_segments;

    var curSegment = 0;
    var curChoice = -1;

    var onloadFunc = function () {

        // Load the choices
        $.getJSON("/choices.json", function (data) {
          console.log("Loaded choices");
          loaded_choices=true;
          choice_list = data;
          if(on_loaded_choices!=undefined) {
            on_loaded_choices(data);
          } else
            console.log("Undefined callback, doing nothing");
        });
        // Load the segments
        $.getJSON("/segments.json", function (data) {
          console.log("Loaded segments");
          loaded_segments=true;
          segment_list = data;
          console.log(segment_list);
        });

/*        // Load beats (experimental)
        $.getJSON("/static/advancement/browser/beats.json", function (data) {
          console.log("Loaded beats");
          segment_list = data;
        });*/

        $.getJSON("/dialogue.json", function(data) {
          console.log("Loaded dialogue");
          loaded_dialogue=true;
          dialogue_data = data;
          if(on_loaded_dialogue!==undefined)
            on_loaded_dialogue(data);
        });
    };

    return {onloadFunc: onloadFunc};
}());


var _timer;
var vis_canvas;
var ctx;
function init() {
    // quit if this function has already been called
    if (arguments.callee.done) { return; }

    // flag this function so we don't do the same thing twice
    arguments.callee.done = true;

    // kill the timer
    if (_timer) { clearInterval(_timer); }
  vis_canvas = document.getElementById("can_vis");
  vis_canvas.width = $('body').innerWidth();
  vis_canvas.height = 50;
  console.log("LOADED!");
  ctx = vis_canvas.getContext("2d");

//    module.onloadFunc();
    // do stuff
}

function renderValue(value) {
  console.log(value);
//  var elem = document.getElementById("visualizer");
//  var newElem = document.createElement("div");
var x_loc = 10;
  ctx.clearRect(0, 0, vis_canvas.width, vis_canvas.height);
for (var i = 0; i < value.segments.length; i++) {
  ctx.beginPath();
  ctx.rect(x_loc, 12.5, 25,25);
  ctx.fillStyle = "green";
  ctx.fill();
  ctx.font = "12pt Helvetica";
  ctx.textAlign = "center";
  ctx.textBaseline = "middle";
  ctx.fillStyle = "white";
        // draw text at center, max length to fit on canvas
  ctx.fillText(i.toString(), x_loc+12.5, 25, 50);
  x_loc+=50;
}
}

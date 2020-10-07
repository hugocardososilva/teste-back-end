const jq = document.createElement("script");
const URL = window.location.protocol + "//" + window.location.host + "/";
jq.addEventListener("load", proceed); // pass my hoisted function
jq.src = "https://code.jquery.com/jquery-3.4.1.min.js";
document.querySelector("head").appendChild(jq);

function proceed () {

  //begin tracker
  document.addEventListener(`click`, e => {
    const origin = e.target.closest("a");

    if (origin) {
      send_tracker();
      console.log("clique");
      console.log(`You clicked ${origin.href}`);
    }
  });
  $('a').click( function(e) {

  });



  $(document).ready(function() {
    send_tracker();
    var form  = document.getElementById('contact_form');
    if(form != null){
      form.addEventListener('submit', (event) => {
        console.log("contact_form submitted");
        get_contact();
      });
    }

  });

}
function generate_guid() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
    var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
}

function get_guid() {
  if (window.localStorage.guid != null) {
    return window.localStorage.guid;
  } else {
    window.localStorage.guid = generate_guid();
    return window.localStorage.guid;
  }
}
function send_tracker(){
  $.ajax({
    url: URL + 'api/v1/trackers',
    data: {
      tracker: {
        uuid: get_guid(),
        page: document.title
      }
    },
    type: "post",
    success: function (data) {
      console.log(data);
    },
    fail: function (data) {
      console.log(data);
    }
  });

}
function get_contact(){
  var email = $('#email').val(),
      name = $('#name').val();
  if(name == null || email == null){
    console.log("algum nulo");
    return null;
  }else{
    $.ajax({
      url: URL + 'api/v1/contacts',
      data: {
        contact: {
          name: name ,
          email: email
        }
      },
      type: "post",
      success: function (data) {
        console.log(data);
      },
      fail: function (data) {
        console.log(data);
      }
    });
  }

}

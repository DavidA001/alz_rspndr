var playAudio = false;

$(function() {
  hideAlertPartial();
});

function playAud() {
  playAudio = !playAudio;

  if(playAudio == true) {
    hideWelcomePartial();
    showAlertPartial();
    $(".audio-play")[0].currentTime = 0;
    alert("Warning!")
    return $(".audio-play")[0].play();
  } else {
    hideAlertPartial();
    showWelcomePartial();
    alert("All good!")
    return $(".audio-play")[0].pause();
  }
}

function hideWelcomePartial() {
  $(".welcome").hide();
}

function showWelcomePartial() {
  $(".welcome").show();
}

function hideAlertPartial() {
  $(".alert").hide();
}

function showAlertPartial() {
  $(".alert").show();
}

function callCareGiver() {
  alert("Calling Care Giver")
}

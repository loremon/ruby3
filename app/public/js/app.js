$(document).foundation();
var $dButton = $('#downloadButton');
if ($dButton) {
  $dButton.click(function() {
    location.href = '/aftersave';
  });
}

function updateLoadingText() {
  $(".content").load("file.html");
  $('#filename').html($('input[type=file]')[0].files[0].name);
}

function saveText() {
  var saveButton = $('#saveText');
  if (saveButton) {
    saveButton.click();
  }
}

function changeDownloadName() {
  var name = $('#filename').val();
  if (name === '') {
    name = 'data';
  }
  $('#downloadButton').attr('download', name + '.txt');
}

function changeStatus() {
  $('#status').html('Изменён');
}

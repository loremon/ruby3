$(document).foundation();

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
  console.log('123');
  $('#status').html('Изменён');
}
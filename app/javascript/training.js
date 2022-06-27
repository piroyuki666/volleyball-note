window.addEventListener('load', function(){
  $('#training > li').each(function(i){
    $(this).attr('id','training' + (i + 1));
  });

  // var name = 'volleyball_note_development';
  // var version = '1.0';
  // var description = 'Web SQL Database';
  // var size = 2 * 1024 * 1024;
  // var db = openDatabase(name, version, description, size);

const trainingsHash = $('#trainings').data('trainings');

  $('#training1').on('click',function(){
    const title = (trainingsHash[0].title);
    const time = (trainingsHash[0].time);
    const persons = (trainingsHash[0].persons);
    const content = (trainingsHash[0].content);
    $('#selected-title').text(title);
    $('#selected-time').text(time);
    $('#selected-persons').text(persons);
    $('#selected-content').text(content);
  });
  $('#training2').on('click',function(){
    const title = (trainingsHash[1].title);
    const time = (trainingsHash[1].time);
    const persons = (trainingsHash[1].persons);
    const content = (trainingsHash[1].content);
    $('#selected-title').text(title);
    $('#selected-time').text(time);
    $('#selected-persons').text(persons);
    $('#selected-content').text(content);
  });
  $('#training3').on('click',function(){
    const title = (trainingsHash[2].title);
    const time = (trainingsHash[2].time);
    const persons = (trainingsHash[2].persons);
    const content = (trainingsHash[2].content);
    $('#selected-title').text(title);
    $('#selected-time').text(time);
    $('#selected-persons').text(persons);
    $('#selected-content').text(content);
  });
  $('#training4').on('click',function(){
    const title = (trainingsHash[3].title);
    const time = (trainingsHash[3].time);
    const persons = (trainingsHash[3].persons);
    const content = (trainingsHash[3].content);
    $('#selected-title').text(title);
    $('#selected-time').text(time);
    $('#selected-persons').text(persons);
    $('#selected-content').text(content);
  });
  $('#training5').on('click',function(){
    const title = (trainingsHash[4].title);
    const time = (trainingsHash[4].time);
    const persons = (trainingsHash[4].persons);
    const content = (trainingsHash[4].content);
    $('#selected-title').text(title);
    $('#selected-time').text(time);
    $('#selected-persons').text(persons);
    $('#selected-content').text(content);
  });
})
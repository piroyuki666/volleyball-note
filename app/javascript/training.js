window.addEventListener('load', function(){
  $('#training > li').each(function(i){
    $(this).attr('data-id','training' + (i + 1));
  });

  $('#training > li').on('click',function(){
    const title = $(this).data('id');
    $('#selected-title').text(title);
  });
})

// const li = document.getElementsByTagName('li');
// for ( const i=0;  )
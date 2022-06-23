window.addEventListener('load', function(){
  $('#training > li').each(function(i){
    $(this).attr('id','training' + (i + 1));
  });

  

  $('#training1').on('click',function(){
    const title = document.getElementById("training-all");
    console.log(title);
  });
})

// const li = document.getElementsByTagName('li');
// for ( const i=0;  )
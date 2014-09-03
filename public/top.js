
$(function(){


  var keys = ['name','kana','email'];
  $("#btn01").click(function(){
    console.log('clicked .............');
    $.ajax({
      url: "/customers/api01",
      type: "GET"
    }).done(function(json){
      var keys = _.keys(json[0]);
      //console.log(json);
      var tbl = $("<table border=1>");
      $("#disp").empty();
      $("#disp").append(tbl);

      var tr = $("<tr>");
      _.each(keys, function(key){tr.append($("<th>").text(key));});
      tbl.append(tr);

      _.each(json, function(cus){
        //console.log(cus);
        var tr = $("<tr>");
        _.each(keys, function(key){
          var td = $("<td>").text(cus[key]);
          tr.append(td);
          console.log(key, cus[key]);
        });
        tbl.append(tr);
      });
    });

  });

});


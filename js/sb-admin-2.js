function hms(seg){
    var hours = Math.floor( seg / 3600 );
    var minutes = Math.floor( (seg % 3600) / 60 );
    var seconds = seg % 60;

//Anteponiendo un 0 a los minutos si son menos de 10
    minutes = minutes < 10 ? '0' + minutes : minutes;

//Anteponiendo un 0 a los segundos si son menos de 10
    seconds = seconds < 10 ? '0' + seconds : seconds;

    var result = hours + ":" + minutes + ":" + seconds;  // 2:41:30
    return result;
}


function FechaSQL(fecha){
    var F = fecha.split("/");
    var tmp=F[2]+"-"+F[1]+"-"+F[0];
    return tmp;
}
function HOY() {
    var f = new Date();
    return  (f.getDate() + "/" + (f.getMonth() +1) + "/" + f.getFullYear());
}
function AStock(modo,ArtID,Cant,Local){
    var d={M:modo,Local:Local,ID:ArtID,Stock:Cant};
    console.log("ver");
    console.log(d);
    $.post("cgi/Grabar.php", d, function(result){ console.log("Stock "+ result); });
}

$(function() {
    $('#side-menu').metisMenu();
});

$(function() {
     var tooltips = $( "[title]" ).tooltip({
      position: {
        my: "left top",
        at: "right+5 top-5",
        collision: "none"
      }});
      
    $(window).bind("load resize", function() {
        var topOffset = 50;
        var width = (this.window.innerWidth > 0) ? this.window.innerWidth : this.screen.width;
        if (width < 768) {
            $('div.navbar-collapse').addClass('collapse');
            topOffset = 100; // 2-row-menu
        } else {
            $('div.navbar-collapse').removeClass('collapse');
        }

        var height = ((this.window.innerHeight > 0) ? this.window.innerHeight : this.screen.height) - 1;
        height = height - topOffset;
        if (height < 1) height = 1;
        if (height > topOffset) {
            $("#page-wrapper").css("min-height", (height) + "px");
        }
    });

    var url = window.location;
    // var element = $('ul.nav a').filter(function() {
    //     return this.href == url;
    // }).addClass('active').parent().parent().addClass('in').parent();
    var element = $('ul.nav a').filter(function() {
        return this.href == url;
    }).addClass('active').parent();

    while (true) {
        if (element.is('li')) {
            element = element.parent().addClass('in').parent();
        } else {
            break;
        }
    }
});

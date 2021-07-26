
$( document ).ready(function() {

    /*Dichiarazione */
    let windowWidth = $(window).width();
    let windowHeight = $(window).height();
    let $segnalazioneSection = $("#segnalazione-section");

    /* Altezza del div "#segnalazione-section al 100% del container"*/
    $segnalazioneSection.css({"height":windowHeight+"px"});
    $(window).on("resize",function (){
        let windowHeight = $(window).height();
        $segnalazioneSection.css({"height":windowHeight+"px"});
    });

    /* Formattazione del main menù quando si aggiorna o si carica ex-novo la pagina */
    if($(window).width() <= 768){
        $(".menu li a").text("")
    }else{
        $(".menu li:nth-of-type(1) a").text("Home");
        $(".menu li:nth-of-type(2) a").text("Impara");
        $(".menu li:nth-of-type(3) a").text("Protocolli");
        $(".menu li:nth-of-type(4) a").text("Segnala");
    }

    /* Formattazione del main menù quando durante il resize */
    $(window).resize(function(){
        if($(window).width() <= 768){
            $(".menu li a").text("")
        }else{
            $(".menu li:nth-of-type(1) a").text("Home");
            $(".menu li:nth-of-type(2) a").text("Impara");
            $(".menu li:nth-of-type(3) a").text("Protocolli");
            $(".menu li:nth-of-type(4) a").text("Segnala");
        }
    })
    /* swap immmagine segnala  - bianca/arancione */
    $("#segnala").on({
                                mousedown: function (){
                                    $(this).attr("src", "Icone_ed_elementi_grafici/segnala_AR.png")
                                },
                                 mouseenter: function (){
                                     $(this).attr("src", "Icone_ed_elementi_grafici/segnala_AR.png")
                                },
                                mouseleave:function (){
                                    $(this).attr("src", "Icone_ed_elementi_grafici/segnala_B.png")

                                }
                                });
/*resize img freccia disclaimer.html per dispositici mobile conschermi molto piccoli*/

    $(window).on("resize load", function (){
        if(windowWidth <= 320) {
            $("._content ._section:nth-child(1) div:nth-child(1) img").css({width: "32px", height: "32px"})
        }
        if(windowWidth > 320 && windowWidth <=  767) {
            $("._content ._section:nth-child(1) div:nth-child(1) img").css({width: "48px", height: "48px"})
        }
    });





});



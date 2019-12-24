const choiceSection = () => {
    $('.section').click(function () {
        const c = $(this).data('section');
        $('.card-product-cat').attr('hidden',true);
        $('.cat'+c).attr('hidden',false);
    })
};

const choiceItem = () => {
    $('.notes').click(function () {
        const container = $(this).parent().parent().find('.wrapper')

        container.animate({
            scrollLeft :400
        },1000)
    })
    $('.medium').click(function () {
        const container = $(this).parent().parent().find('.wrapper')

        container.animate({
            scrollLeft :800
        },1000)
    })
};

const choiceLvl = () => {
    $('.lvl').click(function () {
        console.log($(this).data('lvl'))
        const id = $(this).data('id')
        const enfant = $('#enfant').val()
        const lvl = $(this).data('lvl')
        $('#lvl'+id).html($(this).text())
        const datas = {enfant: enfant, activite: id, lvl: lvl}
        $.ajax({
            url: "/enfants/"+enfant+'/activites/updatelevel',
            type: "POST",
            headers: {
                'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')
            },
            dataType: 'json',
            data: datas,
            success: function(data) {
                console.log(data)
                console.log($(this))



            },
            error: function(data) {}
        })
        const container = $('.wrapper')
        container.animate({
            scrollLeft : 0
        },1000)
    })

}



export {choiceSection, choiceItem, choiceLvl}
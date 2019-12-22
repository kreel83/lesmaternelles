const choiceSection = () => {
    $('.section').click(function () {
        const c = $(this).data('section');
        $('.card-product-cat').attr('hidden',true);
        $('.cat'+c).attr('hidden',false);
    })
};

const choiceItem = () => {
    $('.card-product-cat').click(function () {
        if ($(this).hasClass('card-active')) {
            $(this).find('.cat').css('height','20px');
            $(this).removeClass('card-active');

        } else {
            $(this).addClass('card-active');
            $(this).find('.cat').css('height','100%')
            $(this).find('.cat').css('padding-top','0')

        }
    })
};


const choiceMedia = () => {
    $('.cat .video').on('click',function () {
        $(this).prev().css('display','none')
        $(this).prev().css('height','0')



        $(this).next().css('height','80%')
        $(this).next().slideUp(5000)
    })

    $('.cat .notation').on('click',function () {
        $(this).next().css('height','80%')
        $(this).next().next().next().css('height','0')
        $(this).next().next().next().css('display','none')
    })
};

export {choiceSection, choiceItem, choiceMedia}
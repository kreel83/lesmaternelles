const selectEnfant = () => {
    const arr = $('#enfants').val()
    $('.card').click(function () {
        if ($(this).attr('data-select') == 'false') {
            $(this).css('background-color', 'grey').css('color','white')
            const id = $(this).attr('id')

            $(".tag[data-tag='tag"+id+"']").attr('hidden',false)
            $(this).attr('data-select','true')

            console.log(arr)
            arr.push(id)
            $('#enfants').val(arr)
        } else {
            $(this).css('background-color', 'white').css('color','black')
            const id = $(this).attr('id')
            console.log(id)
            $(".tag[data-tag='tag"+id+"']").attr('hidden',true)
            $(this).attr('data-select','false')
        }

    })
}

export {selectEnfant}
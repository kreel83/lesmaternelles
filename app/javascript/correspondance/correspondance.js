const selectEnfant = () => {
    const arr = $('#enfants').val()
    $('.card').click(function () {
        if ($(this).attr('data-select') == 'false') {
            $(this).css('background-color', 'grey').css('color','white')
            const id = $(this).attr('id')

            $(".tag[data-tag='tag"+id+"']").attr('hidden',false)
            $(this).attr('data-select','true')


            let enfants = $('#enfants').val()
            const arr = enfants.split('/')

                enfants=enfants+id+'/'
            $('#enfants').val(enfants)
console.log(enfants)

        } else {
            $(this).css('background-color', 'white').css('color','black')
            const id = $(this).attr('id')
            $(".tag[data-tag='tag"+id+"']").attr('hidden',true)
            $(this).attr('data-select','false')
            let enfants = $('#enfants').val()


            let array = enfants.split('/')

            const pos = enfants.indexOf(id)
            const search = '/'+id+'/'
            enfants = enfants.replace(search,'/')
            //$('#enfants').val(enfants)
            console.log('-' + enfants)
            $('#enfants').val(enfants)


        }

    })
}

export {selectEnfant}
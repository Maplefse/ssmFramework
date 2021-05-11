 setInterval("test()",100);
     function test() {
         alert("进入")
             $.ajax({
                    url: 'message',
                    async:true,
                    type: 'post',
                    success: function (data) {
                         /*var new_url =  $('#new_iframe').attr('src');*/
                         /*if (new_url !== data){
                                 $('#new_iframe').attr('src', data);
                             }*/
                        alert(data);
                     }
             })
     }


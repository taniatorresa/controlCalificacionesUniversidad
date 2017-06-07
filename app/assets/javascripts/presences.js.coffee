$( document ).on 'ready page:load', ( event ) ->

  $( document ).on 'change', '#presence_student', () ->
      $( '#presence_subject' )
        .empty()
        .append($("<option></option>")
        .attr("value", "")
        .text("- Seleccionar -"))

      $this = $( this )
      if( $this.val() != "" )
        $.ajax({
          url: '/presences/get_subjects',
          type: 'GET',
          dataType: 'json',
          data: { s: $this.val() },
          success: (data) ->
            if data['success'] == 'true'
              if data['subjects'].length > 0
                for subject in data['subjects']
                  $( '#presence_subject' )
                    .append($("<option></option>")
                    .attr("value", subject.id)
                    .text(subject.nombre_materia));
              else
                $( '#presence_subject' )
                  .empty()
                  .append($("<option></option>")
                  .attr("value", "")
                  .text("- Seleccionar -"));
        })

  $( document ).on 'change', '#presence_subject', () ->
      $( '#presence_student_has_subject_id' )
        .val( "" )
      $this = $( this )
      if( $this.val() != "" )
        $.ajax({
          url: '/presences/get_group',
          type: 'GET',
          dataType: 'json',
          data: { stu: $( '#presence_student' ).val(), sub: $this.val() },
          success: (data) ->
            if data['success'] == 'true'
              if data['student_subject'] > 0
                $( '#presence_student_has_subject_id' ).val( data['student_subject'] )
              else
                $( '#presence_student_has_subject_id' ).val( "" )
        })

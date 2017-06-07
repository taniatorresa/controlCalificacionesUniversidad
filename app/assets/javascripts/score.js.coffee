$( document ).on 'ready page:load', ( event ) ->

  $( document ).on 'change', '#score_student', () ->
      $( '#score_subject' )
        .empty()
        .append($("<option></option>")
        .attr("value", "")
        .text("- Seleccionar -"))

      $this = $( this )
      if( $this.val() != "" )
        $.ajax({
          url: '/scores/get_subjects',
          type: 'GET',
          dataType: 'json',
          data: { s: $this.val() },
          success: (data) ->
            if data['success'] == 'true'
              if data['subjects'].length > 0
                for subject in data['subjects']
                  $( '#score_subject' )
                    .append($("<option></option>")
                    .attr("value", subject.id)
                    .text(subject.nombre_materia));
              else
                $( '#score_subject' )
                  .empty()
                  .append($("<option></option>")
                  .attr("value", "")
                  .text("- Seleccionar -"));
        })

  $( document ).on 'change', '#score_subject', () ->
      $( '#score_student_has_subject_id' )
        .val( "" )
      $this = $( this )
      if( $this.val() != "" )
        $.ajax({
          url: '/scores/get_group',
          type: 'GET',
          dataType: 'json',
          data: { stu: $( '#score_student' ).val(), sub: $this.val() },
          success: (data) ->
            if data['success'] == 'true'
              if data['student_subject'] > 0
                $( '#score_student_has_subject_id' ).val( data['student_subject'] )
              else
                $( '#score_student_has_subject_id' ).val( "" )
        })

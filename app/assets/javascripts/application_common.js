//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require ace-rails-ap
//
//= require_tree ./common


var editor = ace.edit("sample_program");

var textarea = $('textarea[name="submission[sample_program]"]').hide();
editor.getSession().setValue(textarea.val());
editor.getSession().on('change', function(){
  textarea.val(editor.getSession().getValue());
});

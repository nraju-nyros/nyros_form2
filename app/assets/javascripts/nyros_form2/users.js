// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


// On change form validations
$(function() {
  $("form[name='myForm']").validate({
    rules: {
      name: "required",
      email: {
        required: true,
        email: true
      },
      mobile: {
       required: true,
      digits: true,
      minlength: 10,
      maxlength: 10,
      }
    },
    // Specify validation error messages
    messages: {
      name: "Please enter your firstname",
      mobile: {
        required: "Please Enter mobile number",
        minlength: "Your Mobile must be at least 10 numbers long"
      },
      email: "Please enter a valid email address"
    },
    // in the "action" attribute of the form when valid
    submitHandler: function(form) {
      form.submit();
    }
  });
});
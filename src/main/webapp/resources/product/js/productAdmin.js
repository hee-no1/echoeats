const updateButton = document.querySelector('#updateButton');

updateButton.form.action = '/admin/product/modify';
updateButton.form.method = 'POST';
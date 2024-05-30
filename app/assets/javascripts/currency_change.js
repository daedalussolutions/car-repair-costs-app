document.addEventListener("DOMContentLoaded", function() {
    var currencySelect = document.getElementById('currency-select');
    var currencyForm = document.getElementById('currency-form');

    currencySelect.addEventListener('change', () => {
        console.log('Currency Changed')
        currencyForm.submit();
      });
});

document.addEventListener('DOMContentLoaded', function() {
    const serviceCards = document.querySelectorAll('.service-card');
    const activeServiceContainer = document.getElementById('active-service-container');
  
    let activeServiceIndex = 0;
  
    serviceCards.forEach(function(card, index) {
      card.addEventListener('click', function() {
        activeServiceIndex = index;
        const serviceId = card.dataset.index;
        fetch(`/services/${serviceId}.js`)
          .then(response => response.text())
          .then(html => {
            activeServiceContainer.innerHTML = html;
          });
      });
    });
  });
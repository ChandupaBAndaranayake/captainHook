document.addEventListener('DOMContentLoaded', function() {
    const messageElement = document.getElementById('message');
    const button = document.getElementById('changeMessageBtn');

    button.addEventListener('click', function() {
        messageElement.textContent = 'The message has been changed!';
    });
});

console.log("commit test")
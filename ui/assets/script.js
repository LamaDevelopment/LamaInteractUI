window.addEventListener('message', function(event) {
    if (event.data.type === 'show') {
        document.querySelector('body').style.display = 'flex';
        document.querySelector('.interact-container p').innerHTML = "<span class='keybind-container'>" + event.data.key + "</span> " + event.data.message;
    } else if (event.data.type === 'hide') {
        document.querySelector('body').style.display = 'none';
    }
});
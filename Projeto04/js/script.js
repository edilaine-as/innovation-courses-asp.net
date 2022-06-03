/*$(document).ready(function () {
    progress bar
    let containerA = document.getElementById("circleA");
    let circleA = new ProgressBar.Circle(containerA, {
        color: '#CD851C',
        stroke: 8,
        duration: 1400,
        from: { color: '#AAA' },
        to: { color: 'CD851C' },

        step: function (state, circle) {
            circle.path.setAttribute('stroke', state.color);
            let value = Math.round(circle.value() * 60);
            circle.setText(value);
        }
    });

    circleA.animate(1.0);
});*/

var image = document.getElementsByClassName('thumbnail');
new simpleParallax(image, {
    scale: 1.5
});
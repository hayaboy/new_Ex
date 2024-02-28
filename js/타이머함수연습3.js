let id=setInterval(() => {
    console.log("hi");
}, 1000);

setTimeout(function () {
    clearInterval(id);
}, 5000)

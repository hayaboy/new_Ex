



function callTenTimes(callback) {
     callback();
}

callTenTimes(function () {
    console.log("hi");
});
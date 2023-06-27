var MIDDLE_SIZE = 992;
function initCollapseButton() {
    $("#collapse-button").click(function () {
        if ($(window).width() >= MIDDLE_SIZE)
            $(document.body).toggleClass("collapse-nav");
        else
            $(document.body).toggleClass("show-nav");
    });
}
function preventExpandedChanging(s, e) {
    e.cancel = true;
}
function onSideBarNodeClick(s, e) {
    var windowWidth = $(window).width();
    if (windowWidth < MIDDLE_SIZE && !$(document.body).hasClass("show-nav")) {
        $(document.body).toggleClass("show-nav", true);
        e.htmlEvent.preventDefault();
        return;
    }
    if (windowWidth >= MIDDLE_SIZE && $(document.body).hasClass("collapse-nav")) {
        $(document.body).toggleClass("collapse-nav", false);
        e.htmlEvent.preventDefault();
        return;
    }
}
$(window).on("load", function () {
    initCollapseButton();
})

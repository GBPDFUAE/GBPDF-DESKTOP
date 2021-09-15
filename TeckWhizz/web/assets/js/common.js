$(function () {
    handleVideo();
    $("#callLink").click(function (e) {
        e.preventDefault();
        var link = $(this);
        console.log(link)
        link.prop("disabled", true);
        $(".phone-number").hide();
        $(".phone-loader").show();
        $.ajax({
            url: "http://lead.billiontagsads.com/campaign/click/",
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            data: JSON.stringify({
                campaign: 1,
                action_name: "Call Back Button Click",
            }),
        }).always(function () {
            link.prop("disabled", false);
            $(".phone-number").show();
            $(".phone-loader").hide();
            var href =  link.attr("href")
            window.location.href = href;
        });
    });
});

function handleVideo() {
    var isPlaying = false;
    var video = document.getElementById("video");
    function unmute() {
        video.muted = false;
    }
    video.addEventListener("click", unmute);

    if ("IntersectionObserver" in window) {
        var observer = new IntersectionObserver((entries) => {
            entries.forEach((entry) => {
                if (entry.isIntersecting) {
                    isPlaying = true;
                    video
                        .play()
                        .then(function () {
                            isPlaying = false;
                        })
                        .catch(function () {
                            isPlaying = false;
                        });
                } else {
                    if (!isPlaying) {
                        video.pause();
                    }
                }
            });
        });
        observer.observe(video);
    }
}

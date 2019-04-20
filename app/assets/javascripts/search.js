document.addEventListener("turbolinks:load", function () {
    $input = $("[data-behavior='autocomplete']")
    var options = {
        getValue: "symptom",
        url: function (phrase) {
            return "/search.json?q=" + phrase;
        },
        categories: [
            {
                listLocation: "deseases",
                header: "<strong>Desease</strong>",
            }
        ],
        list: {
            maxNumberOfElements: 5,
            match: {
                enabled: true
            },
            onChooseEvent: function () {
                console.log("q2e");
                var url = $input.getSelectedItemData().url
                console.log(url)
            }
        }
    }
    $input.easyAutocomplete(options)
});

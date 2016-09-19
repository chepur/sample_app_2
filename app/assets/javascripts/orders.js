$(document).on('ready page:load', function () {

// Open order page by click on table row
    $('tr[data-href]').on("click", function () {
        document.location = $(this).data('href');
    });


});

function addSimcardField() {

    //create Date object
    var date = new Date();

    //get number of miliseconds since Jan 1, 1970
    //and use it for simcard key
    var mSec = date.getTime();

    //replace 0 with milisecconds
    idAttributTitle = "order_simcards_attributes_0_Title".replace("0", mSec);
    nameAttributTitle = "order[simcards_attributes][0][title]".replace("0", mSec);

    //create <li> tag
    var li = document.createElement("li");

    //create label for Title, set it's for attribute,
    //and append it to <li> element
    var labelTitle = document.createElement("label");
    labelTitle.setAttribute("for", idAttributTitle);
    var titleLabelText = document.createTextNode("Title");
    labelTitle.appendChild(titleLabelText);
    li.appendChild(labelTitle);

    //create input for Title, set it's type, id and name attribute,
    // and append it to <li> element
    var inputTitle = document.createElement("INPUT");
    inputTitle.setAttribute("type", "text");
    inputTitle.setAttribute("id", idAttributTitle);
    inputTitle.setAttribute("name", nameAttributTitle);
    li.appendChild(inputTitle);

    //add created <li> element with its child elements
    //(label and input) to myList (<ul>) element
    document.getElementById("myList").appendChild(li);

    //show simcard header
    $("#simcardHeader").show();
}
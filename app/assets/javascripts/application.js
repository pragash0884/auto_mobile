// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery.min


function update_brands_div(id) {
    jQuery.ajax({
        url: "/user/update_brands",
        type: "GET",
        data: {"product_type_id" : id},
        dataType: "html",
        success: function(data) {
            jQuery("#brands_div").html(data);
        }
    });
}

function update_brands_type(id) {
    jQuery.ajax({
        url: "/user/update_brand_types",
        type: "GET",
        data: {"brand_id" : id},
        dataType: "html",
        success: function(data) {
            jQuery("#brand_types_div").html(data);
        }
    });
}

function supplier_div(id) {
    var id = id
    if(id == ""){
        $(".supplier_name").show();
    }
    else{
        $(".supplier_name").hide();
        $.ajax({
            url: "/user/get_supplier",
            type: "get",
            dataType: "json",
            data: {"id" : id},
            success: function(returnData){
                $("#email").val(returnData.email);
                $("#mobile").val(returnData.mobile);
            },
            error: function(e){
            }
        });
    }
}


function update_spare_items_div(id) {
    jQuery.ajax({
        url: "/user/update_spare_items",
        type: "GET",
        data: {"brand_type_id" : id},
        dataType: "html",
        success: function(data) {
            jQuery("#spare_items_div").html(data);
        }
    });
}


function different_spare(id) {
    jQuery.ajax({
        url: "/user/find_spare_items",
        type: "GET",
        data: {"spare_id" : id},
        dataType: "html",
        success: function(data) {
            if(data == "empty"){
                jQuery(".spare_price_div1").hide();
            }
            else{
            jQuery(".spare_price_div1").show();
            jQuery("#spare_price_div").html(data);
            }
        }
    });
}

function update_grand_total(count){
    var grand_total = 0
    var total = 0
    for (var i=1; i<=count; i++){
        div_id = "#item_" + i + "_total"
        console.log(div_id);
        if ($(div_id).length) {
            total += grand_total + parseInt($(div_id).val());
        }
        console.log(total);
    }
    $('#grand_total').val(total);
}



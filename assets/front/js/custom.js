(function ($) {
    "use strict";

    //Preloder
    $(window).on('load', function () {
        
        var image = $('#preloader').data('image');
        $('#preloader').css('background', "#fff url('" + image + "') no-repeat center center");
        $('#preloader').delay(200).fadeOut('slow', function () {
            $(this).remove();
        });
    });

    //Active menu
    const currentLocation = location.href;
    const menuItem = document.querySelectorAll('ul li a');
    const menuLength = menuItem.length;
    for (let i = 0; i < menuLength; i++) {
        if (menuItem[i].href === currentLocation) {
            menuItem[i].className = "active";
        }
    }


    //sticky menu
    $(window).on('scroll', function () {

        if ($(this).scrollTop() > 200) {
            $('.sticky_top').addClass('sticky');
        } else {
            $('.sticky_top').removeClass('sticky');
        }
    });

    // Language and Currency 
    $(".selectors").on("change", function () {
        var url = $(this).val();
        window.location = url;
    });


    //Mobile menu
    $('.cross-btn').on('click', function (event) {
        //$(this).toggleClass('h-active');
        $('.main-nav').toggleClass('slidenav');
    });
    $('.remove').on('click', function (event) {
        $('.main-nav').removeClass('slidenav');
    });

    $(".main-nav .bi").on('click', function (event) {
        var $fl = $(this);
        $(this).parent().siblings().find('.sub-menu').slideUp();
        $(this).parent().siblings().find('.bi').addClass('bi-chevron-down');
        if ($fl.hasClass('bi-chevron-down')) {
            $fl.removeClass('bi-chevron-down').addClass('bi-chevron-up');
        } else {
            $fl.removeClass('bi-chevron-up').addClass('bi-chevron-down');
        }
        $fl.next(".sub-menu").slideToggle();
    });

    //Counter up
    $('.counter').counterUp({
        delay: 10,
        time: 1000
    });

    $('.popup-video').magnificPopup({
        disableOn: 700,
        type: 'iframe',
        mainClass: 'mfp-fade',
        removalDelay: 160,
        preloader: false,

        fixedContentPos: false
    });

    $('.location-btn select').niceSelect();
    
    
    var swiper = new Swiper(".category-slider", {
        spaceBetween: 25,
        loop: true,
        navigation: {
            nextEl: ".swiper-button-next-c",
            prevEl: ".swiper-button-prev-c",
        },
        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 1,
                spaceBetween: 25
            },
            // when window width is >= 480px
            480: {
                slidesPerView: 2,
            },
            // when window width is >= 768px
            768: {
                slidesPerView: 3,
            },
            // when window width is >= 992px
            992: {
                slidesPerView: 4,
            },
            // when window width is >= 1200px
            1200: {
                slidesPerView: 6,
            }
        }
    });


    var swiper = new Swiper(".creative-service-slider", {
        slidesPerView: 6,
        spaceBetween: 25,
        loop: true,
        navigation: {
            nextEl: ".swiper-button-next-c",
            prevEl: ".swiper-button-prev-c",
        },
        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 1,
                spaceBetween: 0
            },
            // when window width is >= 480px
            480: {
                slidesPerView: 2,
            },
            // when window width is >= 768px
            768: {
                slidesPerView: 3,
            },
            // when window width is >= 992px
            992: {
                slidesPerView: 5,
            },
            // when window width is >= 1200px
            1200: {
                slidesPerView: 6,
            }
        }
    });


    var swiper = new Swiper(".creative-service-slider-two", {
        slidesPerView: 4,
        spaceBetween: 25,
        loop: true,
        navigation: {
            nextEl: ".swiper-button-next-c",
            prevEl: ".swiper-button-prev-c",
        },
        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 1,
                spaceBetween: 0
            },
            // when window width is >= 480px
            480: {
                slidesPerView: 2,
            },
            // when window width is >= 768px
            768: {
                slidesPerView: 3,
            },
            // when window width is >= 992px
            992: {
                slidesPerView: 4,
            }
        }
    });


    var swiper = new Swiper(".regular-service-slider", {
        slidesPerView: 3,
        spaceBetween: 25,
        loop: true,
        navigation: {
            nextEl: ".swiper-button-next-c",
            prevEl: ".swiper-button-prev-c",
        },
        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 1,
                spaceBetween: 0
            },
            // when window width is >= 480px
            480: {
                slidesPerView: 2,
            },
            // when window width is >= 768px
            768: {
                slidesPerView: 2,
            },
            // when window width is >= 992px
            992: {
                slidesPerView: 3,
            }
        }
    });



    var swiper = new Swiper(".offer-service-slider", {
        slidesPerView: 3,
        spaceBetween: 25,
        loop: true,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 1,
                spaceBetween: 0
            },
            // when window width is >= 480px
            480: {
                slidesPerView: 2,
            },
            // when window width is >= 768px
            768: {
                slidesPerView: 2,
            },
            // when window width is >= 992px
            992: {
                slidesPerView: 3,
            }
        }
    });


    var swiper = new Swiper(".shop-slider", {
        slidesPerView: 4,
        spaceBetween: 25,
        loop: true,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
        },
        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 1,
                spaceBetween: 0
            },
            // when window width is >= 480px
            480: {
                slidesPerView: 2,
            },
            // when window width is >= 768px
            768: {
                slidesPerView: 2,
            },
            // when window width is >= 992px
            992: {
                slidesPerView: 3,
            },
            // when window width is >= 1200px
            1200: {
                slidesPerView: 4,
            }
        }
    });


    var swiper = new Swiper(".testimonial-slider-three", {
        slidesPerView: 1,
        spaceBetween: 25,
        loop: true,
        navigation: {
            nextEl: ".swiper-button-next-c",
            prevEl: ".swiper-button-prev-c",
        },
    });



    var swiper = new Swiper(".testimonial-slider2", {
        slidesPerView: 2,
        spaceBetween: 25,
        loop: true,
        navigation: {
            nextEl: ".swiper-button-next-c",
            prevEl: ".swiper-button-prev-c",
        },
        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 1,
                spaceBetween: 0
            },
            // when window width is >= 768px
            768: {
                slidesPerView: 2,
            },
            // when window width is >= 1200px
            1200: {
                slidesPerView: 3,
            }
        }
    });


    var swiper = new Swiper(".testimonial-slider", {
        slidesPerView: 2,
        spaceBetween: 25,
        loop: true,
        navigation: {
            nextEl: ".swiper-button-next-c",
            prevEl: ".swiper-button-prev-c",
        },
        breakpoints: {
            // when window width is >= 320px
            320: {
                slidesPerView: 1,
                spaceBetween: 0
            },
            // when window width is >= 768px
            768: {
                slidesPerView: 2,
            },
            // when window width is >= 992px
            992: {
                slidesPerView: 2,
            }
        }
    });

    jQuery(window).on('load', function () {
        new WOW().init();
        window.wow = new WOW({
            boxClass: 'wow',
            animateClass: 'animated',
            offset: 0,
            mobile: true,
            live: true,
            offset: 100
        })
        window.wow.init();
    });

       // slick slider
       $('#shop-arrival').slick({
        rows: 2,
        dots: true,
        arrows: false,
        infinite: true,
        speed: 2000,
        slidesToShow: 6,
        slidesToScroll: 3,
        autoplay: true,
        autoplaySpeed: 2000,
        responsive: [
          {
            breakpoint: 1200,
            settings: {
              arrows: false,
              slidesToShow: 5
            }
          },
          {
            breakpoint: 991,
            settings: {
              arrows: false,
              slidesToShow: 4
            }
          },
          {
            breakpoint: 768,
            settings: {
              arrows: false,
              slidesToShow: 3
            }
          },
          {
            breakpoint: 576,
            settings: {
              arrows: false,
              slidesToShow: 2
            }
          },
          {
            breakpoint: 480,
            settings: {
              arrows: false,
              slidesToShow: 1
            }
          }
        ]
    });

}(jQuery));

		// LOGIN FORM
		$("#loginform").on("submit", function (e) {
			e.preventDefault();
			$("#loginform button").prop("disabled", true);
			$(".formSpin").css('display', 'inline-block');
			$("#loginform .alert-info").show();
			$("#loginform .alert-info p").html($("#authdata").val());
			$.ajax({
				method: "POST",
				url: $(this).prop("action"),
				data: new FormData(this),
				dataType: "JSON",
				contentType: false,
				cache: false,
				processData: false,
				success: function (data) {
					if (data.errors) {
						$(".formSpin").css('display', 'none');
						$("#loginform .alert-success").hide();
						$("#loginform .alert-info").hide();
						$("#loginform .alert-danger").show();
						$("#loginform .alert-danger ul").html("");
						for (var error in data.errors) {
							$("#loginform .alert-danger p").html(data.errors[error]);
						}
					} else {
						$(".formSpin").css('display', 'none');
						$("#loginform .alert-info").hide();
						$("#loginform .alert-danger").hide();
						$("#loginform .alert-success").show();
						$("#loginform .alert-success p").html("Success !");
						window.location = data;
					}
					$("#loginform button").prop("disabled", false);
				},
			});
		});


        $("#registerform").on("submit", function (e) {
			e.preventDefault();

			$(".formSpin").css('display', 'inline-block');
			$("#registerform button.submit-btn").prop("disabled", true);
			$("#registerform .alert-info").show();
			$("#registerform .alert-info p").html($("#processdata").val());

			$.ajax({
				method: "POST",
				url: $(this).prop("action"),
				data: new FormData(this),
				dataType: "JSON",
				contentType: false,
				cache: false,
				processData: false,
				success: function (data) {
					if (data == 1) {
						window.location = mainurl + "/user/dashboard";
					} else {
						if (data.errors) {
							$(".formSpin").css('display', 'none');
							$("#registerform .alert-success").hide();
							$("#registerform .alert-info").hide();
							$("#registerform .alert-danger").show();
							$("#registerform .alert-danger ul").html("");
							for (var error in data.errors) {
								$("#registerform .alert-danger p").html(
									data.errors[error]
								);
							}
							$("#registerform button.submit-btn").prop(
								"disabled",
								false
							);
						} else {
							$(".formSpin").css('display', 'none');
							$("#registerform .alert-info").hide();
							$("#registerform .alert-danger").hide();
							$("#registerform .alert-success").show();
							$("#registerform .alert-success p").html(data);
							$("#registerform button.submit-btn").prop(
								"disabled",
								false
							);
						}
					}
				},
			});
		});


//Password Show Hide fuction


const togglePassword = document.querySelector('#togglePassword');


const password = document.querySelector('#password');

if(togglePassword){
 togglePassword.addEventListener('click', function (e) {
   // toggle the type attribute
   const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
   password.setAttribute('type', type);
   // toggle the eye / eye slash icon
   this.classList.toggle('bi-eye');
 });
}



function confirmPass() {
    var y = document.getElementById("confirm-password");
    if (y.type === "password") {
        y.type = "text";
    } else {
        y.type = "password";
    }
}

$(document).on("submit", "#contactform", function (e) {
    e.preventDefault();
    $(".gocover").show();
    $(".formSpin").css('display', 'inline-block');
    $("button.btn-contact").prop("disabled", true);
    $.ajax({
        method: "POST",
        url: $(this).prop("action"),
        data: new FormData(this),
        contentType: false,
        cache: false,
        processData: false,
        success: function (data) {
            if (data.errors) {
                $(".formSpin").css('display', 'none')
                $(".alert-success").hide();
                $(".alert-danger").show();
                $(".alert-danger ul").html("");
                for (var error in data.errors) {
                    $(".alert-danger ul").append(
                        "<li>" + data.errors[error] + "</li>"
                    );
                }
                $(
                    "#contactform input[type=text], #contactform input[type=email], #contactform textarea"
                )
                    .eq(0)
                    .focus();
            } else {
                $(".alert-danger").hide();
                $(".alert-success").show();
                $(".alert-success p").html(data);
                
                $(
                    "#contactform input[type=text], #contactform input[type=email], #contactform textarea"
                )
                    .eq(0)
                    .focus();
                $(
                    "#contactform input[type=text], #contactform input[type=email], #contactform textarea"
                ).val("");
            }
            $(".formSpin").css('display', 'none');
            $(".gocover").hide();
            $("button.btn-contact").prop("disabled", false);
        },
    });
});

$(document).on('submit','.geniusform',function(e){
    var $this = $(this);

    e.preventDefault();

  $('#submit-btn').prop('disabled',true);
      $.ajax({
       method:"POST",
       url:$(this).prop('action'),
       data: new FormData(this),
       contentType: false,
       cache: false,
       processData: false,
       success:function(data)
       {
        if ((data.errors)) {
          for (var error in data.errors) {
            toastr.error(data.errors[error]);
          }
        } else {
            toastr.success(data.success);
        }
        
          $('#attribute,#modal1,#modal2,#exampleModal').modal('hide');
          $('#submit-btn').prop('disabled',false);
          
          $(window).scrollTop(0);

       }

      });

});

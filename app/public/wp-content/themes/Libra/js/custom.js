jQuery(document).ready(function(){

    // prevent empty space in pages
    function PEPFU(){
        var pepFU = jQuery(window).innerHeight() - jQuery('footer').height() - jQuery('#wpadminbar').height();
        jQuery('body > .content').css('min-height', pepFU);   
    }
    PEPFU();
    
    // Header Scripts--------------------
    // height header
    function HH(){
        var heiHeader = jQuery('.fixing').height();
        jQuery('header').height(heiHeader);            
    }
    HH(); 
                  
    // open mobile menu      
    jQuery('.mobileMenu').click(function(){   
        jQuery(this).toggleClass('mobileMenuOpen');      
        jQuery('header nav').slideToggle();
    })

    // cacl height and position
    function FiH(){
        if(window.innerWidth > 600){
            var tpFH = jQuery('.fixing').height() + jQuery('#wpadminbar').height();    
        }else{
            var chCL = jQuery('.fixing').hasClass('activated');
            if(chCL == false){
                var tpFH = jQuery('.fixing').height() + jQuery('#wpadminbar').height();    
            }else{
                var tpFH = jQuery('.fixing').height();
            }
        }
        var formHei = jQuery(window).innerHeight() - tpFH;
        jQuery('header nav').css({'max-height': formHei});                               
    }
    FiH();
            
    // add caret to dropdown menu
    if(jQuery(window).innerWidth() > 1024){
        jQuery('nav .menu-item-has-children > a').each( function(){
            jQuery(this).append('<span class="caret"></span>')
        })
    }else{
        jQuery('nav .menu-item-has-children').each( function(){
            jQuery(this).append('<span class="thereCaret"><img src="/wp-content/themes/7fridays/images/thereCaret.svg" title="" alt=""/></span>')
        })
    }

    // open on hover or click
    if (jQuery(window).innerWidth() > 1024) {
        jQuery('nav .menu-item-has-children').hover(function(){
            jQuery(this).find('ul:first').stop().slideDown(300);
        }, function(){
            jQuery(this).find('ul:first').stop().slideUp(200);
        });
    }else{
        jQuery('nav .menu-item-has-children .thereCaret').click(function(){
            jQuery(this).parent().find('ul:first').toggleClass('openMenu');
            jQuery(this).toggleClass('active');
        });
    }
    if(jQuery(window).innerWidth() > 600){
        if ($('body').hasClass('admin-bar')) {
            var topHP = 0 + jQuery('#wpadminbar').height();
        } else {
            var topHP = 0;
        }
    }else{
        var topHP = 0; 
    }

    // sticky header
    jQuery(window).scroll(function(){                             
        if(jQuery(window).scrollTop() > 150){
            jQuery('.fixing').addClass('activated').css({'top': topHP});
            FiH();
        }else{
            jQuery('.fixing').removeClass('activated').attr('style', '');
            FiH(); 
        }
    }); // end scroll function

    jQuery(window).resize(function(){         
        FiH()
    }); // end resize function
    //End Header Scripts-----------------------------
    var experience = {
        page : null,
        resize: null,
        init : function(){
            // SET
            if($('#connected_dots_top').length){
                this.setLines();
            }
        },
        setLines : function(){
            this.canvas = document.querySelector('canvas');

            var ctx = this.canvas.getContext('2d'),
                color = '#ffffff';
            this.canvas.width =  document.querySelector('body').offsetWidth;
            this.canvas.height = document.querySelector('body').offsetHeight;
            this.canvas.style.display = 'block';
            ctx.fillStyle = color;
            ctx.lineWidth = .1;
            ctx.strokeStyle = color;


            this.resize = function(){
                experience.canvas.width = window.innerWidth;
                experience.canvas.height = window.innerHeight;
                ctx.fillStyle = color;
                ctx.lineWidth = .1;
                ctx.strokeStyle = color;
            };

            $(window).on('resize', experience.resize);

            var mousePosition = {
                x: 30 * experience.canvas.width / 100,
                y: 30 * experience.canvas.height / 100
            };

            var dots = {
                nb: 800,
                distance: 50,
                d_radius: 150,
                array: []
            };

            function Dot(){
                this.x = Math.random() * experience.canvas.width;
                this.y = Math.random() * experience.canvas.height;
                this.vx = -.5 + Math.random();
                this.vy = -.5 + Math.random();
                this.radius = Math.random();

            }

            Dot.prototype = {
                create: function(){
                    ctx.beginPath();
                    ctx.arc(this.x, this.y, this.radius, 0, Math.PI * 2, false);
                    ctx.fill();
                }
            };

            Dot.animate = function(){
                var i, dot;

                for(i = 0; i < dots.nb; i++){
                    dot = dots.array[i];

                    if(dot.y < 0 || dot.y > experience.canvas.height){
                        dot.vx = dot.vx;
                        dot.vy = - dot.vy;
                    }
                    else if(dot.x < 0 || dot.x > experience.canvas.width){
                        dot.vx = - dot.vx;
                        dot.vy = dot.vy;
                    }
                    dot.x += dot.vx;
                    dot.y += dot.vy;
                }
            };

            Dot.line = function(){
                var i, j, i_dot, j_dot;

                for(i = 0; i < dots.nb; i++){
                    for(j = 0; j < dots.nb; j++){
                        i_dot = dots.array[i];
                        j_dot = dots.array[j];

                        if((i_dot.x - mousePosition.x) < dots.d_radius && (i_dot.y - mousePosition.y) < dots.d_radius && (i_dot.x - mousePosition.x) > - dots.d_radius && (i_dot.y - mousePosition.y) > - dots.d_radius){
                            if((i_dot.x - j_dot.x) < dots.distance && (i_dot.y - j_dot.y) < dots.distance && (i_dot.x - j_dot.x) > - dots.distance && (i_dot.y - j_dot.y) > - dots.distance){
                                ctx.beginPath();
                                ctx.moveTo(i_dot.x, i_dot.y);
                                ctx.lineTo(j_dot.x, j_dot.y);
                                ctx.stroke();
                                ctx.closePath();
                            }
                        }
                    }
                }
            };

            function createDots(){
                var i;

                ctx.clearRect(0, 0, experience.canvas.width, experience.canvas.height);

                if(dots.array.length < 1) {
                    for(i = 0; i < dots.nb; i++){
                        dots.array.push(new Dot());
                    }
                }

                for(i = 0; i < dots.nb; i++){
                    var dot = dots.array[i];
                    dot.create();
                }

                Dot.line();
                Dot.animate();
            }

            $('body').on('mousemove mouseleave', function(e){
                if(e.type == 'mousemove'){
                    mousePosition.x = e.pageX;
                    mousePosition.y = e.pageY;
                }
                if(e.type == 'mouseleave'){
                    mousePosition.x = experience.canvas.width / 2;
                    mousePosition.y = experience.canvas.height / 2;
                }
            });

            this.interval = setInterval(createDots, 1000/30);

        },

        destroy : function() {
            if(this.interval) {
                clearInterval(this.interval);
            }
            if(experience.resize){
                $(window).on('resize', experience.resize);
            }

        }
    };

    experience.init();
}) // end document ready





























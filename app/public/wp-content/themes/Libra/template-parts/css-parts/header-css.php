<style>
/*Start Settings*/
:root {
    /*--background: #334553;*/
    /*--second_color: #E2B767;*/
    /*--second_color: #FF652F;*/
    /*--background: #263238;*/
    --background: #181f27;
    /*--second_color: #E84646;*/

    /*--background: #1f1f2f;*/
    /*--second_color: #f2bc1c;*/
    --second_color: #C3073F;
    --main_color: #fff;
    /*--second_color: #5BAEE5;*/
    --hover_color: #707793;
    --text_color: #fff;
    --font: 'Mulish', sans-serif;
}
body{
    background: var(--background);
    font: 400 16px/1.6 var(--font);
    color: var(--text_color);
    margin: 0;
    position: relative;
}
body #connected_dots_top{
    position: absolute;
    left: 0;
    top: 0;
    /*width: 50vw;*/
    /*height: 100%;*/
}
.container{
    width: 100%;
    padding: 0 20px;
    margin: 0 auto;
    max-width: 1200px;
}
h1 {
    font: 700 60px/1.4 var(--font);
    color: var(--title_color);
}
h2 {
    font: 700 50px/1.4 var(--font);
    color: var(--title_color);
}
h3 {
    font: 700 38px/1.4 var(--font);
    color: var(--title_color);
}
h4 {
    font: 700 28px/1.4 var(--font);
    color: var(--title_color);
}
h5 {
    font: 700 24px/1.4 var(--font);
    color: var(--title_color);
}
h6 {
    font: 700 18px/1.4 var(--font);
    color: var(--title_color);
}
.cta_button{
    display: inline-block;
    padding: 15px 30px;
    font: 500 16px/1.4 var(--font);
    color: var(--main_color);
    background: var(--main_color);
    border-radius: 60px;
    position: relative;
    transition: .3s ease-in-out;
    overflow: hidden;
    box-shadow: 0 0 35px transparent;
}
.cta_button:hover{
    box-shadow: 0 0 35px var(--main_color);
}
.cta_button:before{
    content: '';
    position: absolute;
    inset: 2px;
    background: var(--background);
    border-radius: 60px;
}
.cta_button span{
    position: relative;
    z-index: 1;
}
.cta_button .line{
    position: absolute;
    inset: 0;
    display: block;
}
.cta_button .line:before{
     content: '';
     position: absolute;
     top: 0;
     left: 80%;
     width: 10px;
     height: 4px;
     background: var(--background);
     transform: translateX(-50%) skew(325deg);
     transition: .5s ease-in-out;
 }
.cta_button:hover .line:before{
    width: 20px;
    left: 20%;
}
.cta_button .line:after{
    content: '';
    position: absolute;
    bottom: 0;
    left: 20%;
    width: 10px;
    height: 4px;
    background: var(--background);
    transform: translateX(-50%) skew(325deg);
    transition: .5s ease-in-out;
}
.cta_button:hover .line:after{
    width: 20px;
    left: 80%;
}
a, 
a:hover, 
a:focus{
    text-decoration: none;
}
ul, 
ol{
    list-style-position: inside;
}
header ul,
header ol,
footer ul, 
footer ol{
    padding: 0;
    margin: 0;
}
header ul,
footer ul{
    list-style: none;
}
/*End Start Settings*/

/*Standart Settings*/
*, 
:after, 
:before{
    box-sizing: border-box;
}
body > .content{
    min-height: 650px;
    width: 100%;
    clear: both;
}
.customClear:before, 
.customClear:after{
    content:"";
    display:block;
    height:0;
    overflow:hidden;    
    clear:both;
}
a, 
button, 
input[type="submit"], 
a img{
    transition:all 0.3s linear;
}
input:not([type="checkbox"]), 
select{
    -moz-appearance: none;
    -webkit-appearance: none;    
}
iframe, 
img{
    max-width: 100%;
}
img{
    vertical-align: middle;
}
a img{
    border: none;
}
input, 
textarea, 
select{
    border-radius: 0;
    border: none;
    box-shadow: none;
}
.caret {
    display: inline-block;
    width: 0;
    height: 0;
    margin-left: 2px;
    vertical-align: middle;
    border-top: 4px solid;
    border-right: 4px solid transparent;
    border-left: 4px solid transparent;
}
.logo svg{
    width: 150px;
    object-fit: contain;
}
.logo svg .st0{
    fill: var(--main_color);
    transition: .3s ease-in-out;
}
.logo:hover img{
    opacity: 0.7;
}
/*End Standart Settings*/

/* Header Styles */
.admin-bar header{
    top: 32px;
}
header{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 999;
    background: transparent;
}
header .container{
    display: flex;
    align-items: center;
    padding-top: 20px;
    padding-bottom: 20px;
}
header .button_wrap{
    margin-left: 30px;
}
header nav{
    margin-left: auto;
}
header nav li{
    position: relative;
    padding: 0 15px;
}
header nav li a{
    white-space: nowrap;
    color: var(--background);
    display: block;
    font-weight: 700;
    font-size: 20px;
    position: relative;
    transition: .3s ease-in-out;
}
header nav li:before{
    content: '';
    position: absolute;
    left: 0;
    top: -7.5px;
    width: 0;
    height: calc(100% + 15px);
    background: transparent;
    transition: .3s ease-in-out;
}
header nav li a:hover{
    color: var(--main_color);
}
header nav li:hover:before{
    width: 100%;
    background: var(--second_color);
}
header nav li:hover a{
    color: #ffffff;
}
header nav .menu-header-menu-container > ul > li{
    display: inline-block;
}
header nav .menu-item-has-children .sub-menu{
    position: absolute;
    top: 100%;
    display: none;
    min-width: 100%;
    left: 0;
    padding-top: 0px;
}
header nav .menu-item-has-children .sub-menu li{
    width: auto;
    min-width: 100%;
}
header nav .menu-item-has-children .sub-menu li a{
    padding: 10px 15px;
    display: block;
    text-align: left;
    background: #556080;
    color: #C2CEEA;
    margin-top: 0;
}
header nav .menu-item-has-children .sub-menu li a:hover{
    color: #fff;
}
header nav .menu-item-has-children .sub-menu .sub-menu{
    top: 0;
    left: 100%;
}
header nav .menu-item-has-children .sub-menu .caret{
    margin-left: 4px;
}
.openMenu{
    display: block!important;
}
/*sticky header*/
.fixing{
    top: -70px;
    transition: top 0.3s
}
.fixing.activated{
    position: fixed;
    width: 100%;
    left: 0;
    background: #fff;
    box-shadow: 0 5px 10px rgba(0,0,0,.16)
}
.fixing.activated .container{
    padding-top: 10px;
    padding-bottom: 10px;
}
.fixing.activated svg .st0{
    fill: var(--background);
}
.fixing.activated .cta_button{
    background: var(--second_color);
}
.fixing.activated .cta_button:hover{
    box-shadow: 0 0 35px var(--second_color);
}
/*end sticky header*/
/*mobile menu*/
.mobileMenu{
    display: none;
    cursor: pointer;
    height: 38px;
    padding: 10px 12px;
    margin-left: 15px;
    width: 50px;
}
.iconAnime{
    position: relative;
    height: 100%;
    width: 100%;
}
.iconAnime span{
    height: 3px;
    width: 100%;
    border-radius: 3px;
    background: #7383BF;
    position: absolute;
    left: 0;
}
.iconAnime span:first-child{
    top: 0;
    transition: all 0.25s;
}
.iconAnime span:nth-child(2){
    top: calc(50% - 2px);
    transition: all 0.25s;
}
.iconAnime span:last-child{
    bottom: 0;
    transition: all 0.25s;
}
.mobileMenuOpen .iconAnime span:first-child{
    top: calc(50% - 2px);
    transform: rotate(225deg);
}
.mobileMenuOpen .iconAnime span:nth-child(2){
    top: calc(50% - 2px);
    display:none;
}
.mobileMenuOpen .iconAnime span:last-child{
    top: 7px;
    transform: rotate(135deg);
}
.menu-item-has-children .thereCaret.active img{
    transform: rotate(90deg);
}
.menu-item-has-children .thereCaret{
    padding: 0px 10px;
    position: absolute;
    top: 10px;
    right: 20px;
    cursor: pointer;
    display: block;
    z-index: 2;
}
.thereCaret img{
    height: 25px;
    transition: 0.3s;
    display: block;
}
/*end mobile menu*/
/*End Header Styles*/

/*Responsivness*//*Responsivness*//*Responsivness*/
@media(min-width:1441px){
    .container{
        padding: 0 calc((100vw - 1400px)/2);
        max-width: 100%;
    }
}
@media(min-width:1025px){
    .menu-item-has-children ul li a:hover{
        background: #7383BF!important;
        color: #fff!important;
    }
}

@media(max-width:1024px){  
    header nav {
        padding: 0;
        margin-top: 0;
        background: #7383BF;        
        overflow: auto;
    }
    header nav li{
        display: block!important;
        text-align: left;
    }
    header nav li a {
        padding: 10px 15px;
        margin-top: 0;
        color: #fff!important;
        background: none!important;
        display: block;
    }
    header nav li a:after {
        display: none;
    }
    .mobileMenu{
        display: block;
    }
    .fixing nav{
        display: none;
        position: absolute;
        top: 100%;
        left: 0;
        width: 100%;
    }  
    .menu-item-has-children ul li a{
        padding: 5px 15px;
    }
    .header-nav .menu-header-menu-container > ul > li{
        margin-right: 0!important;
    }
    .header-nav .menu-header-menu-container > ul > li > a{
        text-transform: uppercase;
        padding: 10px 15px!important;
    }
    .sub-menu{
        padding-left: 20px!important;
        text-transform: uppercase;
    }
    .sub-menu, 
    .sub-menu .sub-menu{
        position: static!important;
    }    
}

@media(max-width:600px){
    .fixing.activated{
        top:0!important;
    }
}
</style>

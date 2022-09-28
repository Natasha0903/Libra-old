<style>
    .banner_home{
        height: 100vh;
    }
    .banner_home button{
        position: absolute;
        bottom: 50px;
        right: 50px;
        background: transparent;
        border: 2px solid var(--background);
        padding: 10px;
        border-radius: 5px;
        display: flex;
        justify-content: center;
        align-items: center;
        cursor: pointer;
        box-shadow: 0 0 15px transparent;
        transition: .3s ease-in-out;
    }
    .banner_home button:hover{
        box-shadow: 0 0 15px var(--background);
    }
    .banner_home button svg{
        width: 10px;
        height: 10px;
        display: block;
    }
    .banner_home button svg path{
        fill: var(--background);
        transition: .3s ease-in-out;
    }
    .banner_home .text_wrap{
        padding: 200px 0 160px calc((100vw - 1400px)/2);
        align-self: center;
    }
    .banner_home h1{
        margin: 0;
    }
    .banner_home .content_wrap{
        display: grid;
        grid-template-columns: 1fr 1fr;
        height: 100%;
    }
    .banner_home .img_wrap{
        position: relative;
        background: var(--second_color);
    }
    .banner_home .img_wrap img{
        width: 100%;
        height: 100%;
        object-fit: cover;
        /*opacity: .5;*/
    }
    .banner_home .img_wrap #img_bg{
        position: absolute;
        left: -1px;
        top: 0;
        height: 100%;
        /*width: 100%;*/
        z-index: 5;
    }
    .banner_home .img_wrap .st0{fill-rule:evenodd;clip-rule:evenodd;fill:var(--background);}
    .banner_home .img_wrap .st1{fill-rule:evenodd;clip-rule:evenodd;fill:#FFFFFF;}
    .banner_home .img_wrap .st2{fill:var(--second_color);}
    .banner_home .btn_wrap{
        margin-top: 30px;
    }
    .banner_home .cta_button{
        color: var(--main_color);
        padding: 20px 45px;
        font-size: 18px;
    }
    .banner_home .cta_button:before{
        background: var(--second_color);
    }
    .banner_home .cta_button .line:before,
    .banner_home .cta_button .line:after{
        background: var(--second_color);
    }
    .banner_home .cta_button:hover{
        background: var(--main_color);
        box-shadow: 0 0 35px var(--main_color);
        color: var(--main_color);
    }
    .banner_home .form{
        position: absolute;
        background: var(--main_color);
        border-radius: 60px;
        padding: 40px 40px 0;
        z-index: 5;
        transform: translateY(-50%);
        top: 50%;
        right: 20px;
        box-shadow: 0 5px 15px rgba(51,69,83, .8);
        max-width: 425px;
    }
    .banner_home h3{
        margin: 0;
        color: var(--background);
        text-align: center;
    }
    .banner_home .form input:not([type=submit]){
        height: 50px;
        border-radius: 60px;
        border: 1px solid #ccc;
        width: 100%;
        padding: 0 20px;
        transition: .3s ease-in-out;
        outline: none;
    }
    .banner_home .form input:not([type=submit]):hover{
        border: 1px solid #838383;
    }
    .banner_home .form input:not([type=submit]):focus{
        border: 2px solid var(--background);
    }
    .banner_home .form input::placeholder{
        font: 500 16px/1.4 var(--font);
        color: #333;
        opacity: .5;
    }
    .banner_home .form input[type=submit]{
        padding: 15px 30px;
        background: transparent;
        font: 500 16px/1.4 var(--font);
        color: var(--main_color);
        width: 100%;
        text-align: center;
        cursor: pointer;
        position: relative;
        z-index: 5;
        transition: .3s ease-in-out;
    }
    .banner_home .form .cta_button.submit{
        padding: 0;
        display: block;
        background: var(--second_color);
        border-radius: 60px;
        position: relative;
        transition: .3s ease-in-out;
        overflow: hidden;
        margin: 15px auto -23px;
        box-shadow: 0 0 10px rgba(51,69,83, .8), inset 0 0 0 2px var(--main_color);
        max-width: 80%;
    }
    .banner_home .form .wpcf7-spinner{
        position: absolute;
        right: 0;
        bottom: 0;
    }
    .banner_home .cta_button.submit:hover {
        box-shadow: 0 0 10px rgba(51,69,83, .0),inset 0 0 0 2px var(--second_color);
    }
    .banner_home .cta_button.submit:hover input[type=submit]{
        color: var(--second_color);
    }
    .banner_home .cta_button.submit:hover:before{
        background: var(--main_color);
    }
    .banner_home .cta_button.submit:hover .line:before,
    .banner_home .cta_button.submit:hover .line:after{
        background: var(--main_color);
    }
    .banner_home .wpcf7 form .wpcf7-response-output{
        border: none;
        padding: 0;
        color: var(--background);
        font-size: 14px;
    }
    .banner_home .wpcf7 form.sent .wpcf7-response-output{
        color: green;
    }
    .banner_home  .wpcf7-not-valid-tip{
        font-size: 14px;
    }
    /*Responsivness*/
    @media (min-width: 1441px) {
        .banner_home .form{
            right: calc((100vw - 1400px)/2);
        }
    }
</style>
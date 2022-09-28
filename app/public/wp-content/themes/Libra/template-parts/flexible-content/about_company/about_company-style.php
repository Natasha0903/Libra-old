<style>
    .about_company{
        margin: 50px 0;
    }
    .about_company h2{
        margin: 0;
        position: relative;
        display: inline-block;
    }
    .about_company h2:before{
        content: '';
        position: absolute;
        top: 100%;
        left: 0;
        width: 40%;
        height: 5px;
        background: var(--second_color);
        border-radius: 8px;
    }
    .about_company .content_wrap{
        display: grid;
        grid-template-columns: 1fr 1fr;
        grid-gap: 110px;
        align-items: center;
    }
    .about_company .text_wrap{
        margin: 50px 0;
    }
    .about_company .cta_button{
        color: var(--main_color);
        padding: 20px 45px;
        font-size: 18px;
    }
    .about_company .cta_button:before{
        background: var(--second_color);
    }
    .about_company .cta_button .line:before,
    .about_company .cta_button .line:after{
        background: var(--second_color);
    }
    .about_company .cta_button:hover{
        background: var(--main_color);
        box-shadow: 0 0 35px var(--main_color);
        color: var(--main_color);
    }
    .about_company .image_wrap{
        border-radius: 20px;
        overflow: hidden;
        box-shadow: 0 5px 15px rgba(0,0,0, .8);
        border: 3px solid var(--second_color);
    }

</style>
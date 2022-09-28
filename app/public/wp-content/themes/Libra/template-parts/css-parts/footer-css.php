<style>
/*templates-parts/css-parts/footer-css.php*/
footer{
    position: relative;
    padding: 140px 0 30px;
}
footer .st0{fill:var(--background);}
footer .st1{fill:#FFFFFF;}
footer .st2{fill:var(--second_color);}
footer #footer_bg{
    position: absolute;
    bottom: 100%;
    left: 0;
    width: 100%;
}
footer .logo svg .st0{
    fill: #fff;
}
footer .container{
    display: flex;
    justify-content: space-between;
    align-items: center;
}
footer nav ul{
    display: flex;
    align-items: center;
}
footer nav ul li{
    position: relative;
    padding: 0 15px;
}
footer nav li:before {
    content: '';
    position: absolute;
    left: 0;
    top: -7.5px;
    width: 0;
    height: calc(100% + 15px);
    background: transparent;
    transition: .3s ease-in-out;
}
footer nav ul li a{
    color: #ffffff;
    white-space: nowrap;
    display: block;
    font-weight: 700;
    font-size: 20px;
    position: relative;
    transition: .3s ease-in-out;
}
footer nav li:hover:before {
    width: 100%;
    background: var(--second_color);
}
/*Footer Customization*/
</style>










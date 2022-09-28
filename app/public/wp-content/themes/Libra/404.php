<?php get_header(); ?>
<style>
.content .container{
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center; 
}
.content .container article{
    padding: 100px 0;
    max-width: 700px;
    margin: 0 auto;
    text-align: center;
}
.content .container article h1{
    font-size: 190px;
    line-height: 1;
    margin: 0 0 30px;
}
.content .container article a{
    color: var(--active-color);
    font-weight: 700;
}
.content .container article a:hover{
    color: var(--hover-color);
}
</style>
    <div class="content">
        <div class="container">
            <article>
                <p>Nothing Found</p>
                <h1>404</h1>
                <p>You can back to home page <a href="/">HERE</a></p>            
            </article>            
        </div><!--End container-->     
    </div><!--End Content-->
<?php get_footer(); ?>
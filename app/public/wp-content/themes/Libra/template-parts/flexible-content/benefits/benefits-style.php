<style>
    .benefits{
        margin: 50px 0;
    }
    .benefits h2{
        margin: 0;
        position: relative;
        display: inline-block;
    }
    .benefits h2:before{
        content: '';
        position: absolute;
        top: 100%;
        left: 0;
        width: 40%;
        height: 5px;
        background: var(--second_color);
        border-radius: 8px;
    }
    .benefits .blocks_wrap{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }
    .benefits .blocks_wrap .item{
        padding: 50px 2vw;
    }
    .benefits .blocks_wrap .item:first-child{
        padding-left: 0;
    }
    .benefits .blocks_wrap .item:last-child{
        padding-left: 0;
    }
    .benefits .blocks_wrap .icon_wrap{
        width: 50px;
        height: 50px;
    }
    .benefits .icon_wrap img{
        width: 100%;
        height: 100%;
        object-fit: contain;
    }
    .benefits .blocks_wrap h3{
        font-size: 20px;
        margin: 15px 0 0;
    }
</style>
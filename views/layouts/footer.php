<footer id="footer">
    <!--Footer-->
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="pull-left">Copyright © 2020</p>
                <p class="pull-right">PHP</p>
            </div>
        </div>
    </div>
</footer>
<!--/Footer-->

<!-- materialize -->
<script src="/template/materialize/js/materialize.js"></script>
<script src="/template/materialize/js/materialize.min.js"></script>
<!-- materialize -->

<script src="/template/js/jquery.js"></script>
<script src="/template/js/bootstrap.min.js"></script>
<script src="/template/js/jquery.scrollUp.min.js"></script>
<script src="/template/js/price-range.js"></script>
<script src="/template/js/jquery.prettyPhoto.js"></script>
<script src="/template/js/main.js"></script>
<script>
    $(document).ready(function() {
        $(".add-to-cart").click(function() {
            var id = $(this).attr("data-id");
            $.post("/cart/addAjax/" + id, {}, function(data) {
                $("#cart-count").html(data);
            });
            console.log(id);
            return false;
        });
    });


    // $(document).ready(function() {
    //     $('.carousel').carousel();
    // });
</script>
</body>

</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rating.aspx.cs" Inherits="SE_Project.Rating" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Rate</title>  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
    <link href="../css/star-rating.css" rel="stylesheet" />  
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>  
    <script src="../js/star-rating.js"></script>  
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> 
</head>
<body>
    <form>
        <input id="input-21b" value="4" type="text" class="rating" data-theme="krajee-fas" data-min=0 data-max=5 data-step=0.2 data-size="lg"
               required title="">
        <div class="clearfix"></div>
        <hr>
        <input required id="input-21c" value="" type="text" title="">
        <div class="clearfix"></div>
        <hr>
        <input id="input-21d" value="2" type="text" class="rating" data-theme="krajee-fas" data-min=0 data-max=5 data-step=0.5 data-size="sm"
               title="">
        <hr>
        <input id="input-21e" value="0" type="text" class="rating" data-theme="krajee-fas" data-min=0 data-max=5 data-step=0.5 data-size="xs"
               title="">
        <hr>
        <input id="input-21f" value="0" type="text"  data-theme="krajee-fas" data-min=0 data-max=5 data-step=0.1 data-size="md" title="">
        <hr>
        <input id="input-2ba" type="text" class="rating" data-theme="krajee-fas" data-min="0" data-max="5" data-step="0.5" data-stars=5
               data-symbol="&#xe005;" data-default-caption="{rating} hearts" data-star-captions="{}" title="">
        <hr>
        <input id="input-22" value="0" type="text" class="rating" data-theme="krajee-fas" data-min=0 data-max=5 data-step=0.5 data-rtl=1
               data-container-class='text-right' data-glyphicon=0 title="">
        <div class="clearfix"></div>
        <hr>
        <input required class="rb-rating" type="text" value="" title="">
        <hr>
        <input id="rating-input" type="text" title=""/>
        <button id="btn-rating-input" type="button" class="btn btn-primary">Toggle Disable</button>
        <hr>
        <input id="kartik" class="rating" data-stars="5" data-step="0.1" title=""/>
        <div class="form-group" style="margin-top:10px">
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-default btn-secondary">Reset</button>
            <button type="button" class="btn btn-danger">Destroy</button>
            <button type="button" class="btn btn-success">Create</button>
        </div>
    </form>
    <hr>
    <script>
        jQuery(document).ready(function () {
            $("#input-21f").rating({
                starCaptions: function (val) {
                    if (val < 3) {
                        return val;
                    } else {
                        return 'high';
                    }
                },
                starCaptionClasses: function (val) {
                    if (val < 3) {
                        return 'label label-danger';
                    } else {
                        return 'label label-success';
                    }
                },
                hoverOnClear: false
            });
            var $inp = $('#rating-input');

            $inp.rating({
                min: 0,
                max: 5,
                step: 1,
                size: 'lg',
                showClear: false
            });

            $('#btn-rating-input').on('click', function () {
                $inp.rating('refresh', {
                    showClear: true,
                    disabled: !$inp.attr('disabled')
                });
            });


            $('.btn-danger').on('click', function () {
                $("#kartik").rating('destroy');
            });

            $('.btn-success').on('click', function () {
                $("#kartik").rating('create');
            });

            $inp.on('rating.change', function () {
                alert($('#rating-input').val());
            });


            $('.rb-rating').rating({
                'showCaption': true,
                'stars': '3',
                'min': '0',
                'max': '3',
                'step': '1',
                'size': 'xs',
                'starCaptions': { 0: 'status:nix', 1: 'status:wackelt', 2: 'status:geht', 3: 'status:laeuft' }
            });
            $("#input-21c").rating({
                min: 0, max: 8, step: 0.5, size: "xl", stars: "8"
            });
        });
    </script>
</body>
</html>

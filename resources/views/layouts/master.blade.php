<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'BizSolution') }}</title>

    <link rel="stylesheet" href="{{asset('bizsolution/style.css')}}" >
    <link rel="stylesheet" href="{{asset('css/jon_style.css')}}">
    <script src="{{asset('bizsolution/js/jquery-1.3.2.min.js')}}"></script>
    <script src="{{asset('bizsolution/js/script.js')}}"></script>
    <!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
    <script src="{{asset('bizsolution/js/cufon-yui.js')}}"></script>
    <script src="{{asset('bizsolution/js/arial.js')}}"></script>
    <script src="{{asset('bizsolution/js/cuf_run.js')}}"></script>
    <!-- CuFon ends -->
    <script src="{{asset('js/jon_scripts.js')}}"></script>

</head>
<body>
<div class="main">

        @yield('header')


        @yield('content')

    @yield('footer')
</div>

</body>
</html>
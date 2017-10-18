<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="{{ route('admin.index') }}"><img src="{{asset('bizsolution/images/logo1.gif')}}"  width="106" height="30" alt="Brand"></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <ul class="nav navbar-nav navbar-right">

                <li><a href="{{ route('articles.index') }}">
                        <i class="fa fa-comment" aria-hidden="true"></i> Blog </a></li>
                <li><a href="{{ route('support.index') }}">
                    <i class="fa fa-bell" aria-hidden="true"></i> Support </a></li>
                <li><a href="{{ route('abouts.index') }}">
                    <i class="fa fa-question-circle" aria-hidden="true"></i> About Us </a></li>

                {{--<li><a href="{{ route('admin.index') }}">
                    <i class="fa fa-comment" aria-hidden="true"></i> Blog--}}
                        {{-- === <span class="badge">{{ Session::has('cart') ? Session::get('cart')->totalQty : '' }}</span> === --}}
                    {{--</a>
                </li>--}}

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"
                       role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user" aria-hidden="true"></i> User options <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        @if(Auth::check())
                            <li><a href="{{ route('users.index') }}">
                                    <i class="fa fa-users" aria-hidden="true"></i>&nbsp;
                                    Users
                                </a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="{{ route('index.home') }}">
                                    <i class="fa fa-home" aria-hidden="true"></i>&nbsp;
                                    Home
                                </a></li>
                            <li role="separator" class="divider"></li>
                            {{--<li><a href="{{route('logout')}}"><i class="fa fa-sign-out"></i> Logout</a></li>--}}

                            <li><a href="{{ route('logout') }}"
                            onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();"> <i class="fa fa-sign-out"></i>&nbsp;
                            Logout
                            </a></li>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                {{ csrf_field() }}
                            </form>
                        @else
                            <li><a href="{{route('login')}}"> <i class="fa fa-sign-in"></i> Login </a></li>
                        @endif

                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
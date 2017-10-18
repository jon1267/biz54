@if (count($errors) > 0)
    <div class="row alert alert-danger " role="alert">
        @foreach ($errors->all() as $error)
            <p>{{ $error }}</p>
        @endforeach
    </div>
@endif
@if (session('status'))
    <div class="alert alert-success tac" role="alert">
        {{ session('status') }}
    </div>
@endif
@if (session('error'))
    <div class="row alert alert-danger " role="alert">
        {{ session('error') }}
    </div>
@endif
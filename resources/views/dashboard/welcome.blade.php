<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Welcome</title>
</head>
<body>
    <h1>Welcome</h1>
    {{-- Logout --}}
    <div class="class one">
        <form action="{{ route('accountlogin.logout') }}" method="POST" style="display:inline;">

        @csrf
            <button type="submit" class="btn">Logout</button>
        </form>
    </div>
</body>
</html>

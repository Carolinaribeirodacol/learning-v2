<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laravel ACL</title>
</head>
<body>
    <h2>Laravel ACL</h2>

    @can('create_user')
        <a href="">Create user</a>
    @endcan

    @can('create_post')
        <a href="">Create post</a>
    @endcan

    <ul>
        @foreach($users as $user)
            <li>{{  $user->name }}</li>
        @endforeach
    </ul>
</body>
</html>
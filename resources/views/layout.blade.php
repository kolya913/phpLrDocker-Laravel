<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <title>@yield('title')</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
 <style>
   .flex-column {
     display: flex;
     flex-direction: column;
   }
 </style>
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-light bg-light flex-column">
   <div class="container-fluid">
    <a class="nav-link" href="/">Главная</a>
     <button class="navbar-brand btn">Меню</button>
     <div class="collapse navbar-collapse" id="navbarNav">
       <ul class="navbar-nav ml-auto">
         <li class="nav-item">
           <a class="nav-link" href="/cart">Корзина</a>
         </li>
         <li class="nav-item">
           <a class="nav-link" href="#">Профиль</a>
         </li>
         <li class="nav-item">
          <a class="nav-link" href="/products/create">Создать продукт</a>
        </li>
       </ul>
     </div>
   </div>
 </nav>

 <div class="container page flex-column">
   @yield('content')
 </div>
 @yield('scripts')
</body>
</html>

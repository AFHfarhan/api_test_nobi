
<h1>API BE TEST NOBU</h1>

<br/>
<h3>How To Config API</h3>
<ul>
    <li>1. run composer install or run composer update (if you have a existing vendor folder)</li>
    <li>2. run composer dump-autoload (if error)</li>
    <li>3. create file .env & copy from .env.example</li>
    <li>4. run php artisan migrate (If you don't have a database)</li>
    <li>5. run php artisan migrate:fresh (If have a error)</li>
    <li>6. import table .sql from file api_test.sql and transaction.sql</li>
    <li>7. run php artisan serve </li>
</ul>
<br/>
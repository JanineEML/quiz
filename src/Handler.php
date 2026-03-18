<?php

namespace App;

class Handler {
    /* 
    * Will store as such (example):
    * 'GET' => [
    *   '/' => [
    *       'controller' => 'App\HomeController',
    *       'method' => 'home'
    *   ]
    * ]
    */
    private array $routes = [];

    /**
     * For a non-static implementation Handler must not know all the routes.
     * Both $httpMethod and $path will be provided trough index.php, when using $Handler->dispatch()
     * 
     * $httpMethod: string, e.g. 'GET' or 'POST'
     * $path: string, e.g. '/' or '/login'
     * 
     */
    public function add(string $httpMethod, string $path, string $ctrl, string $ctrlMethod): void {
        $this->routes[$httpMethod][$path] = [
            'controller' => $ctrl,
            'method' => $ctrlMethod
        ];
    }

    /**
     * 
     */
    public function run(string $httpMethod, string $uri): void {
        // PHP_URL_PATH is a constant which can be set to control how the url will be parsed
        // in this case: only return the path (remove protocol and domain)
        $path = parse_url($uri, PHP_URL_PATH);

        // if the route is NOT set, return and provide a status code
        // this probably will be better implemented with an Response-Object
        if (!isset($this->routes[$httpMethod])) {
            http_response_code(404);
            echo '404 Wrong Method';
            return;
        }

        if (!isset($this->routes[$httpMethod][$path])) {
            echo '<pre>';
            var_dump($this->routes);
            echo '</pre>';
            http_response_code(404);
            echo '404 Unknown Path';
            return;
        }

        // unzip the values in [$method][$path], which contains two elements in 'ctrl' and 'ctrlMethod',
        // and assign them to the variables $ctrl and $ctrlMethod
        $controller = $this->routes[$httpMethod][$path]['controller'];
        $method = $this->routes[$httpMethod][$path]['method'];

        // create new controller and call it's method
        (new $controller())->$method();
    }
}
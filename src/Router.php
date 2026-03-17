<?php

namespace App;

class Router {
    /* 
    * 
    */
    private array $route = [];

    /**
     * For a non-static implementation Router must not know all the routes.
     * Both $httpMethod and $path will be provided trough index.php, when using $router->dispatch()
     * 
     * $httpMethod: string, e.g. 'GET' or 'POST'
     * $path: string, e.g. '/' or '/login'
     * 
     */
    public function add(string $httpMethod, string $path, string $ctrl, string $ctrlMethod): void {
        $this->route = [
            'http_method' => $httpMethod,
            'path' => $path,
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
        var_dump($this->route);

        // if the route is NOT set, return and provide a status code
        // this probably will be better implemented with an Response-Object
        if (!isset($this->route[$httpMethod])) {
            //http_response_code(404);
            echo '404 Wrong HTTP Method';
            return;
        }

        if (!isset($this->route[$path])) {
            //http_response_code(404);
            echo '404 Unknown Path';
            return;
        }

        $controller = $this->route['controller'];
        $method = $this->route['method'];

        // create new controller and call it's method
        (new $controller())->$method();
    }
}
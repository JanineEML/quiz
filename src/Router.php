<?php

namespace App;

class Router {
    public function __construct(private array $routes) {}

    public function dispatch(string $method, string $uri): void {
        $path = parse_url($uri, PHP_URL_PATH);

        if (!isset($this->routes[$method][$path])) {
            http_response_code(404);
            echo '404 Not Found lmao git gut';
            return;
        }

        [$controller, $action] = $this->routes[$method][$path];
        (new $controller())->$action();
    }
}
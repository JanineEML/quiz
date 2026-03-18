<?php

namespace App;

class Router
{
    private array $routes = [];

    // register Routes, every $router->add() in routes.php adds to $routes
    public function add(string $method, string $path, string $controller, string $action): void
    {
        $this->routes[] = [
            'method'     => $method,
            'path'       => $path,
            'controller' => $controller,
            'action'     => $action,
        ];
    }

    public function run(string $method, string $uri): void
    {
        // save query parameters, if any are given
        // parse_url will omit everything before and including ?
        $queryString = parse_url($uri, PHP_URL_QUERY);

        // use parse_str to parse query string to array
        parse_str($queryString, $queryArray);

        // strip query string (?foo=bar)
        $uri = strtok($uri, '?');

        foreach ($this->routes as $route) {
            if ($route['method'] === $method && $route['path'] === $uri) {
                $controller = new $route['controller']();
                $controller->{$route['action']}();
                return;
            }
        }

        $this->notFound();
    }

    private function notFound(): void
    {
        http_response_code(404);
        echo '404 - Page not found';
    }
}
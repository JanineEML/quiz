<?php

namespace App;

class Router
{
    private array $routes = [];

    // register Routes, every $router->add() in routes.php adds to $routes
    public function add(string $httpMethod, string $uri, string $ctrl, string $ctrlMethod): void
    {
        $this->routes[$httpMethod][$uri] = [
            'ctrl'       => $ctrl,
            'ctrlMethod' => $ctrlMethod
        ];
    }

    public function run(string $httpMethod, string $uri): void
    {
        // save query parameters, if any are given
        // parse_url will omit everything before and including ?
        $queryString = parse_url($uri, PHP_URL_QUERY);

        // use parse_str to parse query string to array - hat to add a null coalescing,
        // since passing null to parse_str is deprecated! $query String will be null,
        // if the URI passed to parse_url does not contain query parameters!
        parse_str($queryString ?? '', $queryArray);

        // strip query string (?foo=bar)
        $uri = parse_url($uri, PHP_URL_PATH);

        // check if route is known
        if (!isset($this->routes[$httpMethod][$uri])) {
            http_response_code(404);
            echo '404 - Page not found';
            return;
        }

        $ctrl = $this->routes[$httpMethod][$uri]['ctrl'];
        $ctrlMethod = $this->routes[$httpMethod][$uri]['ctrlMethod'];

        (new $ctrl())->$ctrlMethod();
    }
}
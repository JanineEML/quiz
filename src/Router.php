<?php
namespace App;

class Router
{
    private array $routes = [];

    /**
     * Registers a route for a given HTTP method and URI.
     *
     * @param string $httpMethod GET, POST, etc.
     * @param string $uri The route path (e.g. '/login').
     * @param string $ctrl Fully qualified controller class name.
     * @param string $ctrlMethod Method to call on the controller.
     */
    public function add(string $httpMethod, string $uri, string $ctrl, string $ctrlMethod): void
    {
        $this->routes[$httpMethod][$uri] = [
            'ctrl'       => $ctrl,
            'ctrlMethod' => $ctrlMethod
        ];
    }

    /**
     * Matches the current request against registered routes and dispatches the controller.
     * Returns a 404 response if no route matches.
     *
     * @param string $httpMethod The request method (e.g. $_SERVER['REQUEST_METHOD']).
     * @param string $uri The request URI (e.g. $_SERVER['REQUEST_URI']).
     */
    public function run(string $httpMethod, string $uri): void
    {
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
### Learnings:
https://dev.to/joseph_lozano/setting-up-a-new-phoenix-1-5-project-with-phoenix-liveview-309n
- `mix phx.gen.live` is the LiveView equivalent of `mix phx.gen.html` and creates:
  - live routes
  - schema
  - context
  - migration
  - code snippet:
    ```
      * creating lib/live_view_coolness_web/live/todo_live/show.ex
      * creating lib/live_view_coolness_web/live/todo_live/index.ex
      * creating lib/live_view_coolness_web/live/todo_live/form_component.ex
      * creating lib/live_view_coolness_web/live/todo_live/form_component.html.leex
      * creating lib/live_view_coolness_web/live/todo_live/index.html.leex
      * creating lib/live_view_coolness_web/live/todo_live/show.html.leex
      * creating test/live_view_coolness_web/live/todo_live_test.exs
      * creating lib/live_view_coolness_web/live/modal_component.ex
      * creating lib/live_view_coolness_web/live/live_helpers.ex
      * creating lib/live_view_coolness/todos/todo.ex
      * creating priv/repo/migrations/20200527225022_create_todos.exs
      * creating lib/live_view_coolness/todos.ex
      * injecting lib/live_view_coolness/todos.ex
      * creating test/live_view_coolness/todos_test.exs
      * injecting test/live_view_coolness/todos_test.exs
      * injecting lib/live_view_coolness_web.ex
    ```
- The module name defines a single "LiveView"
  - A live view can maybe be considered synonymous with a "page" in some sense? Maybe more of an element, where a page can be a type of element

### Debugging:
- Needed to be on LV 0.13.0+
- Had to pin cowboy to 2.7.0


### Tutorial Creation:
'Did you ever hear the Tragedy of Darth LiveView the wise? I thought not. It's not a story Javascript would tell you. It's a Sith legend. Darth LiveView was a Dark Lord of the Phoenix, so powerful and so wise he could use Sockets to influence rendered html to create life... He had such a knowledge of the dark side that he could even keep the ones he cared about from using javascript. The dark side of the Force is a pathway to many abilities some consider to be unnatural. He became so powerful... the only thing he was afraid of was losing his power, which eventually, of course, he did. Unfortunately, he taught his apprentice everything he knew, then his apprentice killed him in his sleep. It's ironic he could save others from death, but not himself.'
- Also HP order of the phoenix lol
- Implement from scratch? Without using the `gen.html.live` piece?
  - I thinks this will help me and others clarify the steps
  - I also think this will avoid he mysticism of the scaffold

Cheater's way:
1. run `mix phx.gen.live`
  - Fix dependencies
2. Set up routes
  - NOTE: `live/4` takes the `@live_action` as its third arg
  - NOTE: This allows routes to be generated with the macro `live_route(@socket, LiveViewName)`

Docs:
https://hexdocs.pm/phoenix_live_view/Phoenix.LiveView.Router.html

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

### Debugging:
- Needed to be on LV 0.13.0+
- Had to pin cowboy to 2.7.0



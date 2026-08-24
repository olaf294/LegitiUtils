# LegitiUtils Function Tags
## Explanation
This datapack utilizes function tags to let you decide what custom code you want to run along with the default behavior of the datapack.
To utilize a function tag, go into one of the files and add your function to the *(by default empty)* list.
This will run your custom code when these events are triggered. You can compare it with events in other languages.

## Example Usage
Example: Adding code that runs on every join, even the first one:
Locate the function tag `#lu:on_every_join`.
In the file, add your function (example: `code:example`) to the list, like this:
```json
{
    "values": [
        "code:example"
    ]
}
```
Then, run the `/reload` command in-game.

## List of tags
- `#lu:on_first_join`: Runs ONLY on the VERY FIRST join of the player.
- `#lu:on_non_first_join`: Runs on every join, EXCLUDING the first join.
- `#lu:on_every_join`: Runs on EVERY join.
- `#lu:on_leave`: Runs when a player leaves. The "name" and "id" of that player are found in storage `lu:online` under path `left`
    Example: Get name of player who left
    ```mcfunction
    tellraw @a [{storage:"lu:online",nbt:"left.name"}," just left. Their ID is ",{storage:"lu:online",nbt:"left.id"},"."]
    ```
    Note: This function can fail to run if the player somehow doesn't have an ID.
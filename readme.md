# LegitiUtils
The essential datapack that makes your experience in development better by removing the need for core code that will be useful along the way. Also aims to improve certain Legitimoose quirks along the way later in development.

## Utility Functions
__`lu:util/get_name`__
Saves the name of the executing player to storage `lu:util` under path `playername`. Uses a loot table.

__`lu:util/get_name_imod`__
Saves the name of the executing player to storage `lu:util` under path `playername`. Uses an item modifier.

__`lu:util/uid/get`__
Saves the String form of the executing players UUID to storage `lu:uid` under path `UUID`. 

## HTTP Queue
LegitiUtils can manage all your HTTP requests to avoid you getting a timeout ever again.

<u>**To schedule a function**</u>:
Run `function lu:http/append_queue {function:"<function_name>",args:<args>}` (replace `<function_name>` with your function name and `<args>` with a component OR arguments in the `with <block/entity/storage>` form).
This function will be expanded on in the future.

## Other Information
The function tags `#lu:on_first_join`, `#lu:on_non_first_join` and `#lu:on_every_join` are ran as the joining player, but NOT at them. 
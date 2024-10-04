import "list"

list1: ["foo", "bar"]
toBeAppended: "baz"

combinedList: list.Concat([list1, [toBeAppended]])

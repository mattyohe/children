# children
There is a bug in the adding of child view controllers. didMoveToParentViewController gets called on a child twice if the child is added after the parent is already visible.

From the code in this project, this is the console output:

```
calling addChild
willMoveToParent
calling addSubview
viewWillAppear
calling didMove
didMoveToParent: Optional(<Children.ViewController: 0x7af4a260>)
viewDidAppear
didMoveToParent: Optional(<Children.ViewController: 0x7af4a260>)
```

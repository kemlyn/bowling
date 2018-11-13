# Bowling Challenge

```
                                        (O)           (O)
                                        ||     (O)    ||
   .----.                               ||     ||     ||
  /   O O\                             /  \    ||    /  \
  '    O  '                           :    :  /  \  :    :
  \      /                            |    | :    : |    |
 __`----'______________________________\__/__|    |__\__/____
                                              \__/
```
## Getting started

* Make sure you have ruby version 2.5.0.
* In your terminal run `ruby bowling.rb`

---

## Bowling Rules

### Strikes

The player has a strike if he knocks down all 10 pins with the first roll in a frame. The frame ends immediately (since there are no pins left for a second roll). The bonus for that frame is the number of pins knocked down by the next two rolls. That would be the next frame, unless the player rolls another strike.

### Spares

The player has a spare if the knocks down all 10 pins with the two rolls of a frame. The bonus for that frame is the number of pins knocked down by the next roll (first roll of next frame).

### Gutter Game

A Gutter Game is when the player never hits a pin (20 zero scores).

### 10th frame

If the player rolls a strike or spare in the 10th frame they can roll the additional balls for the bonus. But they can never roll more than 3 balls in the 10th frame. The additional rolls only count for the bonus not for the regular frame count.

### Perfect Game

A Perfect Game is when the player rolls 12 strikes (10 regular strikes and 2 strikes for the bonus in the 10th frame). The Perfect Game scores 300 points.

/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

VAR bullets = 2
VAR out = 0

-> lamp

== lamp ==
You have woken up from being asleep. You remember nothing about how you got here. A bit of sunlight slips through the curtains. A shadow stands near the bed, still and watching. It looks like a reflection with no source. A lamp rests on the bedside table.

+ [Turn on the lamp] -> dark



== dark ==
You turn pull the light cord but nothing happen. But the weak sunbeam still gazes onto you. You notice a dresser beneath the lamp with several drawers. When you look up you notice the shadow leaning against the wall, rocking back and forth.

+ [Open the drawers] -> drawers

== drawers ==
You pull open a drawer. Inside lies a gun loaded with four bullets.

You lift the gun and aim at the shadow.

+ [Shoot the shadow] -> bed

== bed ==
You are still in bed. You now have {bullets} bullets. No one is there. The shadow moved, and you missed it.

+ [Get up and follow the shadow] -> living_room

+ [Fall asleep again] -> fall_asleep

== living_room ==
You step into the living room. A woman sleeps on the couch. The shadow hangs above her, stretched across the ceiling. You aim the gun this time making sure you hit and turn off the safety.

+ [Shoot the shadow] -> hit_shot 

+ [Lower the gun] -> fall_asleep

== fall_asleep ==
All of a sudden you somewhat pass out. When you wake again, your memories return all at once. You begin to realize it was all a dream, but it still felt pretty real.

-> END

==hit_shot==
You see the shot hit the shadow but as soon as he falls for some reason you do as well. You past out and wake up but hear the voice of a lady coming. You notice the same drawer sit next to you.
+ [Check Drawer] -> drawer2

+ [Wait] -> wait

==wait== 
The voice begins to get closer and closer. The door opens you see the lady from before but now you remember her as your mother.
+[Hug her] -> ending

==drawer2== 
You see your gun but you now have {out} bullets. And the footsteps are getting closer but once the door opens you see the lady from before but now you remember her as your mother.
+[Hug her] -> ending

==ending==
You give your mother a hug as you promise to yourself you will never let anything happen to you or your family.
-> END

